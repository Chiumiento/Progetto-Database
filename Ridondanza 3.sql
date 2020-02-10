-- Trigger che aggiorna la ridondanza NumPartecipanti presente in Cerchia;

DROP TRIGGER IF EXISTS aggiorna_partecipanti;

DELIMITER $$

CREATE TRIGGER aggiorna_partecipanti
BEFORE INSERT ON Aderisce
FOR EACH ROW 
BEGIN 
 SET @attuali = (SELECT COUNT(*)
				 FROM Aderisce
				 WHERE Cerchia = NEW.Cerchia) + 2;
 IF (@attuali > (SELECT MaxPartecipanti 
				 FROM Cerchia
                 WHERE IdCerchia = NEW.Cerchia)) THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Limite superato!'; 
 ELSE
	UPDATE Cerchia 
    SET NumPartecipanti = @attuali
    WHERE IdCerchia = NEW.Cerchia;
 END IF;
END $$

DELIMITER ; 
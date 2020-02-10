-- OPERAZIONE 3;

DROP PROCEDURE IF EXISTS operazione_3;

DELIMITER $$
CREATE PROCEDURE operazione_3 (IN cerchia VARCHAR(16),
							   OUT utenti_mancanti INT)
BEGIN 
 SELECT (MaxPartecipanti - NumPartecipanti) INTO utenti_mancanti
 FROM Cerchia
 WHERE IdCerchia = cerchia;
END $$
DELIMITER ;


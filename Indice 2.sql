-- Event e Trigger che controllano lo stato di usura delle apparecchiature e ne curano la manutenzione;

DROP EVENT IF EXISTS usura_apparecchiatura;
DROP TRIGGER IF EXISTS controllo_manutenzione;
DROP EVENT IF EXISTS fine_manutenzione;

DELIMITER $$

CREATE EVENT usura_apparecchiatura
ON SCHEDULE EVERY 4 WEEK 
DO
BEGIN
 
 UPDATE Apparecchiatura 
 SET Manutenzione = Manutenzione + 5;
 
END $$ 

CREATE TRIGGER controllo_manutenzione
BEFORE UPDATE ON Apparecchiatura
FOR EACH ROW
BEGIN
 SET @contatore = (SELECT COUNT(*)
				   FROM Apparecchiatura
                   WHERE NEW.Manutenzione = 100);
 
 IF (@contatore <> 0) THEN
	SET NEW.Manutenzione = 'SI';
 END IF;

END $$

CREATE EVENT fine_manutenzione
ON SCHEDULE EVERY 1 WEEK 
DO 
BEGIN 
 UPDATE Apparecchiatura 
 SET Manutenzione = 'NO' AND PercentualeUsura = 0
 WHERE Manutenzione = 'SI';
END $$

DELIMITER ; 

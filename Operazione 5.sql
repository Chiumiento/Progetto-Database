-- OPERAZIONE 5;

DROP PROCEDURE IF EXISTS operazione_5;

DELIMITER $$
CREATE PROCEDURE operazione_5(IN codfiscale VARCHAR(16),
							  IN codaccesso VARCHAR(6),
                              IN data DATE,
                              IN ingresso TIME,
                              IN uscita TIME,
                              IN smartwatch VARCHAR(5),
                              IN centro INT,
                              IN armadietto VARCHAR(6))
BEGIN 
 DECLARE EXIT HANDLER FOR 1062
 SELECT 'Duplicate entry for key PRIMARY';
 
 INSERT INTO Accesso
 VALUES (codaccesso,data,ingresso,uscita,NULL,smartwatch,NULL,centro,armadietto,codfiscale);
END $$
DELIMITER ;



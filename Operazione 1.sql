-- OPERAZIONE 1;

DROP PROCEDURE IF EXISTS operazione_1;

DELIMITER $$
CREATE PROCEDURE operazione_1 (IN id_centro INT,
							   IN data DATE,
                               OUT durata_media INT)
BEGIN 
 SELECT AVG(Durata) INTO durata_media
 FROM Accesso
 WHERE CentroFitness = id_centro 
	   AND Data = data;
END $$ 
DELIMITER ;


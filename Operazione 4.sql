-- OPERAZIONE 4;

DROP PROCEDURE IF EXISTS operazione_4;

DELIMITER $$
CREATE PROCEDURE operazione_4 (IN sostanza VARCHAR(16),
							   OUT nome_integratore VARCHAR(20))
BEGIN 
 SELECT I.NomeCommerciale INTO nome_integratore
 FROM Integratore I INNER JOIN Acquista A ON I.IdIntegratore = A.Integratore
 WHERE I.NomeSostanza = sostanza
 GROUP BY A.Integratore
 HAVING SUM(A.Quantita) >= ALL (SELECT SUM(A1.Quantita)
							    FROM Integratore I1 INNER JOIN Acquista A1 ON I1.IdIntegratore = A1.Integratore
                                WHERE I1.NomeSostanza = sostanza
                                GROUP BY A1.Integratore);
END $$
DELIMITER ;


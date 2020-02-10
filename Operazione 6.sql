-- OPERAZIONE 6;

DROP PROCEDURE IF EXISTS operazione_6;

DELIMITER $$
CREATE PROCEDURE operazione_6(IN codfiscale VARCHAR(16),
							  IN idrata VARCHAR(6),
                              IN importo INT,
                              IN data DATE,
                              IN istituto VARCHAR(15),
                              IN tasso INT)
BEGIN 
 DECLARE EXIT HANDLER FOR 1062
 SELECT 'Duplicate entry for key PRIMARY';
 SET @pagamento = (SELECT DISTINCT P.IdPagamento
				   FROM Rata R INNER JOIN Pagamento P ON R.Pagamento = P.IdPagamento
						INNER JOIN Contratto C ON C.IdContratto = P.Contratto
				   WHERE C.Cliente = codfiscale);
 INSERT INTO Rata
 VALUES (idrata,istituto,importo,data,tasso,@pagamento);
END $$
DELIMITER ;


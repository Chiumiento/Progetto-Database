-- OPERAZIONE 2;

DROP PROCEDURE IF EXISTS operazione_2;

DELIMITER $$
CREATE PROCEDURE operazione_2 (IN codfiscale VARCHAR(16),
							   OUT importo_mancante INT)
BEGIN 
 SELECT (ImportoTotale - ImportoAttuale) INTO importo_mancante
 FROM Pagamento P INNER JOIN Contratto C ON P.Contratto = C.IdContratto
 WHERE codfiscale = C.Cliente;
END $$
DELIMITER ;


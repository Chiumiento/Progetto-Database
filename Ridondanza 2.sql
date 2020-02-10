-- Trigger che aggiorna la ridondanza ImportoAttuale presente nella tabella Pagamento;

DROP TRIGGER IF EXISTS aggiorna_importo;

DELIMITER $$
CREATE TRIGGER aggiorna_importo 
BEFORE INSERT ON Rata
FOR EACH ROW

BEGIN
 SET @attuale = (SELECT ImportoAttuale 
			 	 FROM Pagamento
				 WHERE IdPagamento = NEW.Pagamento);
 set @totale = (SELECT ImportoTotale
			    FROM Pagamento
			    WHERE IdPagamento = NEW.Pagamento);
 IF (@attuale + NEW.Importo <= @totale) THEN 
	UPDATE Pagamento
	SET ImportoAttuale = @attuale + NEW.Importo
	WHERE IdPagamento = NEW.Pagamento;
 ELSE
 	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Limite superato!';
 END IF; 
END $$  	

DELIMITER ;  

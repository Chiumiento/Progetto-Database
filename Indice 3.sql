-- Trigger che gestisce l'indice di sforzo psichico;

DROP TRIGGER IF EXISTS gestisci_sforzo;

DELIMITER $$ 

CREATE TRIGGER gestisci_sforzo
BEFORE INSERT ON Valutazione
FOR EACH ROW 
BEGIN
 IF (NEW.BattitoCardiaco <= 120) THEN
	SET NEW.SforzoPsichico = 'Basso';
 ELSE IF (NEW.BattitoCardiaco >= 121 AND NEW.BattitoCardiaco <= 199) THEN
	SET NEW.SforzoPsichico = 'Medio';
 ELSE  
	SET NEW.SforzoPsichico = 'Alto';
 END IF;
 END IF;
END $$ 

DELIMITER ; 
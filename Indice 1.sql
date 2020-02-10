-- Trigger che gestisce l'indice di massa corporea;

DROP TRIGGER IF EXISTS gestisci_massa;

DELIMITER $$ 

CREATE TRIGGER gestisci_massa
BEFORE INSERT ON SchedaAllenamento
FOR EACH ROW 
BEGIN
 SET @altezza = (NEW.Altezza / 100);
 SET @indice = (NEW.Peso / (@altezza * @altezza));
 
 IF (@indice < 18.50) THEN
	SET NEW.EntitaStato = 'Sottopeso';
 ELSE IF (@indice >= 18.50 AND @indice <= 24.99) THEN
	SET NEW.EntitaStato = 'Normopeso';
 ELSE  
	SET NEW.EntitaStato = 'Sovrappeso';
 END IF;
 END IF;
END $$ 

DELIMITER ; 
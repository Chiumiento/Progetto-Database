-- Trigger che aggiorna la ridondanza Durata presente nella tabella Accesso;

DROP TRIGGER IF EXISTS aggiorna_durata;

DELIMITER $$ 
CREATE TRIGGER aggiorna_durata
BEFORE INSERT ON Accesso
FOR EACH ROW

BEGIN 

    SET NEW.Durata = EXTRACT(HOUR FROM TIMEDIFF(NEW.OrarioUscita, NEW.OrarioIngresso)) * 60 
					 + EXTRACT(MINUTE FROM TIMEDIFF(NEW.OrarioUscita, NEW.OrarioIngresso));

	IF (NEW.Durata <= 60) THEN
		SET NEW.Tariffa = 5;
		ELSE IF (NEW. Durata > 60  AND NEW.Durata <= 120) THEN
			SET NEW.Tariffa = 10;
		ELSE 
			SET NEW.Tariffa = 12;
	END IF;
    END IF;
END $$ 

DELIMITER ; 
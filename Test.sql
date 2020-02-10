-- Test operazione 1;

CALL operazione_1('1','2018-02-12',@media); 
SELECT @media; -- 130;

CALL operazione_1('2','2018-03-22',@media);
SELECT @media; -- 120;

CALL operazione_1('3','2018-03-12',@media);
SELECT @media; -- 100;

-- Test operazione 2;

CALL operazione_2('LE8',@mancante);
SELECT @mancante; -- 100;

CALL operazione_2('CL14',@mancante);
SELECT @mancante; -- 150;

-- Test operazione 3;

CALL operazione_3('CER1',@mancanti);
SELECT @mancanti; -- 39;

CALL operazione_3('CER2',@mancanti);
SELECT @mancanti; -- 47;

CALL operazione_3('CER3',@mancanti);
SELECT @mancanti; -- 37;

CALL operazione_3('CER4',@mancanti);
SELECT @mancanti; -- 47;

CALL operazione_3('CER5',@mancanti);
SELECT @mancanti; -- 36;

-- Test operazione 4;

CALL operazione_4('Taurina',@max_integratore);
SELECT @max_integratore; -- S2.Taurina

CALL operazione_4('Leucina',@max_integratore);
SELECT @max_integratore; -- Bcaa

-- Test operazione 5;

CALL operazione_5('GI5','AX16','2018-04-04','15:00:00','17:00:00','SM16','1','ARMA1');

CALL operazione_5('ED3','AX17','2018-03-15','14:00:00','15:30:00','SM17','2','ARMA2');

CALL operazione_5('FO4','AX18','2018-02-02','09:00:00','11:00:00','SM18','3','ARMA3');

-- Test operazione 6;

CALL operazione_6 ('CL14','R6','50','2018-04-15','IS1','2');

CALL operazione_6 ('LE8','R7','100','2018-03-25','IS2','2');

-- Test operazione 7;

CALL operazione_7('Username12','CER2');

CALL operazione_7('Username11','CER3');

CALL operazione_7('Username10','CER4');

-- Test operazione 8;

CALL operazione_8('Username12','SF1','VAL6','900','80','18',NULL);

CALL operazione_8('Username12','SF1','VAL7','1100','95','20',NULL);

CALL operazione_8('Username14','SF2','VAL8','500','105','20',NULL);

-- Test Trigger;

INSERT INTO Calendario
VALUES ('CORSO4','Lunedì','18:00:00','19:00:00');

INSERT INTO Personale
VALUES ('ANF02','Lunedì','08:00:00','19:00:00');

INSERT INTO Calendario
VALUES ('CORSO1','Lunedì','09:00:00','11:00:00');

-- Test area analytics;

CALL necessita_apparecchiature('3');

CALL necessita_apparecchiature('4');

CALL verifica_scheda('VV2');

CALL verifica_scheda('AL7');

CALL verifica_scheda('GI5');

CALL verifica_scheda('CL14');

CALL verifica_scheda('ED3');

CALL verifica_scheda('PD10');

CALL verifica_scheda('FO4');

CALL verifica_scheda('F04');

-- ------------------------------------
-- Popolamento CentroFitness
-- ------------------------------------

INSERT INTO CentroFitness
VALUES ('1','84127','500','17','Salerno','089/2435625','300','Arturo Di Napoli'),
	   ('2','00118','300','17','Roma','06/25634987','200','I Laziali da Roma'),
	   ('3','00119','400','71','Roma','06/23164235','250','Senad Lulic'),
	   ('4','80011','150','10','Acerra','081/1326487','50','Diego Armando Maradona'),
       ('5','97010','75','8','Roccazzo','0932/234961','30','Col vento'),
	   ('6','63065','120','13','Ripatransone','0735/243564','40','Ndante'),
	   ('7','47025','175','44','Ciola','0547/243532','99','Obbligo del ghetto');

-- ------------------------------------
-- Popolamento Dipendente
-- ------------------------------------

INSERT INTO Dipendente
VALUES ('PDC01','Paolo','Di Canio','00118','1968-07-09','I Laziali da Roma','5','Roma','NP01','DOC1'),
	   ('ANF02','Anna','Franco','00121','1990-04-25','Della Vittoria','15','Roma','NP02','DOC2'),
       ('ENO03','Enrico','Ottaro','00119','1980-08-04','Senad Lulic','25','Roma','NP03','DOC3'),
       ('GEM04','Germano','Mosconi','00120','1984-12-25','Delle porte chiuse','35','Roma','NP04','DOC4'),
       ('ENP05','Enza','Puccio','84127','1977-12-31','Alza le mani','45','Salerno','NP05','DOC5'),
       ('MUP06','Mufasa','Pippot','00123','1979-06-17','Da qui','55','Roma','NP06','DOC6'),
       ('JAR07','Jack','Riper','63065','1983-02-15','Del dolore','65','Ripatransone','NP07','DOC7'),
       ('OLN08','Olga','Nigramma','84127','1988-11-16','Marco Fassone','75','Salerno','NP08','DOC8'),
       ('OLR09','Olindo','Romano','00124','1997-02-12','Regina Cieli','85','Roma','NP09','DOC9'),
       ('ROB10','Rosa','Bazzi','00124','1999-09-12','Regina Cieli','95','Roma','NP10','DOC10'),
       ('FAO11','Franco','Ordine','63065','1974-02-06','La Bianca','25','Ripatransone','NP11','DOC11'),
       ('BIC12','Bill','Cosby','84127','1972-07-12','Cloroformio','35','Salerno','NP12','DOC12'),
       ('TOR13','Tonino','Rudiger','47025','1993-03-03','Dei calzini','45','Ciola','NP13','DOC13'),
       ('PAC14','Pamela','Candela','84127','1978-08-13','Della mattonella','55','Salerno','NP14','DOC14'),
       ('MAB15','Marco','Branca','84127','1965-01-06','Dalla Nazione','65','Salerno','NP15','DOC15'),
       ('ALB16','Al','Bano','80011','1992-05-20','Romina Forza','75','Acerra','NP16','DOC16'),
       ('ROP17','Rocco','Pastore','80011','1997-08-01','Po','85','Acerra','NP17','DOC17'),
       ('OSR18','Oscar','Rafone','80011','1993-11-01','Tocco','15','Acerra','NP18','DOC18'),
       ('MIL19','Michele','Lozio','97010','1995-08-26','Asus','25','Roccazzo','NP19','DOC19'),
       ('GIC20','Gianni','Celeste','97010','1964-06-24','U Latitante','35','Roccazzo','NP20','DOC20'),
       ('PAR21','Pape','Reina','47025','1982-08-31','Dal Milan','45','Ciola','NP21','DOC21');

-- ------------------------------------
-- Popolamento Medico
-- ------------------------------------

INSERT INTO Medico 
VALUES ('M1','Paolo','Veronesi','089/2435623','Veronesi'),
	   ('M2','Giovanni','Battista','06/25634955','Battista'),
       ('M3','Marco','Evangelista','06/23164243','Evangelista'),
       ('M4','Matteo','Ianni','081/1326442','Ianni'),
       ('M5','Pietro','Simon','0932/234932','Simon'),
       ('M6','Isaia','Hjsaj','0735/243512','Hjsaj'),
       ('M7','Lucrezio','Panditoni','0547/243511','Panditoni');

-- ------------------------------------
-- Popolamento Cliente
-- ------------------------------------

INSERT INTO Cliente
VALUES ('GB1','Gianluca','Bazuca','Roma','13','00118','NP1','Cod2','1965-06-12','I laziali da Roma','Pesce','M1'),
       ('VV2','Virgil','Van Djik','Roma','16','00121','NP2','Cod5','1995-09-15','Fillo','Salatini','M7'),
       ('ED3','Edin','Dzeko','Roma','19','00118','NP1','Cod8','1967-012-18','Rastrello','Verdura','M1'),
       ('FO4','Francesco','Ordine','Roma','20','00119','NP1','Cod9','1969-01-19','Pipistrello','Carne','M1'),
       ('GI5','Giovanni','Impastato','Salerno','22','84127','NP3','Cod11','1984-03-21','Casadei','Frutta','M2'),
       ('AB6','Alisson','Becker','Salerno','25','84127','NP3','Cod14','1992-06-24','Toto Cutugno','Pane','M2'),
       ('AL7','Alessia','Lete','Salerno','26','84127','NP3','Cod15','1993-07-25','Calleri','Pane','M2'),
       ('LE8','Lapo','Elkann','Ripatransone','30','63065','NP5','Cod19','1977-11-29','Perticone','Pasta','M4'),
       ('GC9','Giosuè','Castello','Acerra','32','80011','NP4','Cod21','1992-12-01','Prosecco','Pasta','M3'),
       ('PD10','Paolo','Diaz','Acerra','33','80011','NP4','Cod22','1981-11-02','Pupazzo','Pasta','M3'),
       ('PC11','Peter','Comeback','Ripatransone','36','63065','NP5','Cod25','1963-08-05','Ndante','Carne','M4'),
       ('EB12','Eleonora','Boi','Roccazzo','40','97010','NP7','Cod29','1956-04-09','Col vento','Pesce','M6'),
       ('DL13','Nicola','Di Bari','Ciola','44','47025','NP6','Cod33','2001-05-17','Obbligo del ghetto','Verdura','M5'),
       ('CL14','Claudio','Lotirchio','Roma','46','00118','NP1','Cod35','1996-02-25','I laziali da Roma','Pasta','M1'),
       ('IZ15','Iva','Zanicchi','Ciola','48','47025','NP6','Cod37','1992-09-30','Obbligo del ghetto','Pesce','M5');
       
-- ------------------------------------
-- Popolamento Contratto
-- ------------------------------------

INSERT INTO Contratto
VALUES ('C01','2 mesi','50','Silver','3','2','Consulente1','2018-02-02','VV2'),
	   ('C02','12 mesi','300','Platinum','5','8','Consulente2','2017-09-01','ED3'),
       ('C03','6 mesi','150','Gold','4','6','Consulente3','2018-03-04','EB12'),
       ('C04','3 mesi','70','Gold','4','3','Consulente4','2018-04-06','DL13'),
       ('C05','12 mesi','300','Platinum','5','8','Consulente5','2018-01-05','LE8'),
       ('C06','12 mesi','300','Platinum','5','8','Consulente6','2017-05-03','CL14'),
       ('C07','1 mese','30','Silver','3','1','Consulente7','2018-04-10','IZ15');

-- ------------------------------------
-- Popolamento Piscina
-- ------------------------------------

INSERT INTO Piscina
VALUES ('P01','50X10','Interna','1'),
	   ('P02','50X10','Interna','2'),
       ('P03','50X10','Interna','3'),
       ('P04','10X5','Esterna','4'),
       ('P05','50X10','Interna','4'),
       ('P06','50X10','Interna','6'),
       ('P07','50X10','Interna','7');

-- ------------------------------------
-- Popolamento Sala
-- ------------------------------------

INSERT INTO Sala
VALUES ('S01','Sala Fitness','1'),
	   ('S02','Sala Attrezzi','2'),
       ('S03','Sala Fitness','3'),
       ('S04','Sala Attrezzi','4'),
       ('S05','Sala Corpo Libero','5'),
       ('S06','Sala Boxe','6'),
       ('S07','Sala Momo','7');

-- ------------------------------------
-- Popolamento Corso
-- ------------------------------------

INSERT INTO Corso
VALUES ('CORSO1','70','Boxe','Principiante','2018-05-13','2018-07-13','S01',NULL,'MAB15'),
	   ('CORSO2','80','Zumba','Intermedio','2018-06-12','2018-07-16','S03',NULL,'ROB10'),
       ('CORSO3','50','Nuoto sincronizzato','Avanzato','2018-07-13','2019-05-13',NULL,'P01','MAB15'),
       ('CORSO4','20','Tuffi','Intermedio','2018-04-14','2018-06-29',NULL,'P04','OSR18'),
       ('CORSO5','15','Bodybuilding','Intermedio','2018-08-06','2018-09-17','S03',NULL,'ROB10'),
       ('CORSO6','18','Nuoto avanzato','Avanzato','2018-09-30','2018-11-13',NULL,'P07','TOR13'),
       ('CORSO7','15','Ginnastica artistica','Principiante','2018-10-27','2018-12-31','S06',NULL,'FAO11');

-- ------------------------------------
-- Popolamento Scopo
-- ------------------------------------

INSERT INTO Scopo
VALUES ('SCOPO1','Dimagrimento','VV2'),
	   ('SCOPO2','Potenziamento Muscolare','ED3'),
       ('SCOPO3','Dimagrimento','EB12'),
       ('SCOPO4','Scopo Ricreativo','DL13'),
       ('SCOPO5','Potenziamento Muscolare','LE8'),
       ('SCOPO6','Dimagrimento','CL14'),
       ('SCOPO7','Scopo Ricreativo','IZ15');

-- ------------------------------------
-- Popolamento PotenziamentoMuscolare
-- ------------------------------------

INSERT INTO PotenziamentoMuscolare
VALUES ('SCOPO2','Tricipite','Lieve'),
	   ('SCOPO5','Deltoide Posteriore','Moderato');

-- ------------------------------------
-- Popolamento Misurazione
-- ------------------------------------

INSERT INTO Misurazione
VALUES ('MS01','10','2018-04-01','70','30','95','2018-04-03','FO4','M1'),
	   ('MS02','15','2018-02-12','50','50','85','2018-02-14','AL7','M2'),
       ('MS03','8','2018-03-15','25','75','70','2018-03-17','PD10','M3'),
       ('MS04','15','2018-04-11','40','60','78','2018-04-13','PC11','M4'),
       ('MS05','13','2018-01-07','20','80','73','2018-01-09','GI5','M5'),
       ('MS06','18','2018-03-18','95','5','130','2018-03-20','CL14','M6'),
       ('MS07','14','2018-04-03','50','50','82','2018-04-05','DL13','M7');

-- ------------------------------------
-- Popolamento Sfida
-- ------------------------------------

INSERT INTO Sfida 
VALUES ('SF1','Finire 10 schede di allenamento','2018-04-12','2018-06-18','2018-06-28'),
	   ('SF2','Perdere peso','2018-04-13','2018-06-19','2018-06-29'),
       ('SF3','Aumentare la massa muscolare','2018-04-14','2018-06-20','2018-06-30'),
       ('SF4','Perdere peso','2018-04-15','2018-06-21','2018-07-12'),
       ('SF5','Ridurre i tempi di recupero','2018-04-16','2018-06-22','2018-07-15');
       
-- ------------------------------------
-- Popolamento SchedaAlimentazione
-- ------------------------------------

INSERT INTO SchedaAlimentazione
VALUES ('SA1','Perdere Peso','2018-03-21','2018-08-21','5 Mesi','CL14','M6',NULL),
	   ('SA2','Acquisire Massa Muscolare','2018-04-15','2018-07-15','3 Mesi','AL7','M2',NULL),
       ('SA3','Prendere Peso','2018-02-08','2018-03-08','1 Mese','PD10','M3',NULL),
       ('SA4','Diminuire Massa Grassa','2018-01-13','2018-02-13','1 Mese','PC11','M4',NULL),
       ('SA5','Perdere Peso','2018-04-10','2018-06-10','2 Mesi','GI5','M5',NULL),
       ('SA6','Acquisire Massa Muscolare','2018-03-31','2018-07-31','4 Mesi','FO4','M1',NULL),
       ('SA7','Prendere Peso','2018-02-27','2018-05-27','3 Mesi','DL13','M7',NULL),
       ('SA8','Perdere Peso','2018-04-13','2018-06-19','2 Mesi',NULL,NULL,'SF2'),
       ('SA9','Perdere Peso','2018-04-12','2018-06-18','2 Mesi',NULL,NULL,'SF1'),
       ('SA10','Diminuire Massa Grassa','2018-04-15','2018-06-21','2 Mesi',NULL,NULL,'SF4');

-- ------------------------------------
-- Popolamento Dieta
-- ------------------------------------

INSERT INTO Dieta 
VALUES ('D1','2800','2400','5','Pasto1','M1'),
	   ('D2','3000','2600','6','Pasto2','M2'),
       ('D3','2200','1800','4','Pasto3','M3'),
       ('D4','2000','1700','3','Pasto4','M6'),
       ('D5','2400','2000','5','Pasto5','M7');
       
-- ------------------------------------
-- Popolamento Magazzino
-- ------------------------------------

INSERT INTO Magazzino
VALUES ('M1','100'),
	   ('M2','120'),
       ('M3','90'),
       ('M4','50'),
       ('M5','70'),
       ('M6','60'),
       ('M7','80');

-- ------------------------------------
-- Popolamento Fornitore
-- ------------------------------------

INSERT INTO Fornitore
VALUES ('FOR1','Iva1','1264758668','84127','Sas','Salerno','14','Dei delitti','Gruppo Sas1'),
       ('FOR2','Iva2','1264758644','00118','Spa','Roma','17','Delle pene','Gruppo Spa1'),
       ('FOR3','Iva3','1264755558','00119','Srl','Roma','19','Geforce','Gruppo Srl1'),
       ('FOR4','Iva4','1264758669','80011','Sapa','Acerra','24','Mouse','Gruppo Sapa1'),
       ('FOR5','Iva5','1264758662','97010','Spa','Roccazzo','29','Tastiera','Gruppo Spa2'),
       ('FOR6','Iva6','1264758661','63065','Sapa','Ripatransone','23','Display','Gruppo Sapa2'),
       ('FOR7','Iva7','1264758663','47025','Srl','Ciola','21','Franco Califano','Gruppo Srl2');

-- ------------------------------------
-- Popolamento Integratore
-- ------------------------------------

INSERT INTO Integratore
VALUES ('INTE1','2018-06-12','Liquida','Acetil L.Carnitina','Acetil Carnitina','250','400','M1','FOR1'),
       ('INTE2','2018-06-13','Solida','L.Timosina','Timosina','500','500','M2','FOR2'),
       ('INTE3','2018-06-14','Liquida','L.Gluttamina','Gluttamina','250','300','M3','FOR3'),
       ('INTE4','2018-06-15','Solida','Bcaa','Leucina','1000','400','M4','FOR4'),
       ('INTE5','2018-06-16','Liquida','S.Taurina','Taurina','250','500','M5','FOR5'),
       ('INTE6','2018-06-17','Solida','Creatina Monoidrato','Creatina','250','400','M6','FOR6'),
       ('INTE7','2018-06-18','Solida','Maltodestrina','Glutine','1000','350','M7','FOR7'),
	   ('INTE8','2018-06-25','Liquida','S1.Taurina','Taurina','250','500','M5','FOR5'),
       ('INTE9','2018-06-30','Liquida','S2.Taurina','Taurina','250','500','M5','FOR5'),
	   ('INTE10','2018-06-20','Solida','Bcaa (1)','Leucina','1000','400','M4','FOR4'),
       ('INTE11','2018-06-25','Solida','Bcaa (2)','Leucina','1000','400','M4','FOR4');
       
-- ------------------------------------
-- Popolamento Ordine
-- ------------------------------------

INSERT INTO Ordine
VALUES ('FRANCO1','FRANK1','2018-02-13','2018-02-03','Evaso','FOR1','1'),
	   ('FRANCO2','FRANK2',NULL,NULL,'Incompleto','FOR2','2'),
       ('FRANCO3','FRANK3','2018-03-15','2018-03-05','Evaso','FOR3','3'),
       ('FRANCO4','FRANK4','2018-04-16','2018-04-06','Evaso','FOR4','4'),
       ('FRANCO5','FRANK5','2018-03-17','2018-03-07','Evaso','FOR5','5'),
       ('FRANCO6','FRANK6',NULL,NULL,'Incompleto','FOR6','6'),
       ('FRANCO7','FRANK7','2018-01-19','2018-01-09','Evaso','FOR7','7');

-- ------------------------------------
-- Popolamento Apparecchiatura
-- ------------------------------------

INSERT INTO Apparecchiatura
VALUES ('APP1','Elittica','Riscaldamento gambe','50','SI','100','S01','1'),
	   ('APP2','Lat Machine','Potenziamento spalle','30','NO','45','S01','1'),
       ('APP3','Lat Machine','Potenziamento spalle','29','NO','22','S02','2'),
       ('APP4','Parallele','Distensione muscolare','13','SI','100','S02','3'),
	   ('APP5','Panca','Potenziamento','76','SI','100','S03','2'),
       ('APP6','Cyclette','Dimagrimento','67','SI','100','S03','3'),
       ('APP7','Tapis Roulant','Dimagrimento','89','NO','46','S04','5'),
       ('APP8','Leg Press','Potenziamento delle gambe','23','SI','100','S04','4'),
	   ('APP9','Pesi','Potenziamento','12','SI','100','S05','6'),
       ('APP10','Parallele','Distensione muscolare','45','NO','87','S05','4'),
       ('APP11','Cyclette','Dimagrimento','36','SI','100','S06','5'),
       ('APP12','Pesi','Potenziamento','98','SI','100','S06','7'),
       ('APP13','Tapis Roulant','Dimagrimento','99','SI','100','S07','7'),
       ('APP14','Vogatore','Potenziamento','26','NO','92','S07','6');

-- ------------------------------------
-- Popolamento SchedaAllenamento
-- ------------------------------------

INSERT INTO SchedaAllenamento
VALUES ('SAL1','95','Incompleta','2018-04-18',NULL,'173','70','10','2018-05-15','30','PDC01','FO4',NULL),
	   ('SAL2','85','Incompleta','2018-03-21',NULL,'183','50','15','2018-06-18','50','OLN08','AL7',NULL),
	   ('SAL3','70','Incompleta','2018-02-05',NULL,'175','25','8','2018-04-30','75','ALB16','PD10',NULL),
	   ('SAL4','78','Completa','2018-01-07',NULL,'165','40','15','2018-04-13','60','FAO11','PC11',NULL),
	   ('SAL5','73','Incompleta','2018-03-04',NULL,'185','20','13','2018-05-01','80','OLN08','GI5',NULL),
	   ('SAL6','130','Incompleta','2018-02-05',NULL,'180','95','18','2020-08-08','5','PDC01','CL14',NULL),
	   ('SAL7','82','Incompleta','2018-03-21',NULL,'176','50','14','2018-05-06','50','PAR21','DL13',NULL),
	   ('SAL8','100','Incompleta','2018-02-25',NULL,'156','25','25','2018-04-28','75','PAR21','IZ15','SF1'),
	   ('SAL9','93','Completa','2018-01-15',NULL,'195','5','20','2018-03-25','95','ANF02','ED3','SF5'),
	   ('SAL10','90','Incompleta','2018-02-15',NULL,'201','20','20','2018-05-05','80','PDC01','VV2','SF3');

-- ------------------------------------
-- Popolamento Esercizio
-- ------------------------------------

INSERT INTO Esercizio
VALUES ('EX1','Rematore Su Macchina Verticale','23','60','12','Aerobico',NULL,'SAL1'),
	   ('EX2','Lat Machine Anteriore','24','30','11','Anaerobico',NULL,'SAL2'),
	   ('EX3','Lat Machine Posteriore','25','40','13','Aerobico',NULL,'SAL3'),
	   ('EX4','Distensioni Su Panca','26','20','14','Anaerobico',NULL,'SAL9'),
	   ('EX5','Corsa Su Tapis Roulant','27',NULL,NULL,'Aerobico','120','SAL6'),
	   ('EX6','Leg Press','28','100','12','Aerobico',NULL,'SAL4'),
	   ('EX7','Push Down','29','50','15','Anaerobico',NULL,'SAL5'),
	   ('EX8','Squat','30','30','12','Aerobico',NULL,'SAL7'),
	   ('EX9','Curl Su Macchina','31','30','14','Anaerobico',NULL,'SAL8'),
	   ('EX10','Cyclette','32',NULL,NULL,'Aerobico','30','SAL10');

-- ------------------------------------
-- Popolamento Sessione
-- ------------------------------------

INSERT INTO Sessione
VALUES ('SS1','30','11:00:00','11:05:00','12','EX1'),
	   ('SS2','32','11:15:00','11:20:00','10','EX2'),
	   ('SS3','33','11:30:00','11:40:00','13','EX3'),
	   ('SS4','35','13:00:00','13:05:00','14','EX4'),
	   ('SS5','0','13:30:00','15:20:00',NULL,'EX5'),
	   ('SS6','53','16:00:00','16:05:00','12','EX6'),
	   ('SS7','52','16:20:00','16:30:00','15','EX7'),
	   ('SS8','60','17:00:00','17:15:00','12','EX8'),
	   ('SS9','30','18:00:00','18:05:00','14','EX9'),
	   ('SS10','32','19:00:00','19:10:00','8','EX10');

-- ------------------------------------
-- Popolamento Spogliatoio
-- ------------------------------------

INSERT INTO Spogliatoio
VALUES ('SP1','15','50','Ala Est'),
	   ('SP2','15','50','Ala Ovest'),
       ('SP3','15','50','Centrale'),
       ('SP4','12','35','Ala Sud'),
       ('SP5','12','32','Ala Nord'),
       ('SP6','12','30','Ala Ovest'),
       ('SP7','10','28','Ala Est');

-- ------------------------------------
-- Popolamento Armadietto
-- ------------------------------------

INSERT INTO Armadietto
VALUES ('ARMA1','3452','SP1'),
	   ('ARMA2','1298','SP2'),
	   ('ARMA3','5421','SP3'),
	   ('ARMA4','9864','SP4'),
	   ('ARMA5','6709','SP5'),
	   ('ARMA6','1365','SP6'),
	   ('ARMA7','9032','SP7');

-- ------------------------------------
-- Popolamento Accesso
-- ------------------------------------

INSERT INTO Accesso 
VALUES ('AX1','2018-03-22','11:00:00','13:00:00',NULL,'SM1',NULL,'2','ARMA2','GB1'),
       ('AX2','2018-03-22','11:30:00','13:30:00',NULL,'SM2',NULL,'2','ARMA2','VV2'),
	   ('AX3','2018-03-22','15:00:00','17:00:00',NULL,'SM3',NULL,'2','ARMA2','ED3'),
	   ('AX4','2018-03-12','13:30:00','14:50:00',NULL,'SM4',NULL,'3','ARMA3','FO4'),
	   ('AX5','2018-02-12','09:00:00','11:00:00',NULL,'SM5',NULL,'1','ARMA1','GI5'),
	   ('AX6','2018-02-12','09:30:00','11:00:00',NULL,'SM6',NULL,'1','ARMA1','AB6'),
	   ('AX7','2018-03-12','12:00:00','15:00:00',NULL,'SM7',NULL,'1','ARMA1','AL7'),
	   ('AX8','2018-04-17','18:00:00','19:00:00',NULL,'SM8',NULL,'6','ARMA6','LE8'),
	   ('AX9','2018-03-15','11:50:00','13:30:00',NULL,'SM9',NULL,'4','ARMA4','GC9'),
	   ('AX10','2018-03-10','10:00:00','11:25:00',NULL,'SM10',NULL,'4','ARMA4','PD10'),
	   ('AX11','2018-02-11','12:40:00','13:30:00',NULL,'SM11',NULL,'6','ARMA6','PC11'),
	   ('AX12','2018-01-12','11:20:00','14:00:00',NULL,'SM12',NULL,'5','ARMA5','EB12'),
	   ('AX13','2018-01-14','17:00:00','18:30:00',NULL,'SM13',NULL,'7','ARMA7','DL13'),
	   ('AX14','2018-03-12','09:00:00','11:00:00',NULL,'SM14',NULL,'3','ARMA3','CL14'),
	   ('AX15','2018-04-02','09:45:00','11:55:00',NULL,'SM15',NULL,'7','ARMA7','IZ15');
       
-- ------------------------------------
-- Popolamento Personale
-- ------------------------------------

INSERT INTO Personale
VALUES ('PDC01','Lunedì','09:00:00','13:00:00'),
	   ('ANF02','Martedì','13:00:00','18:00:00'),
       ('ENP05','Mercoledì','15:00:00','20:00:00'),
       ('OLN08','Giovedì','09:00:00','11:00:00'),
       ('ROB10','Venerdì','10:00:00','15:00:00'),
       ('OLR09','Sabato','18:00:00','20:00:00'),
       ('ROP17','Lunedì','12:00:00','20:00:00'),
       ('TOR13','Martedì','09:00:00','12:00:00'),
       ('GIC20','Sabato','12:00:00','18:00:00'),
       ('PAR21','Giovedì','15:00:00','20:00:00');

-- ------------------------------------
-- Popolamento Oraria
-- ------------------------------------

INSERT INTO Oraria 
VALUES ('1','Lunedì','09:00:00','20:00:00'),
	   ('2','Martedì','13:00:00','20:00:00'),
       ('3','Mercoledì','09:00:00','20:00:00'),
       ('4','Giovedì','09:00:00','13:00:00'),
       ('5','Venerdì','09:00:00','20:00:00'),
       ('6','Sabato','09:00:00','20:00:00'),
       ('7','Lunedì','09:00:00','20:00:00');

-- ------------------------------------
-- Popolamento Pagamento
-- ------------------------------------

INSERT INTO Pagamento
VALUES ('PAG01','50','Eseguito','50','C01'),
	   ('PAG02','300','Eseguito','300','C02'),
       ('PAG03','150','Eseguito','150','C03'),
       ('PAG04','70','Eseguito','70','C04'),
       ('PAG05','300','Non Ancora Dovuto','0','C05'),
       ('PAG06','300','Non Ancora Dovuto','0','C06'),
       ('PAG07','30','Eseguito','30','C07');

-- ------------------------------------
-- Popolamento Rata
-- ------------------------------------

INSERT INTO Rata
VALUES ('R1','IS1','50','2018-01-15','2','PAG06'),
	   ('R2','IS1','50','2018-02-15','3','PAG06'),
       ('R3','IS1','50','2018-03-15','2','PAG06'),
       ('R4','IS2','100','2018-01-25','3','PAG05'),
       ('R5','IS2','100','2018-02-25','2','PAG05');
       
-- ------------------------------------
-- Popolamento Calendario
-- ------------------------------------

INSERT INTO Calendario
VALUES ('CORSO1','Lunedì','10:00:00','12:00:00'),
	   ('CORSO2','Martedì','15:00:00','16:00:00'),
       ('CORSO3','Mercoledì','17:00:00','18:00:00'),
       ('CORSO4','Giovedì','09:00:00','11:00:00'),
       ('CORSO5','Venerdì','12:00:00','13:00:00'),
       ('CORSO6','Sabato','15:00:00','17:00:00'),
       ('CORSO7','Lunedì','17:00:00','18:00:00');

-- ------------------------------------
-- Popolamento Regolazione
-- ------------------------------------

INSERT INTO Regolazione
VALUES ('CONFIG01',NULL,'60',NULL,NULL,NULL,'APP14'),
	   ('CONFIG02',NULL,'30',NULL,NULL,NULL,'APP2'),
       ('CONFIG03',NULL,'40',NULL,NULL,NULL,'APP3'),
       ('CONFIG04',NULL,'20',NULL,NULL,NULL,'APP5'),
       ('CONFIG05','15',NULL,'15','120',NULL,'APP7'),
       ('CONFIG06',NULL,'100',NULL,NULL,NULL,'APP8'),
       ('CONFIG07',NULL,'50',NULL,NULL,NULL,'APP12'),
       ('CONFIG08',NULL,'30',NULL,NULL,NULL,'APP12'),
       ('CONFIG09',NULL,'30',NULL,NULL,NULL,'APP12'),
       ('CONFIG10',NULL,NULL,NULL,'30','2','APP11');
       
-- ------------------------------------
-- Popolamento Utente
-- ------------------------------------

INSERT INTO Utente 
VALUES ('Username1','Bazuka65','GB1'),
	   ('Username2','Mr 87 milioni','VV2'),
       ('Username3','Ciao Barça','ED3'),
       ('Username4','Solo bianca','FO4'),
       ('Username5','Buonanima','GI5'),
       ('Username6','La paro io','AB6'),
       ('Username7','Acqua frizzante','AL7'),
       ('Username8','Altra bianca','LE8'),
       ('Username9','Forza Napoli','GC9'),
       ('Username10','Ovvio','PD10'),
       ('Username11','Indietro Torno','PC11'),
       ('Username12','Mediaset Premium','EB12'),
       ('Username13','Bendò','DL13'),
       ('Username14','Paga la luce','CL14'),
       ('Username15','Zia di Bendò','IZ15');

-- ------------------------------------
-- Popolamento Amicizia
-- ------------------------------------

INSERT INTO Amicizia
VALUES ('Username14','Username15','2018-02-02',NULL),
	   ('Username2','Username3','2018-03-03','2018-03-04'),
       ('Username6','Username1','2018-01-01','2018-01-03'),
       ('Username14','Username9','2018-04-05',NULL),
       ('Username5','Username4','2018-03-05','2018-03-07'),
       ('Username13','Username7','2018-03-27','2018-04-01'),
       ('Username12','Username3','2018-04-04','2018-04-04');

-- ------------------------------------
-- Popolamento Cerchia
-- ------------------------------------

INSERT INTO Cerchia
VALUES ('CER1','Asso','40','1','Username14'),
	   ('CER2','Re','50','1','Username7'),
       ('CER3','Jack','40','1','Username5'),
	   ('CER4','Donna','50','1','Username10'),
       ('CER5','Joker','40','1','Username2');

-- ------------------------------------
-- Popolamento Valutazione
-- ------------------------------------

INSERT INTO Valutazione
VALUES ('VAL1','1000','88','14',NULL,'2018-04-12','Username12','SF1'),
       ('VAL2','800','120','12',NULL,'2018-04-02','Username13','SF3'),
       ('VAL3','10','220','60',NULL,NULL,'Username14','SF2'),
       ('VAL4','700','160','32',NULL,'2018-04-06','Username3','SF4'),
       ('VAL5','650','195','21',NULL,'2018-04-08','Username2','SF5');

-- ------------------------------------
-- Popolamento Interesse
-- ------------------------------------

INSERT INTO Interesse
VALUES ('INTR1','Bastoni'),
	   ('INTR2','Denari'),
	   ('INTR3','Spade'),
       ('INTR4','Coppe'),
       ('INTR5','Picche');

-- ------------------------------------
-- Popolamento Post
-- ------------------------------------

INSERT INTO Post 
VALUES ('POST1','Testo1','Af1','Ts1','Username1'),
	   ('POST2','Testo2','Af2','Ts2','Username2'),
	   ('POST3','Testo3','Af3','Ts3','Username3'),
	   ('POST4','Testo4','Af4','Ts4','Username4'),
	   ('POST5','Testo5','Af5','Ts5','Username5'),
	   ('POST6','Testo6','Af6','Ts6','Username6'),
	   ('POST7','Testo7','Af7','Ts7','Username7'),
	   ('POST8','Testo8','Af8','Ts8','Username8'),
	   ('POST9','Testo9','Af9','Ts9','Username9'),
	   ('POST10','Testo10','Af10','Ts10','Username10'),
	   ('POST11','Testo11','Af11','Ts11','Username11'),
	   ('POST12','Testo12','Af12','Ts12','Username12'),
	   ('POST13','Testo13','Af13','Ts13','Username13'),
	   ('POST14','Testo14','Af14','Ts14','Username14'),
	   ('POST15','Testo15','Af15','Ts15','Username15');

-- ------------------------------------
-- Popolamento PostRisposta
-- ------------------------------------

INSERT INTO PostRisposta
VALUES ('RISP1','Af1','Ts1','Testo1','Username15','POST1'),
	   ('RISP2','Af2','Ts2','Testo2','Username14','POST2'),
	   ('RISP3','Af3','Ts3','Testo3','Username13','POST3'),
	   ('RISP4','Af4','Ts4','Testo4','Username12','POST4'),
	   ('RISP5','Af5','Ts5','Testo5','Username11','POST5'),
	   ('RISP6','Af6','Ts6','Testo6','Username10','POST6'),
	   ('RISP7','Af7','Ts7','Testo7','Username9','POST7'),
	   ('RISP8','Af8','Ts8','Testo8','Username8','POST8'),
	   ('RISP9','Af9','Ts9','Testo9','Username7','POST9'),
	   ('RISP10','Af10','Ts10','Testo10','Username6','POST10'),
	   ('RISP11','Af11','Ts11','Testo11','Username5','POST11'),
	   ('RISP12','Af12','Ts12','Testo12','Username4','POST12'),
	   ('RISP13','Af13','Ts13','Testo13','Username3','POST13'),
	   ('RISP14','Af14','Ts14','Testo14','Username2','POST15'),
	   ('RISP15','Af15','Ts15','Testo15','Username1','POST15');

-- ------------------------------------
-- Popolamento Giudizio
-- ------------------------------------

INSERT INTO Giudizio
VALUES ('GIU1','RISP1','Da Una Stella A 5 Stelle','3'),
	   ('GIU2','RISP1','Da Una Stella A 5 Stelle','4'),
	   ('GIU3','RISP1','Da Una Stella A 5 Stelle','4'),
	   ('GIU4','RISP2','Da Una Stella A 5 Stelle','1'),
	   ('GIU5','RISP2','Da Una Stella A 5 Stelle','1'),
	   ('GIU6','RISP2','Da Una Stella A 5 Stelle','1'),
	   ('GIU7','RISP5','Da Una Stella A 5 Stelle','2'),
 	   ('GIU8','RISP5','Da Una Stella A 5 Stelle','3'),
	   ('GIU9','RISP5','Da Una Stella A 5 Stelle','3'),
	   ('GIU10','RISP7','Da Una Stella A 5 Stelle','5'),
	   ('GIU11','RISP7','Da Una Stella A 5 Stelle','5'),
	   ('GIU12','RISP7','Da Una Stella A 5 Stelle','4'),
	   ('GIU13','RISP11','Da Una Stella A 5 Stelle','5'),
	   ('GIU14','RISP11','Da Una Stella A 5 Stelle','5'),
	   ('GIU15','RISP11','Da Una Stella A 5 Stelle','5');

-- ------------------------------------
-- Popolamento Esterno
-- ------------------------------------

INSERT INTO Esterno
VALUES ('www.DiMunch1.com','DiMunch1.com','POST1'),
	   ('www.DiMunch2.com','DiMunch2.com','POST3'),
	   ('www.DiMunch3.com','DiMunch3.com','POST4'),
	   ('www.DiMunch4.com','DiMunch4.com','POST5'),
	   ('wwww.DiMunch5.com','DiMunch5.com','POST12'),
	   ('wwww.DiMunch6.com','DiMunch6.com','POST11'),
	   ('wwww.DiMunch7.com','DiMunch7.com','POST10');

-- ------------------------------------
-- Popolamento LavoraIn
-- ------------------------------------

INSERT INTO Lavora_In
VALUES ('2','PDC01','Direttore'),
	   ('3','ANF02','Direttore'),
       ('2','ENO03','Tutor'),
       ('3','GEM04','Tutor'),
       ('1','ENP05','Direttore'),
       ('2','MUP06','Responsabile'),
       ('6','JAR07','Direttore'),
       ('1','OLN08','Pulizie'),
       ('2','OLR09','Pulizie'),
       ('3','ROB10','Responsabile'),
       ('6','FAO11','Responsabile'),
       ('1','BIC12','Tutor'),
       ('7','TOR13','Responsabile'),
       ('1','PAC14','Tutor'),
       ('1','MAB15','Responsabile'),
       ('4','ALB16','Direttore'),
       ('4','ROP17','Pulizie'),
       ('4','OSR18','Responsabile'),
       ('5','MIL19','Direttore'),
       ('5','GIC20','Responsabile'),
       ('7','PAR21','Tutor');

-- ------------------------------------
-- Popolamento Frequenta
-- ------------------------------------

INSERT INTO Frequenta
VALUES ('3','CL14'),
	   ('2','GB1'),
	   ('2','VV2'),
       ('3','ED3'),
       ('3','FO4'),
       ('1','GI5'),
       ('1','AB6'),
       ('1','AL7'),
       ('6','LE8'),
       ('4','GC9'),
       ('6','PD10'),
       ('5','PC11'),
       ('5','EB12'),
       ('7','DL13'),
       ('2','CL14'),
       ('7','IZ15');

-- ------------------------------------
-- Popolamento Stipula
-- ------------------------------------

INSERT INTO Stipula 
VALUES ('2','C01'),
	   ('1','C02'),
       ('5','C03'),
       ('7','C04'),
       ('6','C05'),
       ('2','C06'),
	   ('3','C06'),
       ('7','C07');
       
-- ------------------------------------
-- Popolamento Accede
-- ------------------------------------

INSERT INTO Accede 
VALUES ('C01','P02'),
	   ('C02','P01'),
       ('C03','P03'),
       ('C05','P06'),
       ('C06','P06');

-- ------------------------------------
-- Popolamento Gestisce
-- ------------------------------------

INSERT INTO Gestisce
VALUES ('MUP06','S02'),
	   ('ROB10','S03'),
	   ('FAO11','S06'),
       ('TOR13','S07'),
       ('OSR18','S04'),
       ('GIC20','S05');

-- ------------------------------------
-- Popolamento Accede_1
-- ------------------------------------

INSERT INTO Accede_1
VALUES ('C01','S02'),
	   ('C02','S01'),
       ('C03','S05'),
       ('C04','S07'),
       ('C05','S06'),
       ('C06','S02'),
       ('C06','S03'),
       ('C07','S07');

-- ------------------------------------
-- Popolamento Accede_2
-- ------------------------------------

INSERT INTO Accede_2
VALUES ('C02','CORSO1'),
	   ('C06','CORSO2'),
       ('C06','CORSO5'),
       ('C05','CORSO7');

-- ------------------------------------
-- Popolamento Partecipa
-- ------------------------------------

INSERT INTO Partecipa 
VALUES ('ED3','CORSO1'),
	   ('CL14','CORSO2'),
       ('CL14','CORSO5'),
       ('LE8','CORSO7');

-- ------------------------------------
-- Popolamento Contenuta
-- ------------------------------------

INSERT INTO Contenuta
VALUES ('SA1','D4'),
	   ('SA2','D2'),
       ('SA3','D1'),
       ('SA4','D3'),
       ('SA5','D5'),
       ('SA6','D4'),
       ('SA7','D3');

-- ------------------------------------
-- Popolamento Acquista
-- ------------------------------------

INSERT INTO Acquista 
VALUES ('ED3','INTE1','2018-02-15','20'),
       ('CL14','INTE2','2018-02-03','20'),
       ('CL14','INTE3','2018-03-18','25'),
       ('EB12','INTE5','2018-03-25','35'),
       ('DL13','INTE7','2018-01-25','15'),
	   ('EB12','INTE8','2018-03-18','40'),
       ('EB12','INTE9','2018-03-14','55'),
	   ('VV2','INTE10','2018-03-2','20'),
       ('VV2','INTE11','2018-03-5','18'),
       ('PD10','INTE4','2018-03-12','40');
	   
-- ------------------------------------
-- Popolamento SiAssocia
-- ------------------------------------

INSERT INTO Si_Associa
VALUES ('INTE1','D5'),
	   ('INTE2','D4'),
       ('INTE3','D3'),
       ('INTE4','D4'),
       ('INTE5','D5'),
       ('INTE6','D2'),
       ('INTE7','D1');

-- ------------------------------------
-- Popolamento Richiede
-- ------------------------------------

INSERT INTO Richiede 
VALUES ('APP12','EX1'),
	   ('APP2','EX2'),
       ('APP3','EX3'),
       ('APP5','EX4'),
       ('APP13','EX5'),
       ('APP8','EX6'),
       ('APP12','EX7'),
       ('APP12','EX8'),
       ('APP12','EX9'),
       ('APP6','EX10');
       
-- ------------------------------------
-- Popolamento Aderisce
-- ------------------------------------

INSERT INTO Aderisce
VALUES ('Username1','CER5'),
	   ('Username3','CER2'),
       ('Username4','CER4'),
       ('Username12','CER3'),
       ('Username6','CER5'),
       ('Username13','CER2'),
       ('Username11','CER4'),
       ('Username9','CER3'),
       ('Username8','CER5');

-- ------------------------------------
-- Popolamento Partecipa_1
-- ------------------------------------

INSERT INTO Partecipa_1
VALUES ('Username2','SF5','Proponente'),   
	   ('Username14','SF2','Proponente'),
       ('Username4','SF3','Proponente'),
       ('Username5','SF2','Proponente'),
       ('Username7','SF1','Proponente'),
       ('Username8','SF5','Partecipante'),
       ('Username3','SF4','Partecipante'),
       ('Username11','SF4','Partecipante'),
       ('Username13','SF3','Partecipante'),
       ('Username12','SF1','Partecipante');

-- ------------------------------------
-- Popolamento Nutre 
-- ------------------------------------

INSERT INTO Nutre 
VALUES ('CER1','INTR5'),
	   ('CER2','INTR4'),
       ('CER3','INTR3'),
       ('CER4','INTR2'),
       ('CER5','INTR1');

-- ------------------------------------
-- Popolamento Fa_Uso
-- ------------------------------------

INSERT INTO Fa_Uso
VALUES ('POST2','SF5'),
	   ('POST14','SF2'),
       ('POST4','SF3'),
       ('POST5','SF2'),
       ('POST7','SF1'),
       ('POST8','SF5'),
       ('POST3','SF4'),
       ('POST11','SF2'),
       ('POST13','SF3'),
       ('POST12','SF1');

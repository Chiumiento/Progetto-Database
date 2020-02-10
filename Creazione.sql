DROP DATABASE IF EXISTS progetto;

CREATE DATABASE progetto; 
USE progetto;

-- ------------------------------------
-- Tabella CentroFitness
-- ------------------------------------

DROP TABLE IF EXISTS CentroFitness;
CREATE TABLE CentroFitness (
	IdCentro INT NOT NULL AUTO_INCREMENT,
    CAP INT(5) NOT NULL,
    Dimensione INT(5) NOT NULL,
    NumCivico VARCHAR(5) NOT NULL,
    Citta VARCHAR(50) NOT NULL,
    NTelefono VARCHAR(11) NOT NULL,
    MaxClienti INT(4) NOT NULL,
    Via VARCHAR(50) NOT NULL,
    PRIMARY KEY(IdCentro)
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Dipendente
-- ------------------------------------

DROP TABLE IF EXISTS Dipendente;
CREATE TABLE Dipendente (
	CodFiscale VARCHAR(16) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Cognome VARCHAR(50) NOT NULL,
    CAP INT(5) NOT NULL,
    DataNascita DATE NOT NULL,
    Via VARCHAR(50) NOT NULL,
    NumCivico VARCHAR(5) NOT NULL,
    Citta VARCHAR(50) NOT NULL,
    NPrefettura VARCHAR(20) NOT NULL,
    CodDocumento VARCHAR(10) NOT NULL,
    PRIMARY KEY(CodFiscale)
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Medico
-- ------------------------------------

DROP TABLE IF EXISTS Medico;
CREATE TABLE Medico ( 
	CodMedico VARCHAR(5) NOT NULL,
	Nome VARCHAR(50) NOT NULL,
    Cognome VARCHAR(50) NOT NULL,
    Telefono VARCHAR(11) NOT NULL,
    Studio VARCHAR(50) NOT NULL,
    PRIMARY KEY(CodMedico)
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Cliente
-- ------------------------------------

DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
	CodFiscale VARCHAR(16) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Cognome VARCHAR(50) NOT NULL,
    Citta VARCHAR(50) NOT NULL,
    NumCivico VARCHAR(5) NOT NULL,
    CAP INT(5) NOT NULL,
    NPrefettura VARCHAR(20) NOT NULL,
    CodDocumento VARCHAR(10) NOT NULL,
    DataNascita DATE NOT NULL,
    Via VARCHAR(50) NOT NULL,
    PreferenzeAlimentari VARCHAR(100) NOT NULL,
    Medico VARCHAR(5) NOT NULL,
    PRIMARY KEY(CodFiscale),
    FOREIGN KEY(Medico) REFERENCES Medico(CodMedico) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Contratto
-- ------------------------------------

DROP TABLE IF EXISTS Contratto;
CREATE TABLE Contratto ( 
	IdContratto VARCHAR(5) NOT NULL,
    Durata VARCHAR(20) NOT NULL,
    Costo INT(3) NOT NULL, 
    Variante VARCHAR(20) NOT NULL,
    MaxIngressi INT(4) NOT NULL,
    MaxIngressiPiscina INT(4) NOT NULL,
    CodConsulente VARCHAR(20) NOT NULL,
    DataSottoscrizione DATE,
    Cliente VARCHAR(16) NOT NULL,
    CONSTRAINT CHK_Contratto CHECK(Variante = 'Gold' OR Variante = 'Silver' OR Variante = 'Platinum'),
    PRIMARY KEY(IdContratto),
	FOREIGN KEY(Cliente) REFERENCES Cliente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Piscina
-- ------------------------------------

DROP TABLE IF EXISTS Piscina;
CREATE TABLE Piscina (
	IdPiscina VARCHAR(5) NOT NULL,
    Dimensione VARCHAR(6) NOT NULL,
    Tipo VARCHAR(20) NOT NULL,
    CentroFitness INT,
    CONSTRAINT CHK_Piscina CHECK(Tipo = 'Interna' OR Tipo = 'Esterna'),
    PRIMARY KEY(IdPiscina),
    FOREIGN KEY(CentroFitness) REFERENCES CentroFitness(IdCentro) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Sala
-- ------------------------------------
    
DROP TABLE IF EXISTS Sala;
CREATE TABLE Sala (
	IdSala VARCHAR(5) NOT NULL,
    NomeSala VARCHAR(50) NOT NULL,
    CentroFitness INT,
    PRIMARY KEY(IdSala),
    FOREIGN KEY(CentroFitness) REFERENCES CentroFitness(IdCentro) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Corso
-- ------------------------------------

DROP TABLE IF EXISTS Corso;
CREATE TABLE Corso (
	IdCorso VARCHAR(10) NOT NULL,
    MaxPartecipanti INT(5) NOT NULL,
    NomeDisciplina VARCHAR(50) NOT NULL,
    Livello VARCHAR(20) NOT NULL,
    DataInizio DATE,
    DataFine DATE,
    Sala VARCHAR(5),
    Piscina VARCHAR(5),
    Dipendente VARCHAR(16),
    CONSTRAINT CHK_Corso CHECK(Livello = 'Principiante' OR Livello = 'Intermedio' OR Livello = 'Avanzato'),
    PRIMARY KEY(IdCorso),
    FOREIGN KEY(Dipendente) REFERENCES Dipendente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Sala) REFERENCES Sala(IdSala) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Piscina) REFERENCES Piscina(IdPiscina) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Scopo
-- ------------------------------------

DROP TABLE IF EXISTS Scopo;
CREATE TABLE Scopo (
	IdScopo VARCHAR(10) NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    Cliente VARCHAR(16) NOT NULL,
    CONSTRAINT CHK_Scopo CHECK(Tipo = 'Potenziamento Muscolare' OR Tipo = 'Dimagrimento' OR Tipo = 'Scopo Ricreativo'),
    PRIMARY KEY(IdScopo),
    FOREIGN KEY(Cliente) REFERENCES Cliente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;
    
-- ------------------------------------
-- Tabella PotenziamentoMuscolare
-- ------------------------------------
    
DROP TABLE IF EXISTS PotenziamentoMuscolare;
CREATE TABLE PotenziamentoMuscolare (
	IdScopo VARCHAR(10) NOT NULL,
    Muscolo VARCHAR(50) NOT NULL,
    Livello VARCHAR(10) NOT NULL,
    CONSTRAINT CHK_PotenziamentoMuscolare CHECK(Livello = 'Lieve' OR Livello = 'Moderato' OR Livello = 'Elevato'),
    PRIMARY KEY(IdScopo),
    FOREIGN KEY(IdScopo) REFERENCES Scopo(IdScopo) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Misurazione
-- ------------------------------------

DROP TABLE IF EXISTS Misurazione;
CREATE TABLE Misurazione ( 
	IdMisurazione VARCHAR(5) NOT NULL,
    AcquaTotale INT(5) NOT NULL,
    Data DATE,
    MassaGrassa INT(5) NOT NULL,
    MassaMagra INT(5) NOT NULL,
    Peso INT(3) NOT NULL,
    DataVisita DATE,
    Cliente VARCHAR(16) NOT NULL,
    Medico VARCHAR(5) NOT NULL,
    PRIMARY KEY(IdMisurazione),
    FOREIGN KEY(Cliente) REFERENCES Cliente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Medico) REFERENCES Medico(CodMedico) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Sfida
-- ------------------------------------

DROP TABLE IF EXISTS Sfida;
CREATE TABLE Sfida (
	IdSfida VARCHAR(5) NOT NULL,
    Scopo VARCHAR(50) NOT NULL,
    DataLancio DATE,
    DataInizio DATE,
    Scadenza DATE,
    PRIMARY KEY(IdSfida)
)ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella SchedaAlimentazione
-- ------------------------------------
    
DROP TABLE IF EXISTS SchedaAlimentazione;
CREATE TABLE SchedaAlimentazione ( 
	IdSchedaAlimentazione VARCHAR(5) NOT NULL,
    Obiettivo VARCHAR(50) NOT NULL,
    DataInizio DATE,
    DataFine DATE,
    Intervallo VARCHAR(15) NOT NULL,
    Cliente VARCHAR(16),
    Medico VARCHAR(5),
    Sfida VARCHAR(5),
    CONSTRAINT CHK_SchedaAlimentazione CHECK(Obiettivo = 'Perdere Peso' OR Obiettivo = 'Acquisire Massa Muscolare'
											 OR Obiettivo = 'Prendere Peso' OR Obiettivo = 'Diminuire Massa Grassa'),
    PRIMARY KEY(IdSchedaAlimentazione),
    FOREIGN KEY(Cliente) REFERENCES Cliente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Medico) REFERENCES Medico(CodMedico) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Sfida) REFERENCES Sfida(IdSfida) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Dieta
-- ------------------------------------

DROP TABLE IF EXISTS Dieta;
CREATE TABLE Dieta ( 
	IdDieta VARCHAR(5) NOT NULL,
    MaxKilocal INT(5) NOT NULL,
    MinKilocal INT(5) NOT NULL,
    NPasti INT(1) NOT NULL,
    Pasto VARCHAR(100) NOT NULL,
    Medico VARCHAR(5) NOT NULL,
    PRIMARY KEY(IdDieta),
    FOREIGN KEY(Medico) REFERENCES Medico(CodMedico) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;
    
-- ------------------------------------
-- Tabella Magazzino
-- ------------------------------------
    
DROP TABLE IF EXISTS Magazzino;
CREATE TABLE Magazzino ( 
	IdMagazzino VARCHAR(5) NOT NULL,
    Giacenza INT(5) NOT NULL,
    PRIMARY KEY(IdMagazzino)
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Fornitore
-- ------------------------------------

DROP TABLE IF EXISTS Fornitore;
CREATE TABLE Fornitore (
	IdFornitore VARCHAR(5) NOT NULL,
    PartitaIva VARCHAR(15) NOT NULL,
    NTelefono INT(10) NOT NULL,
    CAP INT(5) NOT NULL,
    FormaSocietaria VARCHAR(10) NOT NULL,
    Citta VARCHAR(50) NOT NULL,
    NumCivico VARCHAR(5) NOT NULL,
    Via VARCHAR(50) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    PRIMARY KEY(IdFornitore)
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Integratore 
-- ------------------------------------

DROP TABLE IF EXISTS Integratore;
CREATE TABLE Integratore ( 
	IdIntegratore VARCHAR(6) NOT NULL,
    DataScadenza DATE,
    Forma VARCHAR(20) NOT NULL,
    NomeCommerciale VARCHAR(50) NOT NULL,
    NomeSostanza VARCHAR(50) NOT NULL,
    QuantitaSostanza INT(5) NOT NULL,
    NPezzi INT(5) NOT NULL,
    Magazzino VARCHAR(5) NOT NULL,
    Fornitore VARCHAR(5) NOT NULL,
    PRIMARY KEY(IdIntegratore),
    FOREIGN KEY(Magazzino) REFERENCES Magazzino(IdMagazzino) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Fornitore) REFERENCES Fornitore(IdFornitore) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Ordine 
-- ------------------------------------

DROP TABLE IF EXISTS Ordine;
CREATE TABLE Ordine ( 
	CodiceInterno VARCHAR(7) NOT NULL,
    CodiceEsterno VARCHAR(6) NOT NULL,
    DataConsegna DATE,
    DataEvasione DATE,
    Stato VARCHAR(20) NOT NULL,
    Fornitore VARCHAR(5) NOT NULL,
    CentroFitness INT,
    CONSTRAINT CHK_Ordine CHECK(Stato = 'Incompleto' OR Stato = 'Evaso'),
    PRIMARY KEY(CodiceInterno),
    FOREIGN KEY(Fornitore) REFERENCES Fornitore(IdFornitore) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(CentroFitness) REFERENCES CentroFitness(IdCentro) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Apparecchiatura 
-- ------------------------------------

DROP TABLE IF EXISTS Apparecchiatura;
CREATE TABLE Apparecchiatura ( 
	IdApparecchiatura VARCHAR(5) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Tipo VARCHAR(50) NOT NULL,
    Consumo INT(5) NOT NULL,
    Manutenzione VARCHAR(2) NOT NULL,
    PercentualeUsura INT(3) NOT NULL,
    Sala VARCHAR(5) NOT NULL,
    CentroFitness INT NOT NULL,
    CONSTRAINT CHK_Apparecchiatura CHECK((PercentualeUsura >= 0 AND PercentualeUsura <=100)
										 AND (Manutenzione = 'SI' OR Manutenzione = 'NO')),
    PRIMARY KEY(IdApparecchiatura),
    FOREIGN KEY(Sala) REFERENCES Sala(IdSala) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(CentroFitness) REFERENCES CentroFitness(IdCentro) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella SchedaAllenamento
-- ------------------------------------

DROP TABLE IF EXISTS SchedaAllenamento;
CREATE TABLE SchedaAllenamento ( 
	IdSchedaAllenamento VARCHAR(5) NOT NULL,
    Peso INT(3) NOT NULL,
    Stato VARCHAR(20) NOT NULL,
    DataInizio DATE,
    EntitaStato VARCHAR(50),
    Altezza INT(5) NOT NULL,
    MassaGrassa INT(5) NOT NULL,
    AcquaTotale INT(5) NOT NULL,
    DataFine DATE,
    MassaMagra INT(5) NOT NULL,
    Dipendente VARCHAR(16),
    Cliente VARCHAR(16),
    Sfida VARCHAR(5),
    CONSTRAINT CHK_SchedaAllenamento CHECK(Stato = 'Sovrappeso' OR Stato = 'Normopeso' OR Stato = 'Sottopeso'),
    PRIMARY KEY(IdSchedaAllenamento),
    FOREIGN KEY(Dipendente) REFERENCES Dipendente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Cliente) REFERENCES Cliente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Sfida) REFERENCES Sfida(IdSfida) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Esercizio
-- ------------------------------------
    
DROP TABLE IF EXISTS Esercizio;
CREATE TABLE Esercizio ( 
	IdEsercizio VARCHAR(5) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    DispendioEnergetico INT(3) NOT NULL,
    Peso INT(3),
    NRipetizioni INT(3),
    Tipo VARCHAR(50) NOT NULL,
    Durata INT(3),
    SchedaAllenamento VARCHAR(5) NOT NULL,
    PRIMARY KEY(IdEsercizio),
    FOREIGN KEY(SchedaAllenamento) REFERENCES SchedaAllenamento(IdSchedaAllenamento) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Sessione
-- ------------------------------------

DROP TABLE IF EXISTS Sessione;
CREATE TABLE Sessione ( 
	IdSessione VARCHAR(5) NOT NULL,
    Recupero INT(5) NOT NULL,
    IstanteInizio TIME,
    IstanteFine TIME,
    RipetizioneEffettive INT(3),
    Esercizio VARCHAR(5) NOT NULL,
    PRIMARY KEY(IdSessione),
    FOREIGN KEY(Esercizio) REFERENCES Esercizio(IdEsercizio) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Spogliatoio
-- ------------------------------------

DROP TABLE IF EXISTS Spogliatoio;
CREATE TABLE Spogliatoio (
	IdSpogliatoio VARCHAR(5) NOT NULL,
    Capienza INT(3) NOT NULL,
    NPosti INT(5) NOT NULL,
    Posizione VARCHAR(20),
    PRIMARY KEY(IdSpogliatoio)
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Armadietto
-- ------------------------------------

DROP TABLE IF EXISTS Armadietto;
CREATE TABLE Armadietto ( 
	IdArmadietto  VARCHAR(5) NOT NULL,
	CodiceSblocco INT(4) NOT NULL,
    Spogliatoio VARCHAR(5) NOT NULL,
    PRIMARY KEY(IdArmadietto),
    FOREIGN KEY(Spogliatoio) REFERENCES Spogliatoio(IdSpogliatoio) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Accesso 
-- ------------------------------------
    
DROP TABLE IF EXISTS Accesso;
CREATE TABLE Accesso (
	IdAccesso VARCHAR(5) NOT NULL,
    Data DATE,
    OrarioIngresso TIME,
    OrarioUscita TIME,
    Tariffa INT(5),
    Smartwatch VARCHAR(5) NOT NULL,
    Durata INT,
    CentroFitness INT,
    Armadietto VARCHAR(5) NOT NULL,
    Cliente VARCHAR(16) NOT NULL,
	PRIMARY KEY(IdAccesso),
    FOREIGN KEY(CentroFitness) REFERENCES CentroFitness(IdCentro) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Armadietto) REFERENCES Armadietto(IdArmadietto) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Cliente) REFERENCES Cliente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Personale
-- ------------------------------------

DROP TABLE IF EXISTS Personale;
CREATE TABLE Personale ( 
	Dipendente VARCHAR(16) NOT NULL,
    Giorno VARCHAR(10) NOT NULL,
    OrarioIngresso TIME,
    OrarioUscita TIME,
    PRIMARY KEY(Dipendente, Giorno),
    FOREIGN KEY(Dipendente) REFERENCES Dipendente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Oraria
-- ------------------------------------

DROP TABLE IF EXISTS Oraria;
CREATE TABLE Oraria ( 
	CentroFitness INT NOT NULL AUTO_INCREMENT,
    Giorno VARCHAR(10) NOT NULL,
    OrarioApertura TIME,
    OrarioChiusura TIME,
    PRIMARY KEY(CentroFitness, Giorno),
    FOREIGN KEY(CentroFitness) REFERENCES CentroFitness(IdCentro) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Pagamento
-- ------------------------------------

DROP TABLE IF EXISTS Pagamento;
CREATE TABLE Pagamento ( 
	IdPagamento VARCHAR(5) NOT NULL,
    ImportoTotale INT(5) NOT NULL,
    Stato VARCHAR(50) NOT NULL,
    ImportoAttuale INT,
    Contratto VARCHAR(5) NOT NULL,
    CONSTRAINT CHK_Pagamento CHECK(Stato = 'Eseguito' OR Stato = 'Non Ancora Dovuto' OR Stato = 'Scaduto'),
    PRIMARY KEY(IdPagamento),
    FOREIGN KEY(Contratto) REFERENCES Contratto(IdContratto) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Rata
-- ------------------------------------

DROP TABLE IF EXISTS Rata;
CREATE TABLE Rata ( 
	IdRata VARCHAR(5) NOT NULL,
    IstitutoFinanziario VARCHAR(50) NOT NULL,
    Importo INT(5) NOT NULL,
    DataScadenza DATE,
    TassoInteresse INT(3) NOT NULL,
    Pagamento VARCHAR(5) NOT NULL,
    PRIMARY KEY(IdRata),
    FOREIGN KEY(Pagamento) REFERENCES Pagamento(IdPagamento) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Calendario
-- ------------------------------------

DROP TABLE IF EXISTS Calendario;
CREATE TABLE Calendario ( 
	Corso VARCHAR(7) NOT NULL,
	Giorno VARCHAR(10) NOT NULL,
	OrarioInizio TIME,
    OrarioFine TIME,
	PRIMARY KEY(Corso, Giorno),
	FOREIGN KEY(Corso) REFERENCES Corso(IdCorso) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Regolazione
-- ------------------------------------

DROP TABLE IF EXISTS Regolazione;
CREATE TABLE Regolazione ( 
	ConfigurazioneUtilizzo VARCHAR(10) NOT NULL,
    Inclinazione INT,
    Carico INT,
    Velocita INT,
    Tempo INT,
    Intensita INT,
    Apparecchiatura VARCHAR(5) NOT NULL,
    CONSTRAINT CHK_Regolazione CHECK((Inclinazione >= 0 AND Inclinazione <= 25)
									 AND (Velocita >= 0 AND Velocita <= 20)
                                     AND (Intensita >= 1 AND Intensita <= 10)
                                     AND (Carico >= 0 AND Carico <= 350)),
    PRIMARY KEY(ConfigurazioneUtilizzo),
    FOREIGN KEY(Apparecchiatura) REFERENCES Apparecchiatura(IdApparecchiatura) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Utente
-- ------------------------------------

DROP TABLE IF EXISTS Utente;
CREATE TABLE Utente ( 
	Username VARCHAR(20) NOT NULL,
    Password VARCHAR(20) NOT NULL,
    Cliente VARCHAR(16) NOT NULL,
    PRIMARY KEY(Username),
    FOREIGN KEY(Cliente) REFERENCES Cliente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Amicizia
-- ------------------------------------

DROP TABLE IF EXISTS Amicizia;
CREATE TABLE Amicizia ( 
	UtenteRichiedente VARCHAR(20) NOT NULL,
    UtenteRicevente VARCHAR(20) NOT NULL,
    DataRichiesta DATE NOT NULL,
    DataAccettazione DATE,
    PRIMARY KEY(UtenteRichiedente, UtenteRicevente),
    FOREIGN KEY(UtenteRichiedente) REFERENCES Utente(Username) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(UtenteRicevente) REFERENCES Utente(Username) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Cerchia
-- ------------------------------------

DROP TABLE IF EXISTS Cerchia;
CREATE TABLE Cerchia (
	IdCerchia VARCHAR(5) NOT NULL,
    NomeCerchia VARCHAR(50) NOT NULL,
    MaxPartecipanti INT NOT NULL,
    NumPartecipanti INT NOT NULL,
    Utente VARCHAR(20) NOT NULL,
    PRIMARY KEY(IdCerchia),
    FOREIGN KEY(Utente) REFERENCES Utente(Username) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Valutazione
-- ------------------------------------

DROP TABLE IF EXISTS Valutazione;
CREATE TABLE Valutazione ( 
	IdValutazione VARCHAR(6) NOT NULL,
    KcalBruciate INT,
    BattitoCardiaco INT,
    ConsumoOssigeno INT,
    SforzoPsichico VARCHAR(20),
    DataFine DATE,
    Utente VARCHAR(20) NOT NULL,
    Sfida VARCHAR(5) NOT NULL,
    CONSTRAINT CHK_Valutazione CHECK((BattitoCardiaco >= 85 AND BattitoCardiaco <= 220)
									 AND (SforzoPsichico = 'Basso'  OR SforzoPsichico = 'Medio' OR SforzoPsichico = 'Alto')),
    PRIMARY KEY(IdValutazione),
    FOREIGN KEY(Utente) REFERENCES Utente(Username) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Sfida) REFERENCES Sfida(IdSfida) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Interesse
-- ------------------------------------

DROP TABLE IF EXISTS Interesse;
CREATE TABLE Interesse ( 
	IdInteresse VARCHAR(5) NOT NULL,
    Tipo VARCHAR(20) NOT NULL,
    PRIMARY KEY(IdInteresse)
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Post
-- ------------------------------------

DROP TABLE IF EXISTS Post;
CREATE TABLE Post ( 
	IdPost VARCHAR(6) NOT NULL,
    Testo VARCHAR(100) NOT NULL,
    AreaForum VARCHAR(50) NOT NULL,
    Timestamp VARCHAR(20) NOT NULL,
    Utente VARCHAR(20) NOT NULL,
    PRIMARY KEY(IdPost),
    FOREIGN KEY(Utente) REFERENCES Utente(Username) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella PostRisposta
-- ------------------------------------

DROP TABLE IF EXISTS PostRisposta;
CREATE TABLE PostRisposta (
	IdPostRisposta VARCHAR(15) NOT NULL,
    AreaForum VARCHAR(50) NOT NULL,
    Timestamp VARCHAR(20) NOT NULL,
    Testo VARCHAR(100) NOT NULL,
    Utente VARCHAR(20) NOT NULL,
	Post VARCHAR(6) NOT NULL,
    PRIMARY KEY(IdPostRisposta),
    FOREIGN KEY(Utente) REFERENCES Utente(Username) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Post) REFERENCES Post(IdPost) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Giudizio
-- ------------------------------------

DROP TABLE IF EXISTS Giudizio;
CREATE TABLE Giudizio ( 
	CodGiudizio VARCHAR(5) NOT NULL,
    PostRisposta VARCHAR(50) NOT NULL,
    Modalita VARCHAR(50) NOT NULL,
    Voto INT NOT NULL,
    CONSTRAINT CHK_Giudizio CHECK(Voto >= 1 AND Voto <= 5),
    PRIMARY KEY(CodGiudizio, PostRisposta),
    FOREIGN KEY(PostRisposta) REFERENCES PostRisposta(IdPostRisposta) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Esterno
-- ------------------------------------

DROP TABLE IF EXISTS Esterno;
CREATE TABLE Esterno ( 
	Url VARCHAR(50) NOT NULL,
    Dominio VARCHAR(50) NOT NULL,
    Post VARCHAR(10) NOT NULL,
    PRIMARY KEY(Url),
    FOREIGN KEY(Post) REFERENCES Post(IdPost) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Lavora_In 
-- ------------------------------------

DROP TABLE IF EXISTS Lavora_In;
CREATE TABLE Lavora_In ( 
	CentroFitness INT NOT NULL AUTO_INCREMENT,
    Dipendente VARCHAR(16) NOT NULL,
    Ruolo VARCHAR(50) NOT NULL,
    PRIMARY KEY(CentroFitness, Dipendente),
    FOREIGN KEY(CentroFitness) REFERENCES CentroFitness(IdCentro) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Dipendente) REFERENCES Dipendente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Frequenta
-- ------------------------------------

DROP TABLE IF EXISTS Frequenta;
CREATE TABLE Frequenta ( 
	CentroFitness INT NOT NULL AUTO_INCREMENT,
    Cliente VARCHAR(16) NOT NULL,
    PRIMARY KEY(CentroFitness, Cliente),
    FOREIGN KEY(CentroFitness) REFERENCES CentroFitness(IdCentro) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Cliente) REFERENCES Cliente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Stipula
-- ------------------------------------

DROP TABLE IF EXISTS Stipula;
CREATE TABLE Stipula ( 
	CentroFitness INT NOT NULL AUTO_INCREMENT,
    Contratto VARCHAR(5) NOT NULL,
    PRIMARY KEY(CentroFitness, Contratto),
    FOREIGN KEY(CentroFitness) REFERENCES CentroFitness(IdCentro) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Contratto) REFERENCES Contratto(IdContratto) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Accede
-- ------------------------------------

DROP TABLE IF EXISTS Accede;
CREATE TABLE Accede ( 	
	Contratto VARCHAR(5) NOT NULL,
    Piscina VARCHAR(5) NOT NULL,
    PRIMARY KEY(Contratto, Piscina),
    FOREIGN KEY(Contratto) REFERENCES Contratto(IdContratto) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Piscina) REFERENCES Piscina(IdPiscina) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Gestisce
-- ------------------------------------

DROP TABLE IF EXISTS Gestisce;
CREATE TABLE Gestisce ( 
	Dipendente VARCHAR(16) NOT NULL,
    Sala VARCHAR(5) NOT NULL,
    PRIMARY KEY(Dipendente, Sala),
    FOREIGN KEY(Dipendente) REFERENCES Dipendente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Sala) REFERENCES Sala(IdSala) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Accede_1
-- ------------------------------------

DROP TABLE IF EXISTS Accede_1;
CREATE TABLE Accede_1 ( 
	Contratto VARCHAR(5) NOT NULL,
    Sala VARCHAR(5) NOT NULL,
    PRIMARY KEY(Contratto, Sala),
    FOREIGN KEY(Contratto) REFERENCES Contratto(IdContratto) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Sala) REFERENCES Sala(IdSala) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Accede_2
-- ------------------------------------

DROP TABLE IF EXISTS Accede_2;
CREATE TABLE Accede_2 ( 
	Contratto VARCHAR(5) NOT NULL,
    Corso VARCHAR(6) NOT NULL,
    PRIMARY KEY(Contratto, Corso),
    FOREIGN KEY(Contratto) REFERENCES Contratto(IdContratto) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Corso) REFERENCES Corso(IdCorso) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Partecipa 
-- ------------------------------------

DROP TABLE IF EXISTS Partecipa;
CREATE TABLE Partecipa ( 
	Cliente VARCHAR(16) NOT NULL,
    Corso VARCHAR(6) NOT NULL,
    PRIMARY KEY(Cliente, Corso),
    FOREIGN KEY(Cliente) REFERENCES Cliente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Corso) REFERENCES Corso(IdCorso) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Contenuta
-- ------------------------------------

DROP TABLE IF EXISTS Contenuta;
CREATE TABLE Contenuta ( 
	SchedaAlimentazione VARCHAR(5) NOT NULL,
	Dieta VARCHAR(5) NOT NULL,
    PRIMARY KEY(SchedaAlimentazione, Dieta),
    FOREIGN KEY(SchedaAlimentazione) REFERENCES SchedaAlimentazione(IdSchedaAlimentazione) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Dieta) REFERENCES Dieta(IdDieta) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Acquista
-- ------------------------------------

DROP TABLE IF EXISTS Acquista;
CREATE TABLE Acquista ( 
	Cliente VARCHAR(16) NOT NULL,
	Integratore VARCHAR(6) NOT NULL,
    Data DATE,
    Quantita INT(5) NOT NULL,
    PRIMARY KEY(Cliente, Integratore),
    FOREIGN KEY(Cliente) REFERENCES Cliente(CodFiscale) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Integratore) REFERENCES Integratore(IdIntegratore) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnODB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Si_Associa
-- ------------------------------------

DROP TABLE IF EXISTS Si_Associa;
CREATE TABLE Si_Associa ( 
	Integratore VARCHAR(5) NOT NULL,
    Dieta VARCHAR(5) NOT NULL,
    PRIMARY KEY(Integratore, Dieta),
    FOREIGN KEY(Integratore) REFERENCES Integratore(IdIntegratore) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Dieta) REFERENCES Dieta(IdDieta) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Richiede
-- ------------------------------------

DROP TABLE IF EXISTS Richiede;
CREATE TABLE Richiede ( 
	Apparecchiatura VARCHAR(5) NOT NULL,
    Esercizio VARCHAR(5) NOT NULL,
    PRIMARY KEY(Apparecchiatura, Esercizio),
    FOREIGN KEY(Apparecchiatura) REFERENCES Apparecchiatura(IdApparecchiatura) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Esercizio) REFERENCES Esercizio(IdEsercizio) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Aderisce
-- ------------------------------------

DROP TABLE IF EXISTS Aderisce;
CREATE TABLE Aderisce (
	Utente VARCHAR(20) NOT NULL,
    Cerchia VARCHAR(5) NOT NULL,
    PRIMARY KEY(Utente, Cerchia),
    FOREIGN KEY(Utente) REFERENCES Utente(Username) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Cerchia) REFERENCES Cerchia(IdCerchia) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Partecipa_1
-- ------------------------------------

DROP TABLE IF EXISTS Partecipa_1;
CREATE TABLE Partecipa_1 (
	Utente VARCHAR(20) NOT NULL,
    Sfida VARCHAR(5) NOT NULL,
    Ruolo VARCHAR(50) NOT NULL,
    PRIMARY KEY(Utente, Sfida),
    FOREIGN KEY(Utente) REFERENCES Utente(Username) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Sfida) REFERENCES Sfida(IdSfida) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Nutre
-- ------------------------------------

DROP TABLE IF EXISTS Nutre;
CREATE TABLE Nutre ( 
	Cerchia VARCHAR(5) NOT NULL,
    Interesse VARCHAR(5) NOT NULL,
    PRIMARY KEY(Cerchia, Interesse),
    FOREIGN KEY(Cerchia) REFERENCES Cerchia(IdCerchia) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Interesse) REFERENCES Interesse(IdInteresse) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;

-- ------------------------------------
-- Tabella Fa_Uso
-- ------------------------------------

DROP TABLE IF EXISTS Fa_Uso;
CREATE TABLE Fa_Uso ( 
	Post VARCHAR(6) NOT NULL,
    Sfida VARCHAR(5) NOT NULL,
    PRIMARY KEY(Post, Sfida),
    FOREIGN KEY(Post) REFERENCES Post(IdPost) ON DELETE CASCADE ON UPDATE NO ACTION,
    FOREIGN KEY(Sfida) REFERENCES Sfida(IdSfida) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = Latin1;




/*
	Creation des tables :
		compterendu
		dossiermedical
		entretieninitial
		patient

*/

DROP TABLE DossierMedical;
DROP TABLE EntretienInitial;
DROP TABLE CompteRendu;
DROP TABLE Patient;

CREATE TABLE Patient
(
IdPatient MEDIUMINT NOT NULL AUTO_INCREMENT,
Nom varchar(255),
Prenom varchar(255),
Sexe varchar(255),
DateNaissance date,
Telephone varchar(255),
AdresseMail varchar(255),

PRIMARY KEY (IdPatient)

)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE EntretienInitial
(
IdEntretientInit MEDIUMINT,
Faculte MEDIUMINT, -- contexte
Cursus MEDIUMINT,
OrientationScolaire varchar(255),
AnneesToulouse varchar(255),
OrigineFamiliale MEDIUMINT,
OrigineFamilialeAutre varchar(255),
SituationFamiliale MEDIUMINT,
LieuDeVie MEDIUMINT,
DifficultesFinancieres boolean,
Bourse MEDIUMINT,
ServiceSocial boolean,
ServiceSocialDetails text,
PanierCampus boolean,
Orientation MEDIUMINT,
Preciser text,
MedecinTraitant boolean,
MedecinTraitantDetails text,
AutresSuivis text,

Hyperglicemie boolean, -- dossier medical init
HyperglicemieDetails text,
DiabeteT2 boolean,
DiabeteT2Details text,
Gestationnel boolean,
GestationnelDetails text,
Hyperlipidemie boolean,
HyperlipidemieDetails text,
HTA boolean,
HTADetails text,
Tabac boolean,
TabacDetails text,
Alcool boolean,
AlcoolDetails text,
Drogue boolean,
DrogueDetails text,
Medicament boolean,
MedicamentDetails text,
Pillule boolean,
PilluleDetails text,
AutreAnte boolean,
AutreAnteDetails text,
ParentsSurcharge boolean,
ParentsSurchargeDetails text,
ParentsObese boolean,
ParentsObeseDetails text,
ParentsDiabete boolean,
ParentsDiabeteDetails text,
ParentsHyperlipidemie boolean,
ParentsHyperlipidemieDetails text,
AccidentVasculairePrecoce boolean,
AccidentVasculairePrecoceDetails text,

PoidsNaissance varchar(255), -- histoire poids
SurchargePonderaleEnfance boolean,
surchargePonderaleAdolescence boolean,
ObesiteEnfance boolean,
ObesiteAdolescence boolean,
KilosTroisAnnees varchar(255),
PoidsMaximum varchar(255),
AgePoidsMaximum varchar(255),
PriseEnChargeAnterieure boolean,
PriseEnChargeAnterieureDetails text,
Commentaires text,

PRIMARY KEY (IdEntretientInit),
FOREIGN KEY (IdEntretientInit) REFERENCES Patient(IdPatient),
FOREIGN KEY (Faculte) REFERENCES FaculteValues(idvalue),
FOREIGN KEY (Cursus) REFERENCES CursusValues(idvalue),
FOREIGN KEY (OrigineFamiliale) REFERENCES OrigineFamilialeValues(idvalue),
FOREIGN KEY (SituationFamiliale) REFERENCES SituationFamilialeValues(idvalue),
FOREIGN KEY (LieuDeVie) REFERENCES LieuDeVieValues(idvalue),
FOREIGN KEY (Bourse) REFERENCES BoursesValues(idvalue),
FOREIGN KEY (Orientation) REFERENCES OrientationValues(idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE DossierMedical
(
IdDossierMedical MEDIUMINT,
Taillecm  DECIMAL(10,2), -- examen
Poidskg DECIMAL(10,2),
IMC DECIMAL(10,1),
Tourtaillecm  DECIMAL(10,2),
TA varchar(255),
HyperAndrogenie boolean,
HyperAndrogenieDetails text,
HyperCorticisme boolean,
HyperCorticismeDetails text,
Dysthyroidie boolean,
DysthyroidieDetails text,

PrisePetitDejeuner MEDIUMINT, -- evaluation nutri
NombreFruitsEtLegumes varchar(255),
Autre text,
ComportementAlimentaire text,

Marche boolean, -- activite physique
QAP varchar(255),
Resultats MEDIUMINT,

SigneDepressif boolean, -- etat psychologique
SigneDepressifDetails text,
SuiviExistant boolean,
SuiviExistantDetails text,
EVASommeil varchar(255),
EVAStress varchar(255),
SensationIsolement boolean,
SensationIsolementDetails text,
TestScoff varchar(255),
ResultatsScoff varchar(255),

FINDRISK varchar(255), -- resultats objectifs
SyndromeMetabolique boolean,
Motivation text,
Objectif text,
OrientationVitaform MEDIUMINT,
OrientationSimpss MEDIUMINT,
OrientationExterne MEDIUMINT,

IdPatient MEDIUMINT,
PRIMARY KEY (IdDossierMedical),
FOREIGN KEY (IdPatient) REFERENCES Patient(IdPatient),
FOREIGN KEY (PrisePetitDejeuner) REFERENCES PrisePetitDejeunerValues(idvalue),
FOREIGN KEY (Resultats) REFERENCES ResultatsValues(idvalue),
FOREIGN KEY (OrientationVitaform) REFERENCES OrientationVitaformValues(idvalue),
FOREIGN KEY (OrientationSimpss) REFERENCES OrientationSimpssValues(idvalue),
FOREIGN KEY (OrientationExterne) REFERENCES OrientationExterneValues(idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE EntretienSport
(
IdEntretienSport MEDIUMINT,
dateEntretien date,
Taillecm  DECIMAL(10,2),
Poidskg DECIMAL(10,2),
IMC DECIMAL(10,1),
Tourtaillecm  DECIMAL(10,2),
autresBiometries varchar(255),
commentaires varchar(255),

IdPatient MEDIUMINT,

PRIMARY KEY (IdEntretienSport),
FOREIGN KEY (IdPatient) REFERENCES Patient(IdPatient)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE EntretienDiet
(
IdEntretienDiet MEDIUMINT,
dateEntretien date,
Taillecm  DECIMAL(10,2),
Poidskg DECIMAL(10,2),
IMC DECIMAL(10,1),

PrisePetitDejeuner MEDIUMINT, -- evaluation nutri
NombreFruitsEtLegumes varchar(255),
Autre text,
ComportementAlimentaire text,
commentaires varchar(255),
IdPatient MEDIUMINT,

PRIMARY KEY (IdEntretienDiet),
FOREIGN KEY (IdPatient) REFERENCES Patient(IdPatient),
FOREIGN KEY (PrisePetitDejeuner) REFERENCES PrisePetitDejeunerValues(idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE CompteRendu
(
IdCompteRendu MEDIUMINT NOT NULL AUTO_INCREMENT,
TypeRdv varchar(255),
ResumeRDV text,
PRIMARY KEY (IdCompteRendu)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
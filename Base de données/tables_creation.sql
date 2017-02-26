/*
	Creation des tables :
		compterendu
		dossiermedical
		entretieninitial
		patient
		patientmesures
		patientnutrition
		patientobjectifs
		patientphysique
		patientpsychologique

*/


DROP TABLE DossierMedical;
DROP TABLE EntretienInitial;
DROP TABLE PatientMesures;
DROP TABLE PatientNutrition;
DROP TABLE PatientPhysique;
DROP TABLE PatientPsychologique;
DROP TABLE PatientObjectifs;
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
Faculte MEDIUMINT,
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
PRIMARY KEY (IdPatient),
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
IdDossier MEDIUMINT,
Hyperglicemie boolean,
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
ParentsHyperlipidémie boolean,
ParentsHyperlipidémieDetails text,
AccidentVasculairePrecoce boolean,
AccidentVasculairePrecoceDetails text,
PRIMARY KEY (IdDossier),
FOREIGN KEY (IdDossier) REFERENCES Patient(IdPatient)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE EntretienInitial
(
IdEntretientInit MEDIUMINT,
PoidsNaissance varchar(255),
SurchagePonderaleEnfance boolean,
surchagePonderaleAdolescence boolean,
ObesiteEnfance boolean,
ObeisteAdolescence boolean,
KilosTroisAnnees varchar(255),
PoidsMaximum varchar(255),
AgePoidsMaximum varchar(255),
PriseEnChargeAnterieure boolean,
PriseEnChargeAnterieureDetails text,
Commentaires text,
HyperAndrogenie boolean,
HyperAndrogenieDetails text,
HyperCorticisme boolean,
HyperCorticismeDetails text,
Dysthyroidie boolean,
DysthyroidieDetails text,
PRIMARY KEY (IdEntretientInit),
FOREIGN KEY (IdEntretientInit) REFERENCES Patient(IdPatient)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE PatientMesures
(
IdMesures MEDIUMINT,
Taille float(3,2),
Poids float(3,2),
IMC float(3,2),
TourDeTaille float(3,2),
TA varchar(255),
PRIMARY KEY (IdMesures),
FOREIGN KEY (IdMesures) REFERENCES Patient(IdPatient)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE PatientNutrition
(
IdNutrition MEDIUMINT,
PrisePetitDejeuner MEDIUMINT,
NombreFruitsEtLegumes varchar(255),
Autre text,
ComportementAlimentaire text,
PRIMARY KEY (IdNutrition),
FOREIGN KEY (IdNutrition) REFERENCES Patient(IdPatient),
FOREIGN KEY (PrisePetitDejeuner) REFERENCES PrisePetitDejeunerValues(idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE PatientPhysique
(
IdPhysique MEDIUMINT,
Marche boolean,
QAP varchar(255),
Resultats MEDIUMINT,
PRIMARY KEY (IdPhysique),
FOREIGN KEY (IdPhysique) REFERENCES Patient(IdPatient),
FOREIGN KEY (Resultats) REFERENCES ResultatsValues(idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE PatientPsychologique
(
IdPsychologique MEDIUMINT,
SigneDepressif boolean,
SigneDepressifDetails text,
SuiviExistant boolean,
SuiviExistantDetails text,
EVASommeil varchar(255),
EVAStress varchar(255),
SensationIsolement boolean,
SensationIsolementDetails text,
TestScoff varchar(255),
ResultatsScoff varchar(255),
PRIMARY KEY (IdPsychologique),
FOREIGN KEY (IdPsychologique) REFERENCES Patient(IdPatient)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE PatientObjectifs
(
IdObjectif MEDIUMINT,
FINRISK varchar(255),
SyndromeMetabolique boolean,
Motivation text,
Objectif text,
OrientationVitaform MEDIUMINT,
OrientationSimpss MEDIUMINT,
OrientationExterne MEDIUMINT,
PRIMARY KEY (IdObjectif),
FOREIGN KEY (IdObjectif) REFERENCES Patient(IdPatient),
FOREIGN KEY (OrientationVitaform) REFERENCES OrientationVitaformValues(idvalue),
FOREIGN KEY (OrientationSimpss) REFERENCES OrientationSimpssValues(idvalue),
FOREIGN KEY (OrientationExterne) REFERENCES OrientationExterneValues(idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE CompteRendu
(
IdCompteRendu MEDIUMINT NOT NULL AUTO_INCREMENT,
TypeRdv varchar(255),
ResumeRDV text,
PRIMARY KEY (IdCompteRendu)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
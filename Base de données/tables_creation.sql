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

DROP TABLE Patient;
CREATE TABLE Patient
(
IdPatient MEDIUMINT NOT NULL AUTO_INCREMENT,
Nom nvarchar(255),
Prenom nvarchar(255),
Sexe nvarchar(255),
DateNaissance date,
Telephone nvarchar(255),
AdresseMail nvarchar(255),
Faculte nvarchar(255),
Cursus nvarchar(255),
OrientationScolaire nvarchar(255),
AnneesToulouse nvarchar(255),
OrigineFamiliale nvarchar(255),
OrigineFamilialeAutre nvarchar(255),
SituationFamiliale nvarchar(255),
LieuDeVie nvarchar(255),
DifficultesFinancieres boolean,
Bourse nvarchar(255),
ServiceSocial boolean,
ServiceSocialDetails text,
PanierCampus boolean,
Orientation nvarchar(255),
Preciser text,
MedecinTraitant boolean,
MedecinTraitantDetails text,
AutresSuivis text,
PRIMARY KEY (IdPatient)
);
DROP TABLE DossierMedical;
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
);

DROP TABLE EntretienInitial;
CREATE TABLE EntretienInitial
(
IdEntretientInit MEDIUMINT,
PoidsNaissance nvarchar(255),
SurchagePonderaleEnfance boolean,
surchagePonderaleAdolescence boolean,
ObesiteEnfance boolean,
ObeisteAdolescence boolean,
KilosTroisAnnees nvarchar(255),
PoidsMaximum nvarchar(255),
AgePoidsMaximum nvarchar(255),
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
);

DROP TABLE PatientMesures;
CREATE TABLE PatientMesures
(
IdMesures MEDIUMINT,
Taille float(3,2),
Poids float(3,2),
IMC float(3,2),
TourDeTaille float(3,2),
TA nvarchar(255),
PRIMARY KEY (IdMesures),
FOREIGN KEY (IdMesures) REFERENCES Patient(IdPatient)
);

DROP TABLE PatientNutrition;
CREATE TABLE PatientNutrition
(
IdNutrition MEDIUMINT,
PrisePetitDejeuner nvarchar(255),
NombreFruitsEtLegumes nvarchar(255),
Autre text,
ComportementAlimentaire text,
PRIMARY KEY (IdNutrition),
FOREIGN KEY (IdNutrition) REFERENCES Patient(IdPatient)
);

DROP TABLE PatientPhysique;
CREATE TABLE PatientPhysique
(
IdPhysique MEDIUMINT,
Marche boolean,
QAP nvarchar(255),
Resultats nvarchar(255),
PRIMARY KEY (IdPhysique),
FOREIGN KEY (IdPhysique) REFERENCES Patient(IdPatient)
);

DROP TABLE PatientPsychologique;
CREATE TABLE PatientPsychologique
(
IdPsychologique MEDIUMINT,
SigneDepressif boolean,
SigneDepressifDetails text,
SuiviExistant boolean,
SuiviExistantDetails text,
EVASommeil nvarchar(255),
EVAStress nvarchar(255),
SensationIsolement boolean,
SensationIsolementDetails text,
TestScoff nvarchar(255),
ResultatsScoff nvarchar(255),
PRIMARY KEY (IdPsychologique),
FOREIGN KEY (IdPsychologique) REFERENCES Patient(IdPatient)
);

DROP TABLE PatientObjectifs;
CREATE TABLE PatientObjectifs
(
IdObjectif MEDIUMINT,
FINRISK nvarchar(255),
SyndromeMetabolique boolean,
Motivation text,
Objectif text,
OrientationVitaform nvarchar(255),
OrientationSimpss nvarchar(255),
OrientationExterne nvarchar(255),
PRIMARY KEY (IdObjectif),
FOREIGN KEY (IdObjectif) REFERENCES Patient(IdPatient)
);

DROP TABLE CompteRendu;
CREATE TABLE CompteRendu
(
IdCompteRendu MEDIUMINT NOT NULL AUTO_INCREMENT,
TypeRdv nvarchar(255),
ResumeRDV text,
PRIMARY KEY (IdCompteRendu)
);
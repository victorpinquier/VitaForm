CREATE TABLE Patient
(
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
DifficultesFinancieres nvarchar(255),
Bourse nvarchar(255),
ServiceSocial nvarchar(255),
ServiceSocialDetails nvarchar(255),
PanierCampus nvarchar(255),
Orientation nvarchar(255),
Preciser nvarchar(255),
MedecinTraitant nvarchar(255),
AutresSuivis nvarchar(255)

CONSTRAINT chk_Sexe CHECK (Sexe in ('F', 'M')),
CONSTRAINT chk_Telephone CHECK (Telephone like replicate('[0-9]', 10)),
CONSTRAINT chk_Cursus CHECK (Cursus in ('L1', 'L2', 'L3', 'M1', 'M2', 'Doc', 'Autre')),
CONSTRAINT chk_OrigineFamiliale CHECK (OrigineFamiliale in ('Grand Toulouse', 'Midi-Pyr�n�es', 'Dom-Tom', 'Autre')),
CONSTRAINT chk_SituationFamiliale CHECK (SituationFamiliale in ('Celibataire', 'Celibataire avec enfants', 'En couple', 'En couple avec enfants'),
CONSTRAINT chk_LieuDeVie CHECK (LieuDeVie in ('Appartement seul', 'Appartement en couple', 'Colocation',' Residence' 'universitaire', 'Foyer', 'Domicile Parental', 'Heberge')),
CONSTRAINT chk_DifficultesFinancieres CHECK (DifficultesFinancieres in ('Oui', 'Non')),
CONSTRAINT chk_Bourse CHECK (Bourse in ('Oui', 'Non')),
CONSTRAINT chk_ServiceSocial CHECK (ServiceSocial in ('Oui', 'Non')),
CONSTRAINT chk_PanierCampus CHECK (PanierCampus in ('Oui', 'Non')),
CONSTRAINT chk_Orientation CHECK(Orientation in ('Interne', 'Externe')),
)
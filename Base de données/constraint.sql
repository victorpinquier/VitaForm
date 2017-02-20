CREATE TABLE BooleanValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
)

/*
	Patient
*/

CREATE TABLE PatientFaculteValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
)

CREATE TABLE CursusValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
)

CREATE TABLE OrigineFamilialeValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
)

CREATE TABLE SituationFamilialeValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
)

CREATE TABLE LieuDeVieValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
)

CREATE TABLE BoursesValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
)

CREATE TABLE OrientationValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
)

/*
	PatientNutrition
*/

CREATE TABLE PrisePetitDejeunerValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
)

/*
	PatientPhysique
*/

CREATE TABLE ResultatsValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
)
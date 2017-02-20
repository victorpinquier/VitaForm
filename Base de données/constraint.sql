/*
	Patient
*/

DROP TABLE FaculteValues;
CREATE TABLE FaculteValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);

DROP TABLE CursusValues;
CREATE TABLE CursusValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);

DROP TABLE OrigineFamilialeValues;
CREATE TABLE OrigineFamilialeValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);

DROP TABLE SituationFamilialeValues;
CREATE TABLE SituationFamilialeValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);

DROP TABLE LieuDeVieValues;
CREATE TABLE LieuDeVieValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);

DROP TABLE BoursesValues;
CREATE TABLE BoursesValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);

DROP TABLE OrientationValues;
CREATE TABLE OrientationValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);

/*
	PatientNutrition
*/

DROP TABLE PrisePetitDejeunerValues;
CREATE TABLE PrisePetitDejeunerValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);

/*
	PatientPhysique
*/

DROP TABLE ResultatsValues;
CREATE TABLE ResultatsValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);

/*
	PatientObjectifs
*/

DROP TABLE OrientationVitaformValues;
CREATE TABLE OrientationVitaformValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);

DROP TABLE OrientationSimpssValues;
CREATE TABLE OrientationSimpssValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);

DROP TABLE OrientationExterneValues;
CREATE TABLE OrientationExterneValues
(
idvalue MEDIUMINT NOT NULL AUTO_INCREMENT,
value nvarchar(255),
PRIMARY KEY (idvalue)
);
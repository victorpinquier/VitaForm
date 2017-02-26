/*
	Creation des tables de restriction de valeurs des attributs
*/

/*
	Patient
*/

DROP TABLE FaculteValues;
DROP TABLE CursusValues;
DROP TABLE OrigineFamilialeValues;
DROP TABLE SituationFamilialeValues;
DROP TABLE LieuDeVieValues;
DROP TABLE BoursesValues;
DROP TABLE OrientationValues;
DROP TABLE PrisePetitDejeunerValues;
DROP TABLE ResultatsValues;
DROP TABLE OrientationVitaformValues;
DROP TABLE OrientationSimpssValues;
DROP TABLE OrientationExterneValues;

CREATE TABLE FaculteValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE CursusValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE OrigineFamilialeValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE SituationFamilialeValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE LieuDeVieValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE BoursesValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE OrientationValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*
	PatientNutrition
*/

CREATE TABLE PrisePetitDejeunerValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*
	PatientPhysique
*/

CREATE TABLE ResultatsValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*
	PatientObjectifs
*/

CREATE TABLE OrientationVitaformValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE OrientationSimpssValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE OrientationExterneValues
(
idvalue MEDIUMINT NOT NULL,
value varchar(255),
PRIMARY KEY (idvalue)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;
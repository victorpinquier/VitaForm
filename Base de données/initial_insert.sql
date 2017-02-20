DELETE FROM FaculteValues;

INSERT INTO FaculteValues
VALUES (1, 'UT1'), (2, 'UT2'), (3, 'UPS'), (4, 'autres');


DELETE FROM CursusValues;

INSERT INTO CursusValues
VALUES (1, 'L1'), (2, 'L2'), (3, 'L3'), (4, 'M1'), (5, 'M2'), (6, 'Doc');


DELETE FROM OrigineFamilialeValues;

INSERT INTO OrigineFamilialeValues
VALUES (1, 'Grand Toulouse'), (2, 'Midi-Pyrénées'), (3, 'Métropole'), (4, 'Dom-Tom'), (5, 'autres');


DELETE FROM SituationFamilialeValues;

INSERT INTO SituationFamilialeValues
VALUES (1, 'Célibataire'), (2, 'Célibataire avec enfant(s)'), (3, 'En couple'), (4, 'En couple avec enfant(s)');


DELETE FROM LieuDeVieValues;

INSERT INTO LieuDeVieValues
VALUES (1, 'Appartement seul'), (2, 'Appartement en couple'), (3, 'Colocation'), (4, 'Résidence universitaire'), (5, 'Foyer'), (6, 'Domicile Parental'), (7, 'Hébergé');


DELETE FROM BoursesValues;

INSERT INTO BoursesValues
VALUES (1, 'Oui'), (2, 'Non'), (3, 'En cours');


DELETE FROM OrientationValues;

INSERT INTO OrientationValues
VALUES (1, 'Interne(SIMPSS)'), (2, 'Externe');



DELETE FROM PrisePetitDejeunerValues;

INSERT INTO PrisePetitDejeunerValues
VALUES (1, 'Aucun'), (2, 'Week-end'), (3, '3 à 4 fois par semaine'), (4, 'Tous les jours');




DELETE FROM ResultatsValues;

INSERT INTO ResultatsValues
VALUES (1, 'A'), (2, 'BA'), (3, 'B'), (4, 'BC'), (5, 'C');




DELETE FROM OrientationVitaformValues;

INSERT INTO OrientationVitaformValues
VALUES (1, 'DIET prescrit'), (2, 'APA prescrit'), (3, 'PSYCHO prescrit'), (4, 'ETP');


DELETE FROM OrientationSimpssValues;

INSERT INTO OrientationSimpssValues
VALUES (1, 'IDE'), (2, 'MED'), (3, 'Psychologue'), (4, 'Psychiatre'), (5, 'Nutritionniste-Conseil'), (6, 'AS'), (7, 'PanierCampus');


DELETE FROM OrientationExterneValues;

INSERT INTO OrientationExterneValues
VALUES (1, 'Diététicien'), (2, 'Coach sportif'), (3, 'Efformip'), (4, 'CIO'), (5, 'Autres');
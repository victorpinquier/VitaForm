package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.DossierMedical;
import beans.EntretienInitial;
import beans.Patient;
import others.ConnexionBD;

public class DossierMedicalDAO {
	
	public static List<DossierMedical> getDossierMedical(int idPatient) throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    List<DossierMedical> dossiersMedical = new ArrayList<DossierMedical>();
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	        
	        String selectSQL = "Select TailleCm, PoidsKg, IMC, TourTailleCm, TA, HyperAndrogenie, HyperAndrogenieDetails"
	        		+ " HyperCortisime, HyperAndrogenieDetails, HyperCorticisme, HyperCorticismeDetails, Dysthyroidie,"
	        		+ " DysthyroidieDetails, p.value AS PrisePetitDejeuner, NombreFruitsEtLegumes, Autre,"
	        		+ " ComportementAlimentaire, Marche, QAP, r.value AS Resultats, SigneDepressif,"
	        		+ " SigneDepressifDetails, SuiviExistant, SuiviExistantDetails, EVASommeil, EVAStress,"
	        		+ " SensationIsolement, SensationIsolementDetails, TestScoff, ResultatsScoff, Findrisk,"
	        		+ " SyndromeMetabolique, Motivation, Objectif, ov.value AS OrientationVitaform, "
	        		+ " os.value AS OrientationSimpss, oe.value AS OrientationExterne"
	        		+ " From DossierMedical d, PrisePetitDejeunerValues p, ResultatsValues r, OrientationVitaformValues ov,"
	        		+ " OrientationSimpssValues os, OrientationExterneValues oe"
	        		+ " Where d.IdDossierMedical = p.idValue"
	        		+ " And d.IdDossierMedical = r.idValue"
	        		+ " And d.IdDossierMedical = ov.idValue"
	        		+ " And d.IdDossierMedical = os.idValue"
	        		+ " And d.IdDossierMedical = oe.idValue"
	        		+ " And d.IdPatient = ?;";
	        
	        PreparedStatement preparedStatement = connexion.prepareStatement(selectSQL);
	        preparedStatement.setInt(1, idPatient);
	        resultatSet = preparedStatement.executeQuery();
	        
	        if(resultatSet.next()){
	        	DossierMedical row = new DossierMedical();
	        	
	        	row.setTailleCm(resultatSet.getFloat("TailleCm"));
	        	row.setPoidsKg(resultatSet.getFloat("PoidsKg"));
	        	row.setIMC(resultatSet.getFloat("IMC"));
	        	row.setTourTailleCm(resultatSet.getFloat("TourTailleCm"));
	        	row.setTA(resultatSet.getString("TA"));
	        	row.setHyperAndrogenie(resultatSet.getBoolean("HyperAndrogenie"));
	        	row.setHyperAndrogenieDetails(resultatSet.getString("HyperAndrogenieDetails"));
	        	row.setHyperCorticisme(resultatSet.getBoolean("HyperCorticisme"));
	        	row.setHyperCorticismeDetails(resultatSet.getString("HyperCorticismeDetails"));
	        	row.setDysthyroidie(resultatSet.getBoolean("Dysthyroidie"));
	        	row.setDysthyroidieDetails(resultatSet.getString("DysthyroidieDetails"));
	        	row.setPrisePetitDejeuner(resultatSet.getString("PrisePetitDejeuner"));
	        	
	        	row.setNombreFruitsEtLegumes(resultatSet.getString("NombreFruitsEtLegumes"));
	        	row.setAutre(resultatSet.getString("Autre"));
	        	row.setComportementAlimentaire(resultatSet.getString("ComportementAlimentaire"));
	        	row.setMarche(resultatSet.getBoolean("Marche"));
	        	row.setQAP(resultatSet.getString("QAP"));
	        	row.setResultats(resultatSet.getString("Resultats"));
	        	row.setSigneDepressif(resultatSet.getBoolean("SigneDepressif"));
	        	row.setSigneDepressifDetails(resultatSet.getString("SigneDepressifDetails"));
	        	row.setSuiviExistant(resultatSet.getBoolean("SuiviExistant"));
	        	row.setSuiviExistantDetails(resultatSet.getString("SuiviExistantDetails"));
	        	row.setEVASommeil(resultatSet.getString("EVASommeil"));
	        	row.setEVAStress(resultatSet.getString("EVAStress"));
	        	row.setSensationIsolement(resultatSet.getBoolean("SensationIsolement"));
	        	row.setSensationIsolementDetails(resultatSet.getString("SensationIsolementDetails"));
	        	row.setTestScoff(resultatSet.getString("TestScoff"));
	        	row.setResultatsScoff(resultatSet.getString("ResultatsScoff"));
	        	row.setFindrisk(resultatSet.getString("Findrisk"));
	        	row.setSyndromeMetabolique(resultatSet.getBoolean("SyndromeMetabolique"));
	        	row.setMotivation(resultatSet.getString("Motivation"));
	        	row.setObjectif(resultatSet.getString("Objectif"));
	        	row.setOrientationVitaform(resultatSet.getString("OrientationVitaform"));
	        	row.setOrientationSimpss(resultatSet.getString("OrientationSimpss"));
	        	row.setOrientationExterne(resultatSet.getString("OrientationExterne"));
	        	
	        	dossiersMedical.add(row);
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dossiersMedical;
	}
}

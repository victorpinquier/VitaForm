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
	        		+ " HyperCortisime, HyperAndrogenieDetails, HyperCortisime, HyperCortisimeDetails, Dysthyroidie,"
	        		+ " DysthyroidieDetails, p.value AS PrisePetitDejeuner"
	        		+ " From DossierMedical d, PrisePetitDejeunerValues p"
	        		+ " Where d.prisePetitDejeuner = p.value"
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
	        	row.setHyperCorticisme(resultatSet.getBoolean("HyperCortisime"));
	        	row.setHyperCorticismeDetails(resultatSet.getString("HyperCortisimeDetails"));
	        	row.setDysthyroidie(resultatSet.getBoolean("Dysthyroidie"));
	        	row.setDysthyroidieDetails(resultatSet.getString("DysthyroidieDetails"));
	        	row.setPrisePetitDejeuner(resultatSet.getString("PrisePetitDejeuner"));
	        	
	        	dossiersMedical.add(row);
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dossiersMedical;
	}
}

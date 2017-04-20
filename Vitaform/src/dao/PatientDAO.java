package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Patient;
import others.ConnexionBD;

public class PatientDAO {
	
	public static List<Patient> listePatients() throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    List<Patient> patients = new ArrayList<Patient>();
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	
	        resultatSet = statement.executeQuery("Select * from Patient;");
	        while (resultatSet.next()) {
	        	Patient row = new Patient();
	            row.setNom(resultatSet.getString("Nom"));
	            row.setPrenom(resultatSet.getString("Prenom"));
	            row.setSexe(resultatSet.getString("Sexe"));
	            row.setDateNaissance(resultatSet.getString("DateNaissance"));
	            row.setTelephone(resultatSet.getString("Telephone"));
	            row.setAdresseMail(resultatSet.getString("AdresseMail"));
	            patients.add(row);
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return patients;
	}
}

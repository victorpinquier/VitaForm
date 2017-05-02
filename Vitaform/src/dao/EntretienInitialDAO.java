package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Patient;
import others.ConnexionBD;

public class EntretienInitialDAO {
	
	public static Patient getEntretienInitial(int idEntretienInitial) throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    Patient patient = null;
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	        
	        String selectSQL = "Select nom, prenom, sexe, DATE_FORMAT(dateNaissance,'%d/%m/%Y') AS dateNaissance,"
	        		+ " telephone, adresseMail from Patient Where idPatient = ?;";
	        
	        PreparedStatement preparedStatement = connexion.prepareStatement(selectSQL);
	        preparedStatement.setInt(1, idEntretienInitial);
	        resultatSet = preparedStatement.executeQuery();
	        
	        if(resultatSet.next()){
	        	patient = new Patient();
		        patient.setNom(resultatSet.getString("Nom"));
		        patient.setPrenom(resultatSet.getString("Prenom"));
		        patient.setSexe(resultatSet.getString("Sexe"));
		        patient.setDateNaissance(resultatSet.getString("DateNaissance"));
		        patient.setTelephone(resultatSet.getString("Telephone"));
		        patient.setAdresseMail(resultatSet.getString("AdresseMail"));
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return patient;
	}
}

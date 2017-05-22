package dao.constraints;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Patient;
import beans.constraints.FaculteValues;
import others.ConnexionBD;

public class FaculteValuesDAO {
	public static List<FaculteValues> listeFaculteValues() throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    List<FaculteValues> faculteValues = new ArrayList<FaculteValues>();
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	
	        resultatSet = statement.executeQuery("Select idValue, value from FaculteValues;");
	        while (resultatSet.next()) {
	        	FaculteValues row = new FaculteValues();
	        	
	        	row.setIdValue(resultatSet.getInt("idValue"));
	            row.setValue(resultatSet.getString("value"));
	            faculteValues.add(row);
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return faculteValues;
	}
}

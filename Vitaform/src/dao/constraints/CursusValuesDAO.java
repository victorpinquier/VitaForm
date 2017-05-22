package dao.constraints;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Patient;
import beans.constraints.CursusValues;
import others.ConnexionBD;

public class CursusValuesDAO {
	public static List<CursusValues> listeCursusValues() throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    List<CursusValues> cursusValues = new ArrayList<CursusValues>();
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	
	        resultatSet = statement.executeQuery("Select idValue, value from CursusValues;");
	        while (resultatSet.next()) {
	        	CursusValues row = new CursusValues();
	        	
	        	row.setIdValue(resultatSet.getInt("idValue"));
	            row.setValue(resultatSet.getString("value"));
	            cursusValues.add(row);
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cursusValues;
	}
}

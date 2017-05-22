package dao.constraints;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Patient;
import beans.constraints.BoursesValues;
import beans.constraints.CursusValues;
import beans.constraints.OrientationExterneValues;
import beans.constraints.OrientationSimpssValues;
import others.ConnexionBD;

public class OrientationSimpssValuesDAO {
	public static List<OrientationSimpssValues> listeOrientationSimpssValues() throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    List<OrientationSimpssValues> orientationSimpssValues = new ArrayList<OrientationSimpssValues>();
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	
	        resultatSet = statement.executeQuery("Select idValue, value from OrientationSimpssValues;");
	        while (resultatSet.next()) {
	        	OrientationSimpssValues row = new OrientationSimpssValues();
	        	
	        	row.setIdValue(resultatSet.getInt("idValue"));
	            row.setValue(resultatSet.getString("value"));
	            orientationSimpssValues.add(row);
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orientationSimpssValues;
	}
}

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
import others.ConnexionBD;

public class OrientationExterneValuesDAO {
	public static List<OrientationExterneValues> listeOrientationExterneValues() throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    List<OrientationExterneValues> orientationExterneValues = new ArrayList<OrientationExterneValues>();
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	
	        resultatSet = statement.executeQuery("Select idValue, value from OrientationExterneValues;");
	        while (resultatSet.next()) {
	        	OrientationExterneValues row = new OrientationExterneValues();
	        	
	        	row.setIdValue(resultatSet.getInt("idValue"));
	            row.setValue(resultatSet.getString("value"));
	            orientationExterneValues.add(row);
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orientationExterneValues;
	}
}

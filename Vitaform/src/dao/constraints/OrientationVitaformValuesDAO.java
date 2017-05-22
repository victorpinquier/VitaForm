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
import beans.constraints.OrientationVitaformValues;
import others.ConnexionBD;

public class OrientationVitaformValuesDAO {
	public static List<OrientationVitaformValues> listeOrientationVitaformValues() throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    List<OrientationVitaformValues> orientationVitaformValues = new ArrayList<OrientationVitaformValues>();
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	
	        resultatSet = statement.executeQuery("Select idValue, value from OrientationVitaformValues;");
	        while (resultatSet.next()) {
	        	OrientationVitaformValues row = new OrientationVitaformValues();
	        	
	        	row.setIdValue(resultatSet.getInt("idValue"));
	            row.setValue(resultatSet.getString("value"));
	            orientationVitaformValues.add(row);
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orientationVitaformValues;
	}
}

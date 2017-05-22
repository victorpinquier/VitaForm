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
import beans.constraints.OrigineFamilialeValues;
import others.ConnexionBD;

public class OrigineFamilialeValuesDAO {
	public static List<OrigineFamilialeValues> listeOrigineFamilialeValues() throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    List<OrigineFamilialeValues> origineFamilialeValues = new ArrayList<OrigineFamilialeValues>();
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	
	        resultatSet = statement.executeQuery("Select idValue, value from OrigineFamilialeValues;");
	        while (resultatSet.next()) {
	        	OrigineFamilialeValues row = new OrigineFamilialeValues();
	        	
	        	row.setIdValue(resultatSet.getInt("idValue"));
	            row.setValue(resultatSet.getString("value"));
	            origineFamilialeValues.add(row);
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return origineFamilialeValues;
	}
}

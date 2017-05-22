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
import beans.constraints.ResultatsValues;
import beans.constraints.SituationFamilialeValues;
import others.ConnexionBD;

public class SituationFamilialeValuesDAO {
	public static List<SituationFamilialeValues> listeSituationFamilialeValues() throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    List<SituationFamilialeValues> situationFamilialeValues = new ArrayList<SituationFamilialeValues>();
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	
	        resultatSet = statement.executeQuery("Select idValue, value from SituationFamilialeValues;");
	        while (resultatSet.next()) {
	        	SituationFamilialeValues row = new SituationFamilialeValues();
	        	
	        	row.setIdValue(resultatSet.getInt("idValue"));
	            row.setValue(resultatSet.getString("value"));
	            situationFamilialeValues.add(row);
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return situationFamilialeValues;
	}
}

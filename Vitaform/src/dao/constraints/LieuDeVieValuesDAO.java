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
import beans.constraints.LieuDeVieValues;
import others.ConnexionBD;

public class LieuDeVieValuesDAO {
	public static List<LieuDeVieValues> listeLieuDeVieValues() throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    List<LieuDeVieValues> lieuDeVieValues = new ArrayList<LieuDeVieValues>();
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	
	        resultatSet = statement.executeQuery("Select idValue, value from LieuDeVieValues;");
	        while (resultatSet.next()) {
	        	LieuDeVieValues row = new LieuDeVieValues();
	        	
	        	row.setIdValue(resultatSet.getInt("idValue"));
	            row.setValue(resultatSet.getString("value"));
	            lieuDeVieValues.add(row);
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lieuDeVieValues;
	}
}

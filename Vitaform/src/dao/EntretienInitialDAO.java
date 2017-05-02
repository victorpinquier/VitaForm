package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.EntretienInitial;
import beans.Patient;
import others.ConnexionBD;

public class EntretienInitialDAO {
	
	public static EntretienInitial getEntretienInitial(int idEntretienInitial) throws SQLException {
		Connection connexion = null;
	    Statement statement = null;
	    ResultSet resultatSet = null;
	    EntretienInitial entretien = null;
	    
		try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();
	        
	        String selectSQL = "Select f.value AS faculte, c.value AS cursus, orientationScolaire, anneesToulouse,"
	        		+ " o.value AS origineFamiliale, origineFamilialeAutre"
	        		+ " from EntretienInitial e, CursusValues c, FaculteValues f, OrigineFamilialeValues o"
	        		+ " Where e.IdEntretientInit = c.idvalue"
	        		+ " And e.IdEntretientInit = f.idvalue"
	        		+ " And e.IdEntretientInit = o.idvalue"
	        		+ " And e.IdEntretientInit = ?;";
	        
	        PreparedStatement preparedStatement = connexion.prepareStatement(selectSQL);
	        preparedStatement.setInt(1, idEntretienInitial);
	        resultatSet = preparedStatement.executeQuery();
	        
	        if(resultatSet.next()){
	        	entretien = new EntretienInitial();
	        	entretien.setFaculte(resultatSet.getString("faculte"));
	        	entretien.setCursus(resultatSet.getString("cursus"));
	        	entretien.setOrientationScolaire(resultatSet.getString("orientationScolaire"));
	        	entretien.setAnneesToulouse(resultatSet.getString("anneesToulouse"));
	        	entretien.setOrigineFamiliale(resultatSet.getString("origineFamiliale"));
	        	entretien.setOrigineFamilialeAutre(resultatSet.getString("origineFamilialeAutre"));
	        }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return entretien;
	}
}

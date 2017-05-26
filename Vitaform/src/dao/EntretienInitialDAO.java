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
	        		+ " of.value AS origineFamiliale, origineFamilialeAutre, s.value AS situationFamiliale,"
	        		+ " l.value AS lieuDeVie, difficultesFinancieres, b.value AS bourse, serviceSocial,"
	        		+ " serviceSocialDetails, panierCampus, o.value AS Orientation, preciser, medecinTraitant,"
	        		+ " medecinTraitantDetails, AutresSuivis, hyperglicemie, hyperglicemieDetails, diabeteT2,"
	        		+ " diabeteT2Details, gestationnel, gestationnelDetails, hyperlipidemie, hyperlipidemieDetails,"
	        		+ " HTA, HTADetails, tabac, tabacDetails, alcool, alcoolDetails, drogue, drogueDetails,"
	        		+ " medicament, medicamentDetails, pillule, pilluleDetails, autreAnte, autreAnteDetails,"
	        		+ " parentsSurcharge, parentsSurchargeDetails, parentsObese, parentsObeseDetails,"
	        		+ " parentsDiabete, parentsDiabeteDetails, parentsHyperlipidemie, parentsHyperlipidemieDetails,"
	        		+ " accidentVasculairePrecoce, accidentVasculairePrecoceDetails, poidsNaissance,"
	        		+ " surchargePonderaleEnfance, surchargePonderaleAdolescence, obesiteEnfance,"
	        		+ " obesiteAdolescence, kilosTroisAnnees, poidsMaximum, agePoidsMaximum,"
	        		+ " priseEnChargeAnterieure, priseEnChargeAnterieureDetails, commentaires"
	        		+ " From EntretienInitial e, CursusValues c, FaculteValues f, OrigineFamilialeValues of,"
	        		+ " SituationFamilialeValues s, LieuDeVieValues l, BoursesValues b, OrientationValues o"
	        		+ " Where e.IdEntretientInit = c.idvalue"
	        		+ " And e.IdEntretientInit = f.idvalue"
	        		+ " And e.IdEntretientInit = of.idvalue"
	        		+ " And e.IdEntretientInit = s.idvalue"
	        		+ " And e.IdEntretientInit = l.idvalue"
	        		+ " And e.IdEntretientInit = b.idvalue"
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
	        	
	        	entretien.setSituationFamiliale(resultatSet.getString("situationFamiliale"));
	        	entretien.setLieuDeVie(resultatSet.getString("lieuDeVie"));	  
	        	entretien.setDifficultesFinancieres(resultatSet.getBoolean("difficultesFinancieres"));	 
	        	entretien.setBourse(resultatSet.getString("bourse"));
	        	entretien.setServiceSocial(resultatSet.getString("serviceSocial"));
	        	entretien.setServiceSocialDetails(resultatSet.getString("serviceSocialDetails"));
	        	entretien.setPanierCampus(resultatSet.getBoolean("panierCampus"));
	        	entretien.setOrientation(resultatSet.getString("Orientation"));
	        	entretien.setPreciser(resultatSet.getString("preciser"));
	        	entretien.setMedecinTraitant(resultatSet.getBoolean("medecinTraitant"));
	        	entretien.setMedecinTraitantDetails(resultatSet.getString("medecinTraitantDetails"));
	        	entretien.setAutresSuivis(resultatSet.getString("AutresSuivis"));
	        	entretien.setHyperglicemie(resultatSet.getBoolean("Hyperglicemie"));
	        	entretien.setHyperglicemieDetails(resultatSet.getString("HyperglicemieDetails"));
	        	entretien.setDiabeteT2(resultatSet.getBoolean("DiabeteT2"));
	        	entretien.setDiabeteT2Details(resultatSet.getString("DiabeteT2Details"));
	        	entretien.setGestationnel(resultatSet.getBoolean("Gestationnel"));
	        	entretien.setGestationnelDetails(resultatSet.getString("GestationnelDetails"));
	        	entretien.setHyperlipidemie(resultatSet.getBoolean("Hyperlipidemie"));
	        	entretien.setHyperlipidemieDetails(resultatSet.getString("HyperlipidemieDetails"));
	        	entretien.setHta(resultatSet.getBoolean("HTA"));
	        	entretien.setHtaDetails(resultatSet.getString("HTADetails"));
	        	entretien.setTabac(resultatSet.getBoolean("Tabac"));
	        	entretien.setTabacDetails(resultatSet.getString("TabacDetails"));
	        	entretien.setAlcool(resultatSet.getBoolean("Alcool"));
	        	entretien.setAlcoolDetails(resultatSet.getString("AlcoolDetails"));
	        	entretien.setDrogue(resultatSet.getBoolean("Drogue"));
	        	entretien.setDrogueDetails(resultatSet.getString("DrogueDetails"));
	        	entretien.setMedicament(resultatSet.getBoolean("Medicament"));
	        	entretien.setMedicamentDetails(resultatSet.getString("MedicamentDetails"));
	        	entretien.setPillule(resultatSet.getBoolean("Pillule"));
	        	entretien.setPilluleDetails(resultatSet.getString("PilluleDetails"));
	        	entretien.setAutreAnte(resultatSet.getBoolean("AutreAnte"));
	        	entretien.setAutreAnteDetails(resultatSet.getString("AutreAnteDetails"));
	        	entretien.setParentsSurcharge(resultatSet.getBoolean("ParentsSurcharge"));
	        	entretien.setParentsSurchargeDetails(resultatSet.getString("ParentsSurchargeDetails"));
	        	entretien.setParentsObese(resultatSet.getBoolean("ParentsObese"));
	        	entretien.setParentsObeseDetails(resultatSet.getString("ParentsObeseDetails"));
	        	entretien.setParentsDiabete(resultatSet.getBoolean("ParentsDiabete"));
	        	entretien.setParentsDiabeteDetails(resultatSet.getString("ParentsDiabeteDetails"));
	        	entretien.setParentsHyperlipidemie(resultatSet.getBoolean("ParentsHyperlipidemie"));
	        	entretien.setParentsHyperlipidemieDetails(resultatSet.getString("ParentsHyperlipidemieDetails"));
	        	entretien.setAccidentVasculairePrecoce(resultatSet.getBoolean("AccidentVasculairePrecoce"));
	        	entretien.setAccidentVasculairePrecoceDetails(resultatSet.getString("AccidentVasculairePrecoceDetails"));
	        	entretien.setPoidsNaissance(resultatSet.getString("PoidsNaissance"));
	        	entretien.setSurchargePonderaleEnfance(resultatSet.getBoolean("SurchagePonderaleEnfance"));
	        	entretien.setSurchargePonderaleAdolescence(resultatSet.getBoolean("surchagePonderaleAdolescence"));
	        	entretien.setObesiteEnfance(resultatSet.getBoolean("ObesiteEnfance"));
	        	entretien.setObesiteAdolescence(resultatSet.getBoolean("ObesiteAdolescence"));
	        	entretien.setKilosTroisAnnees(resultatSet.getString("KilosTroisAnnees"));
	        	entretien.setPoidsMaximum(resultatSet.getString("PoidsMaximum"));
	        	entretien.setAgePoidsMaximum(resultatSet.getString("AgePoidsMaximum"));
	        	entretien.setPriseEnChargeAnterieure(resultatSet.getBoolean("PriseEnChargeAnterieure"));
	        	entretien.setPriseEnChargeAnterieureDetails(resultatSet.getString("PriseEnChargeAnterieureDetails"));
	        	entretien.setCommentaires(resultatSet.getString("Commentaires"));
	        	
	       }
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return entretien;
	}
}

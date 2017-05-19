package forms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import beans.EntretienInitial;
import beans.Patient;
import servlets.AjouterEntretienInitial;
import servlets.AjouterPatient;
import others.ConnexionBD;

public class AjouterEntretienInitialForm {
	private static final String CHAMP_IDPATIENT   = "choixPatient";
    private static final String CHAMP_FACULTE   = "choixFaculte";
    private static final String CHAMP_CURSUS   = "choixCursus";
    private static final String CHAMP_ORIENTATIONSCOLAIRE   = "orientationscolaire";
    private static final String CHAMP_ANNEESTLSE   = "nbantlse";
    private static final String CHAMP_ORIGINEFAM   = "choixOrigineFam";
    private static final String CHAMP_SITUATIONFAM   = "choixSituationFam";
    private static final String CHAMP_LIEUVIE   = "choixLieuVie";
    private static final String CHAMP_DIFFFINAN   = "optionsDF";
    private static final String CHAMP_BOURSE   = "choixBourse";
    private static final String CHAMP_SERVICESOCIAL   = "optionsSS";
    private static final String CHAMP_SERVICESOCIALDETAIL   = "servicesocialdetail";
    private static final String CHAMP_PANIERCAMPUS   = "optionsPC";
    private static final String CHAMP_ORIENTATION   = "choixOrientation";
    private static final String CHAMP_PRECISER   = "preciser";
    private static final String CHAMP_MEDECINTRAITANT   = "optionsMT";
    private static final String CHAMP_MEDECINTRAITANTDETAIL   = "medecintraitantdetail";
    private static final String CHAMP_AUTRESSUIVIS   = "autressuivis";
    
    private static final String CHAMP_HYPERGLICEMIE   = "optionsHyperglicemie";
    private static final String CHAMP_HYPERGLICEMIEDETAIL   = "optionsHyperglicemieDetails";
    private static final String CHAMP_DIABETET2   = "optionsDiabeteT2";
    private static final String CHAMP_DIABETET2DETAIL   = "optionsDiabeteT2Details";
    private static final String CHAMP_GESTATIONNEL   = "optionsGestationnel";
    private static final String CHAMP_GESTATIONNELDETAIL   = "optionsGestationnelDetails";
    private static final String CHAMP_HYPERLIPIDEMIE   = "optionsHyperlipidemie";
    private static final String CHAMP_HYPERLIPIDEMIEDETAIL   = "optionsHyperlipidemieDetails";
    private static final String CHAMP_HTA   = "optionsHTA";
    private static final String CHAMP_HTADETAIL   = "optionsHTADetails";
    private static final String CHAMP_TABAC   = "optionsTabac";
    private static final String CHAMP_TABACDETAIL   = "optionsTabacDetails";
    private static final String CHAMP_ALCOOL   = "optionsAlcool";
    private static final String CHAMP_ALCOOLDETAIL   = "optionsAlcoolDetails";
    private static final String CHAMP_DROGUE   = "optionsDrogue";
    private static final String CHAMP_DROGUEDETAIL   = "optionsDrogueDetails";
    private static final String CHAMP_MEDICAMENT   = "optionsMedicament";
    private static final String CHAMP_MEDICAMENTDETAIL   = "optionsMedicamentDetails";
    private static final String CHAMP_PILLULE   = "optionsPillule";
    private static final String CHAMP_PILLULEDETAIL   = "optionsPilluleDetails";
    private static final String CHAMP_AUTREANTE   = "optionsAutreAnte";
    private static final String CHAMP_AUTREANTEDETAIL   = "optionsAutreAnteDetails";
    private static final String CHAMP_PARENTSSURCHARGE   = "optionsParentsSurcharge";
    private static final String CHAMP_PARENTSSURCHARGEDETAIL   = "optionsParentsSurchargeDetails";
    private static final String CHAMP_PARENTSOBESE   = "optionsParentsObese";
    private static final String CHAMP_PARENTSOBESEDETAIL   = "optionsParentsObeseDetails";
    private static final String CHAMP_PARENTSDIABETE   = "optionsParentsDiabete";
    private static final String CHAMP_PARENTSDIABETEDETAIL   = "optionsParentsDiabeteDetails";
    private static final String CHAMP_PARENTSHYPERLIPIDEMIE   = "optionsParentsHyperlipidemie";
    private static final String CHAMP_PARENTSHYPERLIPIDEMIEDETAIL   = "optionsParentsHyperlipidemieDetails";
    private static final String CHAMP_ACCIDENTVASCULAIREPRECOCE   = "optionsAccidentVasculairePrecoce";
    private static final String CHAMP_ACCIDENTVASCULAIREPRECOCEDETAIL   = "optionsAccidentVasculairePrecoceDetails";
    private static final String CHAMP_POIDSNAISSANCE   = "PoidsNaissance";
    private static final String CHAMP_SURCHAGEPONDERALEENFANCE   = "optionsSurchagePonderaleEnfance";
    private static final String CHAMP_SURCHAGEPONDERALEADOLESCENCE   = "optionsSurchagePonderaleAdolescence";
    private static final String CHAMP_OBESITEENFANCE   = "optionsObesiteEnfance";
    private static final String CHAMP_OBESITEADOLESCENCE   = "optionsObesiteAdolescence";
    private static final String CHAMP_KILOSTROISANNEES   = "KilosTroisAnnees";
    private static final String CHAMP_POIDSMAXIMUM   = "PoidsMaximum";
    private static final String CHAMP_AGEPOIDSMAXIMUM   = "AgePoidsMaximum";
    private static final String CHAMP_PRISEENCHARGEANTERIEURE   = "optionsPriseEnChargeAnterieure";
    private static final String CHAMP_PRISEENCHARGEANTERIEUREDETAILS   = "optionsPriseEnChargeAnterieureDetails";
    private static final String CHAMP_COMMENTAIRES   = "Commentaires";
    
    private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();
    
    Connection connexion = null;
    Statement statement = null;
    ResultSet resultatSet = null;

    public String getResultat() {
        return resultat;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }
    
    public EntretienInitial ajouterEntretienInitial(HttpServletRequest request){
    	
        /* Récupèration des champs du formulaire. */
    	int idpatient   = Integer.parseInt(request.getParameter(CHAMP_IDPATIENT));
        int faculte   = Integer.parseInt(request.getParameter(CHAMP_FACULTE));
        int cursus   = Integer.parseInt(request.getParameter(CHAMP_CURSUS));
        String orientationscolaire   = request.getParameter(CHAMP_ORIENTATIONSCOLAIRE);
        String nbantlse   = request.getParameter(CHAMP_ANNEESTLSE);
        int originefam   = Integer.parseInt(request.getParameter(CHAMP_ORIGINEFAM));
        int situationfam   = Integer.parseInt(request.getParameter(CHAMP_SITUATIONFAM));
        int lieuvie   = Integer.parseInt(request.getParameter(CHAMP_LIEUVIE));
        int difffinan   = Integer.parseInt(request.getParameter(CHAMP_DIFFFINAN));
        int bourse   = Integer.parseInt(request.getParameter(CHAMP_BOURSE));
        int servicesocial   = Integer.parseInt(request.getParameter(CHAMP_SERVICESOCIAL));
        String servicesocialdetail   = request.getParameter(CHAMP_SERVICESOCIALDETAIL);
        int paniercampus   = Integer.parseInt(request.getParameter(CHAMP_PANIERCAMPUS));
        int orientation   = Integer.parseInt(request.getParameter(CHAMP_ORIENTATION));
        String preciser   = request.getParameter(CHAMP_PRECISER);
        int medecintraitant   = Integer.parseInt(request.getParameter(CHAMP_MEDECINTRAITANT));
        String medecintraitantdetail   = request.getParameter(CHAMP_MEDECINTRAITANTDETAIL);
        String autressuivis   = request.getParameter(CHAMP_AUTRESSUIVIS);
        
        int hyperglicemie   = Integer.parseInt(request.getParameter(CHAMP_HYPERGLICEMIE));
        String hyperglicemiedetail   = request.getParameter(CHAMP_HYPERGLICEMIEDETAIL);
        int diabetet2   = Integer.parseInt(request.getParameter( CHAMP_DIABETET2));
        String diabetet2detail   = request.getParameter( CHAMP_DIABETET2DETAIL);
        int gestationnel   = Integer.parseInt(request.getParameter( CHAMP_GESTATIONNEL ));
        String gestationneldetail   = request.getParameter( CHAMP_GESTATIONNELDETAIL );
        int hyperlipidemie   = Integer.parseInt(request.getParameter( CHAMP_HYPERLIPIDEMIE ));
        String hyperlipidemiedetail   = request.getParameter( CHAMP_HYPERLIPIDEMIEDETAIL );
        int hta   = Integer.parseInt(request.getParameter( CHAMP_HTA ));
        String htadetail   = request.getParameter( CHAMP_HTADETAIL );
        int tabac   = Integer.parseInt(request.getParameter( CHAMP_TABAC ));
        String tabacdetail   = request.getParameter( CHAMP_TABACDETAIL );
        int alcool   = Integer.parseInt(request.getParameter( CHAMP_ALCOOL ));
        String alcooldetail   = request.getParameter( CHAMP_ALCOOLDETAIL );
        int drogue   = Integer.parseInt(request.getParameter( CHAMP_DROGUE ));
        String droguedetail   = request.getParameter( CHAMP_DROGUEDETAIL );
        int medicament   = Integer.parseInt(request.getParameter( CHAMP_MEDICAMENT ));
        String medicamentdetail   = request.getParameter( CHAMP_MEDICAMENTDETAIL );
        int pillule   = Integer.parseInt(request.getParameter( CHAMP_PILLULE ));
        String pilluleDetails   = request.getParameter( CHAMP_PILLULEDETAIL );
        int autreAnte   = Integer.parseInt(request.getParameter( CHAMP_AUTREANTE ));
        String autreAnteDetails   = request.getParameter( CHAMP_AUTREANTEDETAIL );
        int parentsSurcharge   = Integer.parseInt(request.getParameter( CHAMP_PARENTSSURCHARGE ));
        String parentsSurchargeDetails   = request.getParameter( CHAMP_PARENTSSURCHARGEDETAIL );
        int parentsObese   = Integer.parseInt(request.getParameter( CHAMP_PARENTSOBESE ));
        String parentsObeseDetails   = request.getParameter( CHAMP_PARENTSOBESEDETAIL );
        int parentsDiabete   = Integer.parseInt(request.getParameter( CHAMP_PARENTSDIABETE ));
        String parentsDiabeteDetails   = request.getParameter( CHAMP_PARENTSDIABETEDETAIL );
        int parentsHyperlipidemie   = Integer.parseInt(request.getParameter( CHAMP_PARENTSHYPERLIPIDEMIE ));
        String parentsHyperlipidemieDetails   = request.getParameter( CHAMP_PARENTSHYPERLIPIDEMIEDETAIL );
        int accidentVasculairePrecoce   = Integer.parseInt(request.getParameter( CHAMP_ACCIDENTVASCULAIREPRECOCE ));
        String accidentVasculairePrecoceDetails   = request.getParameter( CHAMP_ACCIDENTVASCULAIREPRECOCEDETAIL );
        String poidsNaissance   = request.getParameter( CHAMP_POIDSNAISSANCE );
        String surchagePonderaleEnfance   = request.getParameter( CHAMP_SURCHAGEPONDERALEENFANCE );
        String surchagePonderaleAdolescence   = request.getParameter( CHAMP_SURCHAGEPONDERALEADOLESCENCE );
        String obesiteEnfance   = request.getParameter( CHAMP_OBESITEENFANCE );
        String obesiteAdolescence   = request.getParameter( CHAMP_OBESITEADOLESCENCE );
        String kilosTroisAnnees   = request.getParameter( CHAMP_KILOSTROISANNEES );
        String poidsMaximum   = request.getParameter( CHAMP_POIDSMAXIMUM );
        String agePoidsMaximum   = request.getParameter( CHAMP_AGEPOIDSMAXIMUM );
        String priseEnChargeAnterieure   = request.getParameter( CHAMP_PRISEENCHARGEANTERIEURE );
        String priseEnChargeAnterieureDetails   = request.getParameter( CHAMP_PRISEENCHARGEANTERIEUREDETAILS );
        String commentaires   = request.getParameter( CHAMP_COMMENTAIRES );
        
        EntretienInitial entretien = new EntretienInitial();
        
        /* Initialisation du résultat global de la validation. */
        if (erreurs.isEmpty()) {
            resultat = "Succès de l'ajout du dossier.";
            
            /* Chargement du driver JDBC pour MySQL */
            try {
                Class.forName( "com.mysql.jdbc.Driver" );
            } catch ( ClassNotFoundException e ) {}
            
            try {
                connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );

            	/* Création de l'objet gérant les requêtes préparées */
            	PreparedStatement preparedStatement = connexion.prepareStatement( "INSERT INTO EntretienInitial VALUES"
                		+ "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?,?,?,?, ?,?,"
                		+ "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,"
                		+ "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);" );
            	
            	preparedStatement.setInt(1, idpatient);
                preparedStatement.setInt(2, faculte);
                preparedStatement.setInt(3, cursus);
                preparedStatement.setString(4, orientationscolaire);
                preparedStatement.setString(5, nbantlse);
                preparedStatement.setInt(6, originefam);
                preparedStatement.setString(7, null);
                preparedStatement.setInt(8, situationfam);
                preparedStatement.setInt(9, lieuvie);
                preparedStatement.setInt(10, difffinan);
                preparedStatement.setInt(11, bourse);
                preparedStatement.setInt(12, servicesocial);
                preparedStatement.setString(13, servicesocialdetail);
                preparedStatement.setInt(14, paniercampus);
                preparedStatement.setInt(15, orientation);
                preparedStatement.setString(16, preciser);
                preparedStatement.setInt(17, medecintraitant);
                preparedStatement.setString(18, medecintraitantdetail);
                preparedStatement.setString(19, autressuivis);
                
                preparedStatement.setInt(21, hyperglicemie);
                preparedStatement.setString(22, hyperglicemiedetail);
                preparedStatement.setInt(23, diabetet2);
                preparedStatement.setString(24, diabetet2detail);
                preparedStatement.setInt(25, gestationnel);
                preparedStatement.setString(26, gestationneldetail);
                preparedStatement.setInt(27, hyperlipidemie);
                preparedStatement.setString(28, hyperlipidemiedetail);
                preparedStatement.setInt(29, hta);
                preparedStatement.setString(30, htadetail);
                preparedStatement.setInt(31, tabac);
                preparedStatement.setString(32, tabacdetail);
                preparedStatement.setInt(33, alcool);
                preparedStatement.setString(34, alcooldetail);
                preparedStatement.setInt(35, drogue);
                preparedStatement.setString(36, droguedetail);
                preparedStatement.setInt(37, medicament);
                preparedStatement.setString(38, medicamentdetail);
                preparedStatement.setInt(39, pillule);
                preparedStatement.setString(40, pilluleDetails);
                preparedStatement.setInt(41, autreAnte);
                preparedStatement.setString(42, autreAnteDetails);
                preparedStatement.setInt(43, parentsSurcharge);
                preparedStatement.setString(44, parentsSurchargeDetails);
                preparedStatement.setInt(45, parentsObese);
                preparedStatement.setString(46, parentsObeseDetails);
                preparedStatement.setInt(47, parentsDiabete);
                preparedStatement.setString(48, parentsDiabeteDetails);
                preparedStatement.setInt(49, parentsHyperlipidemie);
                preparedStatement.setString(50, parentsHyperlipidemieDetails);
                preparedStatement.setInt(51, accidentVasculairePrecoce);//
                preparedStatement.setString(52, accidentVasculairePrecoceDetails);
                preparedStatement.setString(53, poidsNaissance);
                preparedStatement.setString(54, surchagePonderaleEnfance);
                preparedStatement.setString(55, surchagePonderaleAdolescence);
                preparedStatement.setString(56, obesiteEnfance);
                preparedStatement.setString(57, obesiteAdolescence);
                preparedStatement.setString(58, kilosTroisAnnees);
                preparedStatement.setString(59, poidsMaximum);
                preparedStatement.setString(60, agePoidsMaximum);
                preparedStatement.setString(61, priseEnChargeAnterieure);
                preparedStatement.setString(62, priseEnChargeAnterieureDetails);
                preparedStatement.setString(63, commentaires);
                
                /* Exécution de la requête */
                int statut = preparedStatement.executeUpdate();
                
            } catch (SQLException ex) {
                Logger.getLogger(AjouterEntretienInitial.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        } else {
            resultat = "Echec de l'ajout du dossier.";
        }
        
        return entretien;
    }

}

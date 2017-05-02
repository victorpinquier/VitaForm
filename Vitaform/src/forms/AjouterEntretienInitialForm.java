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
                		+ "(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,NULL,NULL,NULL,NULL,NULL,NULL, NULL,NULL,"
                		+ "NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,"
                		+ "NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);" );
            	
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

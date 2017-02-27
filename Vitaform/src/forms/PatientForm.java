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

import beans.Patient;
import servlets.AjouterPatient;
import others.ConnexionBD;

public class PatientForm {
	private static final String CHAMP_PRENOM  = "nom";
    private static final String CHAMP_NOM   = "prenom";
    private static final String CHAMP_SEXE   = "optionsSexe";
    private static final String CHAMP_DATENAISSANCE   = "datenaissance";
    private static final String CHAMP_TELEPHONE   = "tel";
    private static final String CHAMP_MAIL   = "mail";
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
    
    public Patient ajouterPatient(HttpServletRequest request){
    	
        /* Récupèration des champs du formulaire. */
        String prenom = request.getParameter(CHAMP_PRENOM);
        String nom = request.getParameter(CHAMP_NOM);
        String sexe   = request.getParameter(CHAMP_SEXE);
        String datenaissance = request.getParameter(CHAMP_DATENAISSANCE);
        String telephone   = request.getParameter(CHAMP_TELEPHONE);
        String mail = request.getParameter(CHAMP_MAIL);
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
        
        Patient patient = new Patient();
        
        /* Validation du champ nom. */
        try {
            validationNom(nom);
        } catch (Exception e) {
            erreurs.put(CHAMP_NOM, e.getMessage());
        }
        patient.setNom(nom);
        
        /* Validation du champ prenom. */
        try {
            validationPrenom(prenom);
        } catch (Exception e) {
            erreurs.put(CHAMP_PRENOM, e.getMessage());
        }
        patient.setPrenom(prenom);
        
        /* Validation du champ date. */
        try {
            validationDateNaissance(datenaissance);
        } catch (Exception e) {
            erreurs.put(CHAMP_DATENAISSANCE, e.getMessage());
        }
        patient.setDateNaissance(datenaissance);
        
        /* Validation du champ email. */
        try {
            validationEmail(mail);
        } catch (Exception e) {
            erreurs.put(CHAMP_MAIL, e.getMessage());
        }
        patient.setAdresseMail(mail);
        
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
            	PreparedStatement preparedStatement = connexion.prepareStatement( "INSERT INTO Patient VALUES"
                		+ "(NULL, ?, ?, ?, STR_TO_DATE(?, '%d/%m/%Y'),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);" );
            	
                preparedStatement.setString(1, prenom);
                preparedStatement.setString(2, nom);
                preparedStatement.setString(3, sexe);
                preparedStatement.setString(4, datenaissance);
                preparedStatement.setString(5, telephone);
                preparedStatement.setString(6, mail);
                preparedStatement.setInt(7, faculte);
                preparedStatement.setInt(8, cursus);
                preparedStatement.setString(9, orientationscolaire);
                preparedStatement.setString(10, nbantlse);
                preparedStatement.setInt(11, originefam);
                preparedStatement.setString(12, null);
                preparedStatement.setInt(13, situationfam);
                preparedStatement.setInt(14, lieuvie);
                preparedStatement.setInt(15, difffinan);
                preparedStatement.setInt(16, bourse);
                preparedStatement.setInt(17, servicesocial);
                preparedStatement.setString(18, servicesocialdetail);
                preparedStatement.setInt(19, paniercampus);
                preparedStatement.setInt(20, orientation);
                preparedStatement.setString(21, preciser);
                preparedStatement.setInt(22, medecintraitant);
                preparedStatement.setString(23, medecintraitantdetail);
                preparedStatement.setString(24, autressuivis);
                
                /* Exécution de la requête */
                int statut = preparedStatement.executeUpdate();
                
                /* Création de l'objet gérant les requêtes */
                /*statement = connexion.createStatement();

                statement.executeUpdate( "INSERT INTO Patient VALUES "
                		+ "(NULL, '"+nom+"', '"+prenom+"', '"+sexe+"', STR_TO_DATE('"+datenaissance+"', '%d/%m/%Y'), '"+telephone+"',"
                				+ " '"+mail+"', "+faculte+", "+cursus+", '"+orientationscolaire+"',"
                						+ " '"+nbantlse+"', "+originefam+", '"+null+"', "+situationfam+","
                								+ " "+lieuvie+", "+difffinan+", "+bourse+", "+servicesocial+","
                										+ " '"+servicesocialdetail+"', "+paniercampus+", "+orientation+","
                												+ " '"+preciser+"', "+medecintraitant+","
                														+ " '"+medecintraitantdetail+"', '"+autressuivis+"') ;" );*/
            } catch (SQLException ex) {
                Logger.getLogger(AjouterPatient.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        } else {
            resultat = "Echec de l'ajout du dossier.";
        }
        
        return patient;
    }
    
    /**
     * Valide le nom.
     */
    private void validationNom(String nom) throws Exception {
        if ( nom == null || nom.trim().length() == 0) {
            throw new Exception("Merci de saisir un nom.");
        }
    }
    
    /**
     * Valide le prenom.
     */
    private void validationPrenom( String prenom ) throws Exception{
        if ( prenom == null || prenom.trim().length() == 0 ) {
            throw new Exception("Merci de saisir un prenom.");
        }
    }
    
    /**
     * Valide la date de naissance.
     */
    private void validationDateNaissance( String datenaissance ) throws Exception{
    	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        if ( datenaissance != null && datenaissance.trim().length() != 0 ) {
        	Date date = null;
        	try {
    			date = formatter.parse(datenaissance);
    		} catch (ParseException e1) {
    			throw new Exception("La date n'est pas du format dd/MM/yyyy.");
    		}
        }
    }
    
    /**
    * Valide l'adresse mail saisie.
    */
    private void validationEmail(String mail) throws Exception {
       if ( mail != null && mail.trim().length() != 0 ) {
           if ( !mail.matches("([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)") ) {
               throw new Exception("Merci de saisir une adresse mail valide.");
           }
       } else {
           throw new Exception("Merci de saisir une adresse mail.");
       }
}
}

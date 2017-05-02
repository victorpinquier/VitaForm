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
                		+ "(NULL, ?, ?, ?, STR_TO_DATE(?, '%d/%m/%Y'),?,?);" );
            	
                preparedStatement.setString(1, prenom);
                preparedStatement.setString(2, nom);
                preparedStatement.setString(3, sexe);
                preparedStatement.setString(4, datenaissance);
                preparedStatement.setString(5, telephone);
                preparedStatement.setString(6, mail);
                
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
        } else {
            throw new Exception("Merci de saisir une adresse mail.");
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
       }
}
}

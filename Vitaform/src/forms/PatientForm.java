package forms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import beans.Patient;
import servlets.AjouterPatient;

public class PatientForm {
	private static final String CHAMP_PRENOM  = "nom";
    private static final String CHAMP_NOM   = "prenom";
    private static final String CHAMP_SEXE   = "optionsSexe";
    private static final String CHAMP_DATENAISSANCE   = "datenaissance";
    private static final String CHAMP_TELEPHONE   = "telephone";
    private static final String CHAMP_MAIL   = "mail";
    private static final String CHAMP_FACULTE   = "faculte";
    private static final String CHAMP_CURSUS   = "cursus";
    private static final String CHAMP_ORIENTATIONSCOLAIRE   = "orientationscolaire";
    private static final String CHAMP_ANNEESTLSE   = "nbantlse";
    private static final String CHAMP_ORIGINEFAM   = "originefam";
    private static final String CHAMP_SITUATIONFAM   = "situationfam";
    private static final String CHAMP_LIEUVIE   = "lieuvie";
    private static final String CHAMP_DIFFFINAN   = "difffinan";
    private static final String CHAMP_BOURSE   = "bourse";
    private static final String CHAMP_SERVICESOCIAL   = "servicesocial";
    private static final String CHAMP_SERVICESOCIALDETAIL   = "servicesocialdetail";
    private static final String CHAMP_PANIERCAMPUS   = "paniercampus";
    private static final String CHAMP_ORIENTATION   = "orientation";
    private static final String CHAMP_PRECISER   = "preciser";
    private static final String CHAMP_MEDECINTRAITANT   = "medecintraitant";
    private static final String CHAMP_MEDECINTRAITANTDETAIL   = "medecintraitantdetail";
    private static final String CHAMP_AUTRESSUIVIS   = "autressuivis";
    
    private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();
    
    // On définit la configuration d'acces au serveur SQL
    private static final String URL = "jdbc:mysql://localhost:3306/vitaform";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";
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
        String mail = request.getParameter(CHAMP_MAIL);
        
        Patient eleve = new Patient();
        
        /* Validation du champ nom. */
        try {
            validationNom(nom);
        } catch (Exception e) {
            erreurs.put(CHAMP_NOM, e.getMessage());
        }
        eleve.setNom(nom);
        
        /* Validation du champ prenom. */
        try {
            validationPrenom(prenom);
        } catch (Exception e) {
            erreurs.put(CHAMP_PRENOM, e.getMessage());
        }
        eleve.setPrenom(prenom);
        
        /* Validation du champ email. */
        try {
            validationEmail(mail);
        } catch (Exception e) {
            erreurs.put(CHAMP_MAIL, e.getMessage());
        }
        eleve.setAdresseMail(mail);
        
        /* Initialisation du résultat global de la validation. */
        if (erreurs.isEmpty()) {
            resultat = "Succès de l'inscription.";
            
            /* Chargement du driver JDBC pour MySQL */
            try {
                Class.forName( "com.mysql.jdbc.Driver" );
            } catch ( ClassNotFoundException e ) {}
            
            try {
                connexion = DriverManager.getConnection( URL, USERNAME, PASSWORD );
                
                /* Création de l'objet gérant les requêtes */
                statement = connexion.createStatement();
                
                statement.executeUpdate( "INSERT INTO Patient VALUES (NULL, '"+nom+"', '"+prenom+"', '"+mail+"' ;" );
            } catch (SQLException ex) {
                Logger.getLogger(AjouterPatient.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        } else {
            resultat = "Echec de l'inscription.";
        }
        
        return eleve;
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

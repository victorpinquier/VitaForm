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

import beans.Utilisateur;
import others.ConnexionBD;

public final class ConnexionForm {
    private static final String CHAMP_EMAIL  = "mail";
    private static final String CHAMP_PASS   = "mdp";

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

    public Utilisateur connecterUtilisateur( HttpServletRequest request ) {
    	 /* Récupèration des champs du formulaire */
        String mail = getValeurChamp(request, CHAMP_EMAIL);
        String motDePasse = getValeurChamp(request, CHAMP_PASS);

        Utilisateur utilisateur = new Utilisateur();
        utilisateur.setEmail(mail);
        utilisateur.setMotDePasse(motDePasse);
        
        /* Validation du champ email. */
        try {
            validationCompte(mail,motDePasse);
        } catch (Exception e) {
            setErreur("etat", e.getMessage());
        }
        
        return utilisateur;
}

    /**
     * Valide le compte saisie.
     */
    private void validationCompte( String mail, String motDePasse ) throws Exception {
        if ( (mail != null) && (mail.trim().length() != 0) && mail.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
        	if (motDePasse != null && motDePasse.trim().length() != 0 ) {
	        	/* Chargement du driver JDBC pour MySQL */
	            try {
	                Class.forName( "com.mysql.jdbc.Driver" );
	            } catch ( ClassNotFoundException e ) {}
	
	            try {
	                connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );
	
	                /* Création de l'objet gérant les requêtes */
	                statement = connexion.createStatement();
	
	                ResultSet resultatSet = statement.executeQuery("Select * from Utilisateur Where mdp = MD5('"+motDePasse+"') And mail = '"+mail+"';");

	                if(!resultatSet.next()){
	                    throw new Exception("Mail ou mot de passe incorrect.");
	                }
	            } catch (SQLException ex) {
	                Logger.getLogger(ConnexionForm.class.getName()).log(Level.SEVERE, null, ex);
	                throw new Exception("Erreur lors de la connexion avec la base de données.");
	            }
			}else{
			    throw new Exception("Merci de saisir votre mot de passe.");
			}
        } else {
            throw new Exception( "Merci de saisir une adresse mail valide." );
        }
        
    }
    
    /*
     * Ajoute un message correspondant au champ spécifié à la map des erreurs.
     */
    private void setErreur(String champ, String message) {
        erreurs.put(champ, message);
    }

    /*
     * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
     * sinon.
     */
    private static String getValeurChamp(HttpServletRequest request, String nomChamp) {
        String valeur = request.getParameter(nomChamp);
        if (valeur == null || valeur.trim().length() == 0) {
            return null;
        } else {
            return valeur;
        }
    }
}
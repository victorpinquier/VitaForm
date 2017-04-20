package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Patient;
import forms.PatientForm;
import others.ConnexionBD;

public class AjouterPremierEntretien extends HttpServlet {
	public static final String VUE = "/WEB-INF/ajouterPremierEntretien.jsp";
    public static final String ACCES_PUBLIC     = "/connexion";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    
    public void init() throws ServletException {
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultatSet = null;
    	try {
			connexion = DriverManager.getConnection( ConnexionBD.URL, ConnexionBD.USERNAME, ConnexionBD.PASSWORD );

	        /* Création de l'objet gérant les requêtes */
	        statement = connexion.createStatement();

	        resultatSet = statement.executeQuery("Select * from FaculteValues;");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	

    }

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Récupèration de la session depuis la requête */
        HttpSession session = request.getSession();

        /*
         * Si l'objet utilisateur n'existe pas dans la session en cours, alors
         * l'utilisateur n'est pas connecté.
         */
        if ( session.getAttribute( ATT_SESSION_USER ) == null ) {
            /* Redirection vers la page publique */
            response.sendRedirect( request.getContextPath() + ACCES_PUBLIC );
        } else {
            /* Affichage de la page restreinte */
        	this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        }
    }
	
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Traitement des données du formulaire */
        /* Objet du formulaire */
        PatientForm form = new PatientForm();
        
        /* Appel au traitement et à la validation de la requête, et récupération du bean en résultant */
        Patient patient = form.ajouterPatient(request);

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( "form", form );
        request.setAttribute( "patient", patient );

        /* Transmission de la paire d'objets request/response à notre JSP */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
}

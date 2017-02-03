package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Accueil extends HttpServlet {
    public static final String VUE = "/WEB-INF/index.jsp";
    public static final String ACCES_PUBLIC     = "/connexion";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* R�cup�ration de la session depuis la requ�te */
        HttpSession session = request.getSession();

        /*
         * Si l'objet utilisateur n'existe pas dans la session en cours, alors
         * l'utilisateur n'est pas connect�.
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
        /* Traitement des donn�es du formulaire */
    }
}

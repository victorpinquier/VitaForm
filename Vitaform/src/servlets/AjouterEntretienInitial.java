package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.EntretienInitial;
import beans.Patient;
import beans.constraints.CursusValues;
import beans.constraints.FaculteValues;
import beans.constraints.OrigineFamilialeValues;
import dao.PatientDAO;
import dao.constraints.CursusValuesDAO;
import dao.constraints.FaculteValuesDAO;
import dao.constraints.LieuDeVieValuesDAO;
import dao.constraints.OrientationValuesDAO;
import dao.constraints.OrigineFamilialeValuesDAO;
import dao.constraints.SituationFamilialeValuesDAO;
import forms.AjouterEntretienInitialForm;
import forms.PatientForm;
import others.ConnexionBD;

public class AjouterEntretienInitial extends HttpServlet {
	public static final String VUE = "/WEB-INF/ajouterEntretienInitial.jsp";
    public static final String ACCES_PUBLIC     = "/connexion";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    

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
        	try {
                request.setAttribute("patients", PatientDAO.listePatients());
                request.setAttribute("facultevalues", FaculteValuesDAO.listeFaculteValues());
                request.setAttribute("cursusvalues", CursusValuesDAO.listeCursusValues());
                request.setAttribute("origineFamilialeValues", OrigineFamilialeValuesDAO.listeOrigineFamilialeValues());
                request.setAttribute("situationFamilialeValues", SituationFamilialeValuesDAO.listeSituationFamilialeValues());
                request.setAttribute("lieuDeVieValues", LieuDeVieValuesDAO.listeLieuDeVieValues());
                request.setAttribute("orientationValues", OrientationValuesDAO.listeOrientationValues());
                
            } catch (SQLException e) {
                request.setAttribute("erreur", "Echec lors de la récupération.");
                e.printStackTrace();
            }
        	this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        }
    }
	
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Traitement des données du formulaire */
    	
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
        	try {
                List<Patient> patients = PatientDAO.listePatients();
                request.setAttribute("patients", patients);
            } catch (SQLException e) {
                request.setAttribute("erreur", "Echec lors de la récupération.");
                e.printStackTrace();
            }
        }
        
        /* Objet du formulaire */
        AjouterEntretienInitialForm form = new AjouterEntretienInitialForm();
        
        /* Appel au traitement et à la validation de la requête, et récupération du bean en résultant */
        EntretienInitial entretien = form.ajouterEntretienInitial(request);

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( "form", form );
        request.setAttribute( "entretien", entretien );

        /* Transmission de la paire d'objets request/response à notre JSP */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
}

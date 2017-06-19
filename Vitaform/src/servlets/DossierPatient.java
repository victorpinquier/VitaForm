package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.DossierMedical;
import beans.EntretienInitial;
import beans.Patient;
import dao.DossierMedicalDAO;
import dao.EntretienInitialDAO;
import dao.PatientDAO;

public class DossierPatient extends HttpServlet {
    public static final String VUE = "/WEB-INF/dossierPatient.jsp";
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
        		int idPatient = Integer.parseInt(request.getPathInfo().split("/")[1]);
                Patient patient = PatientDAO.getPatient(idPatient);
                
                if(patient != null){
                    EntretienInitial entretien = EntretienInitialDAO.getEntretienInitial(idPatient);
                    List<DossierMedical> dossierMedical = DossierMedicalDAO.getDossierMedical(idPatient);
                    
                	request.setAttribute("patient", patient);
                	request.setAttribute("entretien", entretien);
                	request.setAttribute("dossierMedical", dossierMedical);
                	
                	this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
                }
                else response.sendError(HttpServletResponse.SC_NOT_FOUND);
                
            } catch (SQLException e) {
                request.setAttribute("erreur", "Echec lors de la récupération.");
                e.printStackTrace();
            }
        	
        }
    }
	
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Traitement des données du formulaire */
    }
}

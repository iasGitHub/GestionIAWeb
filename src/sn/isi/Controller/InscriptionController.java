package sn.isi.Controller;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.isi.dao.IEnseignant;
import sn.isi.entities.Enseignant;



/**
 * Servlet implementation class InscriptionController
 */
@WebServlet("/Inscription")
public class InscriptionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private IEnseignant enseignantdao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscriptionController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init(ServletConfig config) throws ServletException {
    	
	}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.getRequestDispatcher("WEB-INF/enseignant/ajout.jsp").forward(request, response);
	}  

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String email = request.getParameter("email");
			String matricule = request.getParameter("matricule");
			String ville = request.getParameter("ville");
			String adresse = request.getParameter("adresse");
			String telephone = request.getParameter("telephone");
			
			Enseignant ens = new Enseignant();
			ens.setNom(nom);
			ens.setPrenom(prenom);
			ens.setEmail(email);
			ens.setMatricule(matricule);
			ens.setVille(ville);
			ens.setAdresse(adresse);
			ens.setTelephone(telephone);
			
			
			enseignantdao.add(ens);
			response.sendRedirect("Enseignant?page=liste");
		
	}

}

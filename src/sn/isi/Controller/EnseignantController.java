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
 * Servlet implementation class EnseignantController
 */
@WebServlet("/Enseignant")
public class EnseignantController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@EJB
	private IEnseignant enseignantdao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnseignantController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		if(page.equals("info")) {
			request.getRequestDispatcher("WEB-INF/enseignant/info.jsp").forward(request, response);
		}
		if(page.equals("liste")) {
			List<Enseignant> enseignants = enseignantdao.lister();
			request.setAttribute("liste_ens", enseignants);
			request.getRequestDispatcher("WEB-INF/enseignant/ajout.jsp").forward(request, response);
		}if(page.equals("connexion")) {
			request.getRequestDispatcher("WEB-INF/enseignant/enseignant.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("WEB-INF/enseignant/acces.jsp").forward(request, response);
		}
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
		ens.setAdresse(telephone);
		
		enseignantdao.add(ens);
		response.sendRedirect("Enseignant?page=connexion");
	}

}

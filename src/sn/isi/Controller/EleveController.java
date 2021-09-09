package sn.isi.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.isi.dao.EleveImpl;
import sn.isi.dao.IEleve;
import sn.isi.dao.IEtablissement;
import sn.isi.dao.IExamen;
import sn.isi.entities.Eleve;
import sn.isi.entities.Etablissement;
import sn.isi.entities.Examen;

/**
 * Servlet implementation class EleveController
 */
@WebServlet("/Eleve")
public class EleveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private IEleve elevedao;
	private IEtablissement etablissementdao;
	private IExamen examendao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EleveController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		elevedao = new EleveImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		if(page.equals("ajouter")) {
			List<Eleve> eleves = elevedao.lister();
			request.setAttribute("liste_elev", eleves);
			List<Etablissement> etablissements = etablissementdao.lister();
			request.setAttribute("liste_etab", etablissements);
			List<Examen> examens = examendao.lister();
			request.setAttribute("liste_exam", examens);
			request.getRequestDispatcher("WEB-INF/eleve/liste.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("WEB-INF/eleve/ajout.jsp").forward(request, response);
		}
	}
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String date_naiss = request.getParameter("date_naiss");
		String adresse = request.getParameter("adresse");
		String telephone = request.getParameter("telephone");
		
		Eleve elev = new Eleve();
		elev.setNom(nom);
		elev.setPrenom(prenom);
		elev.setEmail(email);
		elev.setPassword(password);
		elev.setDate_naiss(date_naiss);
		elev.setAdresse(adresse);
		elev.setTelephone(telephone);
		
		elevedao.add(elev);
		response.sendRedirect("Eleve?page=ajout");
	}

}

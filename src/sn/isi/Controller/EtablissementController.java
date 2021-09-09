package sn.isi.Controller;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.isi.dao.IEtablissement;
import sn.isi.entities.Etablissement;

/**
 * Servlet implementation class EtablissementController
 */
@WebServlet("/Etablissement")
public class EtablissementController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private IEtablissement etablissementdao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EtablissementController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		if(page.equals("liste")) {
			List<Etablissement> etabli = etablissementdao.lister();
			request.setAttribute("liste_etab", etabli);
			request.getRequestDispatcher("WEB-INF/etablissement/liste.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("WEB-INF/etablissement/ajout.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		{
		String code = request.getParameter("code");
		String nomEtab = request.getParameter("nomEtab");
		String ville = request.getParameter("ville");
		String adresse = request.getParameter("adresse");
		
		Etablissement etab = new Etablissement();
		etab.setCode(code);
		etab.setNomEtab(nomEtab);
		etab.setVille(ville);
		etab.setAdresse(adresse);
		
		etablissementdao.add(etab);
		response.sendRedirect("Etablissement?page=ajout");
		}
		
	}

}

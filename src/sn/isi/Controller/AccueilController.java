package sn.isi.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.isi.dao.IUtilisateur;
import sn.isi.dao.UtilisateurImpl;
import sn.isi.entities.Utilisateur;

/**
 * Servlet implementation class AccueilController
 */
@WebServlet("/Accueil")
public class AccueilController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IUtilisateur utilisateurdao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccueilController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		utilisateurdao = new UtilisateurImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("usersession") == null)
		{
			response.sendRedirect("Login");
		}else
		{
			List<Utilisateur> uti = utilisateurdao.lister();
			request.setAttribute("Liste_users", uti);
			request.getRequestDispatcher("accueil.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

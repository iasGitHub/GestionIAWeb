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

import sn.isi.dao.IUtilisateur;
import sn.isi.entities.Utilisateur;

/**
 * Servlet implementation class UtilisateurController
 */
@WebServlet("/Utilisateur")
public class UtilisateurController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	@EJB
	private IUtilisateur utilisateurdao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UtilisateurController() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("usersession") == null)
		{
			response.sendRedirect("Login");
		}else
		{
			String page = request.getParameter("page").toString();
			if(page.equals("liste")) {
				List<Utilisateur> users = utilisateurdao.lister();
				request.setAttribute("list_users", users);
		 		request.getRequestDispatcher("WEB-INF/users/liste.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("WEB-INF/users/profil.jsp").forward(request, response);
			}
		}
	}  

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom = request.getParameter("nom").toString();
		String prenom = request.getParameter("prenom").toString();
		String email = request.getParameter("email").toString();
		String password = request.getParameter("password").toString();
		int telephone = Integer.parseInt(request.getParameter("telephone").toString());
		String profil = request.getParameter("profil").toString();
		
		Utilisateur uti = new Utilisateur();
		uti.setNom(nom);
		uti.setPrenom(prenom);
		uti.setEmail(email);
		uti.setPassword(password);
		uti.setTelephone(telephone);
		uti.setProfil(profil);
		
		utilisateurdao.add(uti);
		doGet(request, response);
		response.sendRedirect("Utilisateur?page=liste");
	}

}

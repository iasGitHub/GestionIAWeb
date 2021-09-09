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
import sn.isi.dao.UtilisateurImpl;
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
    
    public void init(ServletConfig config) throws ServletException {
    	
	}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		{
			String page = request.getParameter("page").toString();
			if(page.equals("liste")) {
				List<Utilisateur> users = utilisateurdao.lister();
				request.setAttribute("liste_uti", users);
		 		request.getRequestDispatcher("WEB-INF/users/liste.jsp").forward(request, response);
			}else if(page.equals("supprimer"))
			{
				int id = Integer.parseInt(request.getParameter("id"));
				utilisateurdao.delete(id);
				request.getRequestDispatcher("WEB-INF/users/liste.jsp").forward(request, response);
			}else if(page.equals("editer"))
			{
				int id = Integer.parseInt(request.getParameter("id"));
				request.setAttribute("users", utilisateurdao.get(id));
				request.getRequestDispatcher("WEB-INF/users/editer.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("WEB-INF/users/liste.jsp").forward(request, response);
			}
		}
	}  

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String page = request.getParameter("page").toString();
			if(page.equals("ajouter"))
			{
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				String telephone = request.getParameter("telephone");
				String profil = request.getParameter("profil");
				
				Utilisateur uti = new Utilisateur();
				uti.setNom(nom);
				uti.setPrenom(prenom);
				uti.setEmail(email);
				uti.setPassword(password);
				uti.setTelephone(telephone);
				uti.setProfil(profil);
				
				utilisateurdao.add(uti);
				response.sendRedirect("Utilisateur?page=liste");
			}
			if(page.equals("modifier"))
			{
				
				String nom = request.getParameter("nom");
				String prenom = request.getParameter("prenom");
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				String telephone = request.getParameter("telephone");
				String profil = request.getParameter("profil");
				int id = Integer.parseInt(request.getParameter("id"));
				Utilisateur uti = utilisateurdao.get(id);
				uti.setNom(nom);
				uti.setPrenom(prenom);
				uti.setEmail(email);
				uti.setPassword(password);
				uti.setTelephone(telephone);
				uti.setProfil(profil);
				utilisateurdao.update(uti);
				response.sendRedirect("Utilisateur?page=liste");
			}
			
			
		
	}

}

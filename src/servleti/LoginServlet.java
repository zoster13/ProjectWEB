package servleti;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Korisnici;
import beans.Korisnik;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		//svi korisnici
		Korisnici korisnici = (Korisnici) request.getSession().getServletContext().getAttribute("korisnici");
		
		String username = request.getParameter("korisnickoIme");
		String pass = request.getParameter("sifra");
		
		if(korisnici.getKorisnici().containsKey(username))
		{
			Korisnik korisnik = korisnici.getKorisnici().get(username);
		
			if(pass.equals(korisnik.getSifra()))
			{
				//Admin
				if(korisnik.getKorisnickoIme().equals("admin") && korisnik.getSifra().equals("admin"))
				{
					RequestDispatcher disp = request.getRequestDispatcher("admin.jsp");
					disp.forward(request, response);
				}
				else
				{
					//Kupac
					RequestDispatcher disp = request.getRequestDispatcher("webshop.jsp");
					disp.forward(request, response);	
				}
				
				korisnik.setUlogovan(true);
			}
			else
			{
				//Pogresna sifra
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Pogresna sifra');");
				out.println("location='index.jsp';");
				out.println("</script>");	
			}
		}
		else
		{
			//Pogresno korisnicko ime
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Pogresno korisnicko ime');");
			out.println("location='index.jsp';");
			out.println("</script>");	
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

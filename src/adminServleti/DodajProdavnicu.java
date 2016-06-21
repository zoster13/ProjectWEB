package adminServleti;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Prodavnica;
import kolekcije.Prodavnice;

/**
 * Servlet implementation class DodajProdavnicu
 */
public class DodajProdavnicu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DodajProdavnicu() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init(ServletConfig config)
    {
    	config.getServletContext().setAttribute("prodavnice", new Prodavnice());
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		Prodavnice prodavnice = (Prodavnice) request.getSession().getServletContext().getAttribute("prodavnice");
		
		String sifra = request.getParameter("sifra");
		String naziv = request.getParameter("naziv");
		String adresa = request.getParameter("adresa");
		String drzava = request.getParameter("drzava");
		String telefon = request.getParameter("telefon");
		String email = request.getParameter("email");
		
		if(prodavnice.getProdavnice().containsKey(sifra))
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Prodavnica sa datom sifrom vec postoji!');");
			out.println("location='dodajProdavnicu.jsp';");
			out.println("</script>");
		}
		else
		{
			Prodavnica prodavnica = new Prodavnica();
			prodavnica.setSifra(sifra);
			prodavnica.setNaziv(naziv);
			prodavnica.setAdresa(adresa);
			prodavnica.setTelefon(telefon);
			prodavnica.setEmail(email);
			prodavnica.setDrzava(drzava);
			
			prodavnice.getProdavnice().put(sifra, prodavnica);
		
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Prodavnica je dodata');");
			out.println("location='admin.jsp';");
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

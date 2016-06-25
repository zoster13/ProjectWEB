package adminServleti;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Xml.SerializationUtil;
import beans.Prodavnica;
import kolekcije.Korisnici;
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
		String prodavac = request.getParameter("prodavac");
		
		//Jedinstvena sifra
		if(prodavnice.getProdavnice().containsKey(sifra))
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Prodavnica sa datom sifrom vec postoji!');");
			out.println("location='dodajProdavnicu.jsp';");
			out.println("</script>");
		}
		else
		{
			//Jedinstven naziv
			boolean unique = true;
			for(Prodavnica prod : prodavnice.getProdavnice().values())
			{
				if(prod.getNaziv().equals(naziv))
				{
					unique = false;
					break;
				}
			}
			
			if(unique)
			{
				Prodavnica prodavnica = new Prodavnica();
				prodavnica.setSifra(sifra);
				prodavnica.setNaziv(naziv);
				prodavnica.setAdresa(adresa);
				prodavnica.setTelefon(telefon);
				prodavnica.setEmail(email);
				prodavnica.setDrzava(drzava);
				prodavnica.setOdgovorniProdavac(prodavac);
				
				prodavnice.getProdavnice().put(sifra, prodavnica);
			
				//Serijalizacija - nakon svakog dodavanja novog proizvoda
				String fileName = "C:\\Users\\Rade\\Documents\\GitHub\\ProjectWEB\\serijalizacija\\prodavnice.xml";
				SerializationUtil.serialize(prodavnice, fileName);
				
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Prodavnica je dodata');");
				out.println("location='admin.jsp';");
				out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Prodavnica sa datim nazivom vec postoji!');");
				out.println("location='dodajProdavnicu.jsp';");
				out.println("</script>");
			}
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

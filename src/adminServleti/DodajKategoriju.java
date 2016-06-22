package adminServleti;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Xml.SerializationUtil;
import beans.KategorijaProizvoda;
import kolekcije.KategorijeProizvoda;

/**
 * Servlet implementation class DodajKategoriju
 */
public class DodajKategoriju extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DodajKategoriju() {
        super();
        // TODO Auto-generated constructor stub
    }

//    public void init(ServletConfig config)
//    {
//    	config.getServletContext().setAttribute("kategorijeProizvoda", new KategorijeProizvoda());
//    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		KategorijeProizvoda kategorije = (KategorijeProizvoda) request.getSession().getServletContext().getAttribute("kategorije");
		
		String naziv = request.getParameter("nazivKategorije");
		String opis = request.getParameter("opisKategorije");
		String podkategorija = request.getParameter("podkategorija");
		
		if(kategorije.getKategorijeProizvoda().containsKey(naziv))
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Kategorija sa datim nazivom vec postoji');");
			out.println("location='dodajKategoriju.jsp';");
			out.println("</script>");
		}
		else
		{
			KategorijaProizvoda kategorija = new KategorijaProizvoda();
			kategorija.setNaziv(naziv);
			kategorija.setOpis(opis);
			kategorija.setPodkategorija(podkategorija);
		
			kategorije.getKategorijeProizvoda().put(naziv, kategorija);
			
			//Serijalizacija - nakon svakog dodavanja novog proizvoda
			String fileName = "C:\\Users\\Rade\\Documents\\GitHub\\ProjectWEB\\serijalizacija\\kategorije.xml";
			SerializationUtil.serialize(kategorije, fileName);
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Kategorija je dodata');");
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

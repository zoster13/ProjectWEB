package adminServleti;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Xml.SerializationUtil;
import beans.Dostavljac;
import kolekcije.Dostavljaci;

/**
 * Servlet implementation class DodajDostavljaca
 */
public class DodajDostavljaca extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DodajDostavljaca() {
        super();
        // TODO Auto-generated constructor stub
    }
    
//    public void init(ServletConfig config)
//    {
//    	config.getServletContext().setAttribute("dostavljaci", new Dostavljaci());
//    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		Dostavljaci dostavljaci = (Dostavljaci) request.getSession().getServletContext().getAttribute("dostavljaci");
	
		String sifra = request.getParameter("sifraDostavljaca");
		String naziv = request.getParameter("nazivDostavljaca");
		String opis = request.getParameter("opisDostavljaca");
		String drzave = request.getParameter("drzave");
		String tarife = request.getParameter("tarifeDostavljaca");
		
		if(dostavljaci.getDostavljaci().containsKey(sifra))
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Dostavljac za datom sifrom vec postoji');");
			out.println("location='dodajDostavljaca.jsp';");
			out.println("</script>");
		}
		else
		{
			Dostavljac dostavljac = new Dostavljac();
			dostavljac.setSifra(sifra);
			dostavljac.setNaziv(naziv);
			dostavljac.setOpis(opis);
			dostavljac.setDrzavePoslovanja(drzave);
			dostavljac.setCijenaPrenosa(tarife);
			
			dostavljaci.getDostavljaci().put(sifra, dostavljac);
			
			//Serijalizacija - nakon svakog dodavanja novog proizvoda
			String fileName = "C:\\Users\\Rade\\Documents\\GitHub\\ProjectWEB\\serijalizacija\\dostavljaci.xml";
			SerializationUtil.serialize(dostavljaci, fileName);
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Dostavljac je dodat');");
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

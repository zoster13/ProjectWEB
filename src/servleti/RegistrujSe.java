package servleti;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Xml.SerializationUtil;
import kolekcije.Korisnici;
import beans.Korisnik;

/**
 * Servlet implementation class RegistrujSe
 */
public class RegistrujSe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrujSe() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init(ServletConfig config) throws ServletException
    {
    	//Kacenje objekta korisnici na aplikaciju
    	//config.getServletContext().setAttribute("korisnici", new Korisnici());
    	
    	//Dodaj admina
    	Korisnik admin = new Korisnik();
    	admin.setKorisnickoIme("admin");
    	admin.setSifra("admin");
    	admin.setIme("Radislav");
    	admin.setPrezime("Zekanovic");
    	admin.setUloga("Admin");
    	admin.setTelefon("0641122494");
    	admin.setEmail("rade.zekanovic@gmail.com");
    	admin.setAdresa("Dr Sime Milosevica, Novi Sad");
    	admin.setDrzava("Srbija");
    	admin.setUlogovan(false);
    	
    	Korisnici korisnici = (Korisnici) config.getServletContext().getAttribute("korisnici");
    	
    	//admin ce biti dodat samo pri prvom pokretanju
    	if(!korisnici.getKorisnici().containsKey(admin.getKorisnickoIme()))
    	{
    		korisnici.getKorisnici().put(admin.getKorisnickoIme(), admin);
    	}
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		Korisnici koriscnici = (Korisnici) request.getSession().getServletContext().getAttribute("korisnici");
		String fileName = "C:\\Users\\Rade\\Documents\\GitHub\\ProjectWEB\\serijalizacija\\korisnici.xml";
		
		String username = request.getParameter("korisnickoIme");
		String pass = request.getParameter("sifra");
		String ime = request.getParameter("ime");
		String prezime = request.getParameter("prezime");
		String uloga = request.getParameter("uloga");
		String email = request.getParameter("email");
		String adresa = request.getParameter("adresa");
		String drzava = request.getParameter("drzava");
		String telefon = request.getParameter("telefon");
		
		if(koriscnici.getKorisnici().containsKey(username))
		{
			//Postoji korisnik sa datim korisnickim imenom
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Korisncko ime je zauzeto');");
			out.println("location='registruj.jsp';");
			out.println("</script>");	
		}
		else
		{
			//Novi korisnik
			Korisnik noviKorisnik = new Korisnik();
			noviKorisnik.setKorisnickoIme(username);
			noviKorisnik.setSifra(pass);
			noviKorisnik.setIme(ime);
			noviKorisnik.setPrezime(prezime);
			noviKorisnik.setUloga(uloga);
			noviKorisnik.setTelefon(telefon);
			noviKorisnik.setEmail(email);
			noviKorisnik.setAdresa(adresa);
			noviKorisnik.setDrzava(drzava);
			noviKorisnik.setUlogovan(false);
			
			//Registruj novog korisnika
			koriscnici.getKorisnici().put(username, noviKorisnik);
			
			//Serijalizacija - prilikom dodavanja svakog novog korisnika
			SerializationUtil.serialize(koriscnici, fileName);
		
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Uspjesno ste se registrovali');");
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

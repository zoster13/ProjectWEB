package servleti;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Xml.SerializationUtil;
import beans.Korisnik;
import beans.Korisnik.Uloga;
import kolekcije.Dostavljaci;
import kolekcije.KategorijeProizvoda;
import kolekcije.Korisnici;
import kolekcije.Prodavnice;
import kolekcije.Proizvodi;

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

		//---------------------------Deserijalizacija---------------------------
		String fileNameProdavnice = "C:\\Users\\Rade\\Documents\\GitHub\\ProjectWEB\\serijalizacija\\prodavnice.xml";
		String fileNameDostavljaci = "C:\\Users\\Rade\\Documents\\GitHub\\ProjectWEB\\serijalizacija\\dostavljaci.xml";
		String fileNameProizvodi = "C:\\Users\\Rade\\Documents\\GitHub\\ProjectWEB\\serijalizacija\\proizvodi.xml";
		String fileNameKategorije = "C:\\Users\\Rade\\Documents\\GitHub\\ProjectWEB\\serijalizacija\\kategorije.xml";
		String fileNameKorisnici = "C:\\Users\\Rade\\Documents\\GitHub\\ProjectWEB\\serijalizacija\\korisnici.xml";
		
		Proizvodi proizvodi = (Proizvodi) request.getSession().getServletContext().getAttribute("proizvodi");
		KategorijeProizvoda kategorije = (KategorijeProizvoda) request.getSession().getServletContext().getAttribute("kategorije");
		Prodavnice prodavnice = (Prodavnice) request.getSession().getServletContext().getAttribute("prodavnice");
		Dostavljaci dostavljaci = (Dostavljaci) request.getSession().getServletContext().getAttribute("dostavljaci");
		Korisnici korisnici = (Korisnici) request.getSession().getServletContext().getAttribute("korisnici");
		
		try {
			proizvodi = (Proizvodi) SerializationUtil.deserialize(fileNameProizvodi);
			kategorije = (KategorijeProizvoda) SerializationUtil.deserialize(fileNameKategorije);
			prodavnice = (Prodavnice) SerializationUtil.deserialize(fileNameProdavnice);
			dostavljaci = (Dostavljaci) SerializationUtil.deserialize(fileNameDostavljaci);
			korisnici = (Korisnici) SerializationUtil.deserialize(fileNameKorisnici);
			
			request.getSession().getServletContext().setAttribute("proizvodi", proizvodi);
			request.getSession().getServletContext().setAttribute("kategorije", kategorije);
			request.getSession().getServletContext().setAttribute("prodavnice", prodavnice);
			request.getSession().getServletContext().setAttribute("dostavljaci", dostavljaci);
			request.getSession().getServletContext().setAttribute("korisnici", korisnici);
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		//-------------------------------------------------------------------------------------//
		
		String username = request.getParameter("korisnickoIme");
		String pass = request.getParameter("sifra");
		
		//provjera username-a
		if(korisnici.getKorisnici().containsKey(username))
		{
			Korisnik korisnik = korisnici.getKorisnici().get(username);
		
			//provjera sifre
			if(pass.equals(korisnik.getSifra()))
			{
				//u zavisnosti od uloge, ide se na odgovarajucu stranu
				if(korisnik.getUloga().equals(Uloga.Administrator))
				{
					//Admin
					korisnik.setUlogovan(true);
					request.getSession().setAttribute("korisnik", korisnik);
					
					RequestDispatcher disp = request.getRequestDispatcher("admin.jsp");
					disp.forward(request, response);
				}
				else if(korisnik.getUloga().equals(Uloga.Kupac))
				{
					//Kupac - jedino kupac moze da kupuje proizvode
					korisnik.setUlogovan(true);
					request.getSession().setAttribute("korisnik", korisnik);
					
					RequestDispatcher disp = request.getRequestDispatcher("webshop.jsp");
					disp.forward(request, response);	
				}
				else if(korisnik.getUloga().equals(Uloga.Prodavac))
				{
					//Prodavac
					korisnik.setUlogovan(true);
					request.getSession().setAttribute("korisnik", korisnik);
					
					RequestDispatcher disp = request.getRequestDispatcher("prodavac.jsp");
					disp.forward(request, response);	
				}
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

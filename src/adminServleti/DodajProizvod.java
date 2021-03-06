package adminServleti;

import java.awt.Point;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Xml.SerializationUtil;
import beans.Korisnik;
import beans.Proizvod;
import beans.Korisnik.Uloga;
import kolekcije.Proizvodi;

/**
 * Servlet implementation class DodajProizvod
 */
public class DodajProizvod extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DodajProizvod() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		
		Proizvodi proizvodi = (Proizvodi) request.getSession().getServletContext().getAttribute("proizvodi");
		
		String sifra = request.getParameter("sifra");
		String naziv = request.getParameter("naziv");
		String boja = request.getParameter("boja");
		String dimenzije = request.getParameter("dimenzije");
		String zemlja = request.getParameter("zemlja");
		String proizvodjac = request.getParameter("proizvodjac");
		String kategorija = request.getParameter("kategorija");
		String slika = request.getParameter("slika");
		String video = request.getParameter("video");
		String prodavnica = request.getParameter("prodavnica");
		int kolicina = -1;
		double cijena = -1;
		double tezina = -1;
		
		try
		{
			kolicina = Integer.parseInt(request.getParameter("kolicina"));
			cijena = Double.parseDouble(request.getParameter("cijena"));
			tezina = Double.parseDouble(request.getParameter("tezina"));
			
			//Jedinstvena sifra
			if(proizvodi.getProizvodi().containsKey(sifra))
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Proizvod sa datom sifrom vec postoji!');");
				out.println("location='dodajProizvod.jsp';");
				out.println("</script>");
			}
			else
			{
				Proizvod proizvod = new Proizvod();
				proizvod.setSifra(sifra);
				proizvod.setNaziv(naziv);
				proizvod.setBoja(boja);
				//proizvod.setDimenzije(dimenzije);
				proizvod.setTezina(tezina);
				proizvod.setZemljaProizvodnje(zemlja);
				proizvod.setNazivProizvodjaca(proizvodjac);
				proizvod.setJedinicnaCijena(cijena);
				proizvod.setKategorijaProizvoda(kategorija);
				proizvod.setSlika(slika);
				proizvod.setVideoURL(video);
				proizvod.setKolicinaUMagacinu(kolicina);
				proizvod.setProdavnica(prodavnica);
				switch(dimenzije)
				{
					case "1":
						proizvod.setDimenzije(new Point(20,20));
						break;
					case "2":
						proizvod.setDimenzije(new Point(50,50));
						break;
					case "3":
						proizvod.setDimenzije(new Point(100,100));
						break;
					case "4":
						proizvod.setDimenzije(new Point(500,500));
						break;
					case "5":
						proizvod.setDimenzije(new Point(1000,1000));
						break;
				}
				
				proizvodi.getProizvodi().put(sifra, proizvod);
				
				//Serijalizacija - nakon svakog dodavanja novog proizvoda
				String fileName = "C:\\Users\\Rade\\Documents\\GitHub\\ProjectWEB\\serijalizacija\\proizvodi.xml";
				SerializationUtil.serialize(proizvodi, fileName);
				
				//Trenutno ulogovani korisnik
				Korisnik korisnik = (Korisnik) request.getSession().getAttribute("korisnik");
				
				if(korisnik.getUloga().equals(Uloga.Administrator))
				{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Proizvod je dodat!');");
					out.println("location='admin.jsp';");
					out.println("</script>");
				}else if(korisnik.getUloga().equals(Uloga.Prodavac))
				{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Proizvod je dodat!');");
					out.println("location='prodavac.jsp';");
					out.println("</script>");
					
				}
			}
		}
		catch(Exception ex)
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Pogresan unos kolicine, cijene ili tezine. Mora biti broj!');");
			out.println("location='dodajProizvod.jsp';");
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

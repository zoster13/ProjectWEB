package beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class Recenzija implements Serializable {

	private String sifra;		//jedinstvena
	private String korisnik;
	private Date datum;
	private int ocjenaProizvoda;
	private String komentar;
	private ArrayList<Integer> ocjenaRecenzije;
	
	//Geteri i seteri za sva polja
	public String getSifra() {
		return sifra;
	}
	public void setSifra(String sifra) {
		this.sifra = sifra;
	}
	public String getKorisnik() {
		return korisnik;
	}
	public void setKorisnik(String korisnik) {
		this.korisnik = korisnik;
	}
	public Date getDatum() {
		return datum;
	}
	public void setDatum(Date datum) {
		this.datum = datum;
	}
	public int getOcjena() {
		return ocjenaProizvoda;
	}
	public void setOcjena(int ocjena) {
		this.ocjenaProizvoda = ocjena;
	}
	public String getKomentar() {
		return komentar;
	}
	public void setKomentar(String komentar) {
		this.komentar = komentar;
	}
	public ArrayList<Integer> getOcjenaRecenzije() {
		return ocjenaRecenzije;
	}
	public void setOcjenaRecenzije(ArrayList<Integer> ocjenaRecenzije) {
		this.ocjenaRecenzije = ocjenaRecenzije;
	}
	
	public double getSrednjaOcjena()
	{
		if(ocjenaRecenzije == null)
		{
			ocjenaRecenzije = new ArrayList<Integer>();
			return 0;
		}
		int count = 0;
		int sum = 0;
		
		for(int i : ocjenaRecenzije)
		{
			sum += i;
			count++;
		}
		
		return (double)sum/count;
	}
}

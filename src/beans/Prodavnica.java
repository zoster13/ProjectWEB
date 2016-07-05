package beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;

public class Prodavnica implements Serializable {

	//Polja
	private String sifra;	//jedinstvena
	private String naziv;	//jedinstven
	private String adresa;
	private String drzava;
	private String telefon;
	private String email;
	private String odgovorniProdavac;
	private ArrayList<Integer> ocjeneProdanice = new ArrayList<Integer>();
	private HashSet<Recenzija> recenzije = new HashSet<Recenzija>();
	
	//Geteri i Seteri za sva polja
	public String getSifra() {
		return sifra;
	}
	public void setSifra(String sifra) {
		this.sifra = sifra;
	}
	public String getNaziv() {
		return naziv;
	}
	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}
	public String getAdresa() {
		return adresa;
	}
	public void setAdresa(String adresa) {
		this.adresa = adresa;
	}
	public String getDrzava() {
		return drzava;
	}
	public void setDrzava(String drzava) {
		this.drzava = drzava;
	}
	public String getTelefon() {
		return telefon;
	}
	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOdgovorniProdavac() {
		return odgovorniProdavac;
	}
	public void setOdgovorniProdavac(String odgovorniProdavac) {
		this.odgovorniProdavac = odgovorniProdavac;
	}
	public ArrayList<Integer> getOcjena() {
		return ocjeneProdanice;
	}
	public void setOcjena(ArrayList<Integer> ocjene) {
		this.ocjeneProdanice = ocjene;
	}
	public HashSet<Recenzija> getRecenzije() {
		return recenzije;
	}
	public void setRecenzije(HashSet<Recenzija> recenzije) {
		this.recenzije = recenzije;
	}
	
	public float getSrednjaOcjenaProdavnice()
	{
		if(ocjeneProdanice == null)
			return -1;
		
		int sum=0;
		int cnt = 0;
		
		for(int i : ocjeneProdanice)
		{
			sum += i;
			cnt++;
		}
		
		return (float)sum/cnt;
	}
	
}

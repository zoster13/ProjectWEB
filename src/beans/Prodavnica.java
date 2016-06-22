package beans;

import java.io.Serializable;
import java.util.HashSet;

public class Prodavnica implements Serializable {

	//Polja
	private String sifra;	//jedinstvena
	private String naziv;	//jedinstven
	private String adresa;
	private String drzava;
	private String telefon;
	private String email;
	private Korisnik odgovorniProdavac;
	private int ocjena;
	private HashSet<Recenzija> recenzije;
	
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
	public Korisnik getOdgovorniProdavac() {
		return odgovorniProdavac;
	}
	public void setOdgovorniProdavac(Korisnik odgovorniProdavac) {
		this.odgovorniProdavac = odgovorniProdavac;
	}
	public int getOcjena() {
		return ocjena;
	}
	public void setOcjena(int ocjena) {
		this.ocjena = ocjena;
	}
	public HashSet<Recenzija> getRecenzije() {
		return recenzije;
	}
	public void setRecenzije(HashSet<Recenzija> recenzije) {
		this.recenzije = recenzije;
	}
}

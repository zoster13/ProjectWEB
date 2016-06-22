package beans;

import java.io.Serializable;

public class Korisnik implements Serializable {

	public enum Uloga {Kupac, Prodavac, Administrator} 
	
	//Polja
	private String korisnickoIme;	//mora biti jedinstveno!
	private String sifra;
	private String ime;
	private String prezime;
	private Uloga uloga;
	private String telefon;
	private String email;
	private String adresa;
	private String drzava;
	private boolean ulogovan;
	
	//Geteri i Seteri za sva polja
	public String getKorisnickoIme() {
		return korisnickoIme;
	}
	public void setKorisnickoIme(String korisnickoIme) {
		this.korisnickoIme = korisnickoIme;
	}
	public String getSifra() {
		return sifra;
	}
	public void setSifra(String sifra) {
		this.sifra = sifra;
	}
	public String getIme() {
		return ime;
	}
	public void setIme(String ime) {
		this.ime = ime;
	}
	public String getPrezime() {
		return prezime;
	}
	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}
	public Uloga getUloga() {
		return uloga;
	}
	public void setUloga(String uloga) {
		if(uloga.equals("Prodavac"))
		{
			this.uloga = Uloga.Prodavac;		
		}
		else if(uloga.equals("Kupac"))
		{
			this.uloga = Uloga.Kupac;
		}
		else if(uloga.equals("Admin"))
		{
			this.uloga = Uloga.Administrator;
		}
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
	public boolean isUlogovan() {
		return ulogovan;
	}
	public void setUlogovan(boolean ulogovan) {
		this.ulogovan = ulogovan;
	}
}

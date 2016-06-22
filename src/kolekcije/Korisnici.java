package kolekcije;

import java.io.Serializable;
import java.util.HashMap;

import beans.Korisnik;

public class Korisnici implements Serializable {

	private HashMap<String, Korisnik> korisnici;

	public Korisnici()
	{
		korisnici = new HashMap<String, Korisnik>();
	}
	
	public HashMap<String, Korisnik> getKorisnici() {
		return korisnici;
	}

	public void setKorisnici(HashMap<String, Korisnik> korisnici) {
		this.korisnici = korisnici;
	}	
}

package beans;

import java.util.HashMap;

public class Korisnici {

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
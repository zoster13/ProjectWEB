package beans;

import java.util.HashSet;

//primjer: posta srbije, fedex, dhl...
public class Dostavljac {

	private String sifra;		//jedinstvena
	private String naziv;
	private String opis;
	private String drzavePoslovanja;
	private String cijenaPrenosa;	//zavisi od dimenzije i tezine proizvoda
	
	//Geteri i seteri za sva polja
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
	public String getOpis() {
		return opis;
	}
	public void setOpis(String opis) {
		this.opis = opis;
	}
	public String getDrzavePoslovanja() {
		return drzavePoslovanja;
	}
	public void setDrzavePoslovanja(String drzavePoslovanja) {
		this.drzavePoslovanja = drzavePoslovanja;
	}
	public String getCijenaPrenosa() {
		return cijenaPrenosa;
	}
	public void setCijenaPrenosa(String cijenaPrenosa) {
		this.cijenaPrenosa = cijenaPrenosa;
	}
}

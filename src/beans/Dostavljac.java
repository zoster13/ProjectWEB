package beans;

import java.io.Serializable;

//primjer: posta srbije, fedex, dhl...
public class Dostavljac implements Serializable {

	private String sifra;		//jedinstvena
	private String naziv;
	private String opis;
	private String[] drzavePoslovanja;
	private double cijenaPrenosa=0;	//zavisi od dimenzije i tezine proizvoda
	
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
	public String[] getDrzavePoslovanja() {
		return drzavePoslovanja;
	}
	public void setDrzavePoslovanja(String[] drzavePoslovanja) {
		this.drzavePoslovanja = drzavePoslovanja;
	}
	public double getCijenaPrenosa() {
		return cijenaPrenosa;
	}
	public void setCijenaPrenosa(double cijenaPrenosa) {
		this.cijenaPrenosa = cijenaPrenosa;
	}
	
	public double IzdracunajCijenuDostave(double tezina)
	{
		double dostava = 0;
		int porez = 45;
		
		if(tezina < 1)
			dostava = cijenaPrenosa;
		else if(tezina < 2)
			dostava = cijenaPrenosa*2;
		else if(tezina < 3)
			dostava = cijenaPrenosa*3;
		else if(tezina < 4)
			dostava = cijenaPrenosa*4;
		else
			dostava = cijenaPrenosa*5;;

		return dostava + porez;
	}
}

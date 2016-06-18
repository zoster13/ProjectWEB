package beans;

import java.util.HashSet;

//Opisuje kupovinu proizvoda iz prodavnice
public class Kupovina {

	private String sifra;		//jedinstvena
	private Korisnik kupac;
	private Prodavnica prodavnica;
	private HashSet<Proizvod> proizvodi;
	private Dostava dostava;
	private double ukupnaCijena;
	
	//Geteri i seteri
	public String getSifra() {
		return sifra;
	}
	public void setSifra(String sifra) {
		this.sifra = sifra;
	}
	public Korisnik getKupac() {
		return kupac;
	}
	public void setKupac(Korisnik kupac) {
		this.kupac = kupac;
	}
	public Prodavnica getProdavnica() {
		return prodavnica;
	}
	public void setProdavnica(Prodavnica prodavnica) {
		this.prodavnica = prodavnica;
	}
	public HashSet<Proizvod> getProizvodi() {
		return proizvodi;
	}
	public void setProizvodi(HashSet<Proizvod> proizvodi) {
		this.proizvodi = proizvodi;
	}
	public Dostava getDostava() {
		return dostava;
	}
	public void setDostava(Dostava dostava) {
		this.dostava = dostava;
	}
	public double getUkupnaCijena() {
		return ukupnaCijena;
	}
	public void setUkupnaCijena(double ukupnaCijena) {
		this.ukupnaCijena = ukupnaCijena;
	}
}

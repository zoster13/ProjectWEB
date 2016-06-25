package beans;

import java.util.HashSet;

import kolekcije.ProizvodKolicina;
import kolekcije.ProizvodKolicinaKolekcija;

//Opisuje kupovinu proizvoda iz prodavnice
public class Kupovina {

	private String sifra;		//jedinstvena
	private String kupac;
	private HashSet<String> prodavnice;
	private ProizvodKolicinaKolekcija proizvodi;
	private String dostavljac;
	private double ukupnaCijena;
	
	//Geteri i seteri
	public String getSifra() {
		return sifra;
	}
	public void setSifra(String sifra) {
		this.sifra = sifra;
	}
	public String getKupac() {
		return kupac;
	}
	public void setKupac(String kupac) {
		this.kupac = kupac;
	}
	public HashSet<String> getProdavnica() {
		return prodavnice;
	}
	public void setProdavnica(HashSet<String> prodavnice) {
		this.prodavnice = prodavnice;
	}
	public ProizvodKolicinaKolekcija getProizvodi() {
		return proizvodi;
	}
	public void setProizvodi(ProizvodKolicinaKolekcija proizvodi) {
		this.proizvodi = proizvodi;
	}
	public String getDostava() {
		return dostavljac;
	}
	public void setDostava(String dostavljac) {
		this.dostavljac = dostavljac;
	}
	public double getUkupnaCijena() {
		return ukupnaCijena;
	}
	public void setUkupnaCijena(double ukupnaCijena) {
		this.ukupnaCijena = ukupnaCijena;
	}
}

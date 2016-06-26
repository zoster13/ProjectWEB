package beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;

import kolekcije.ProizvodKolicinaKolekcija;

//Opisuje kupovinu proizvoda iz prodavnice
public class Kupovina implements Serializable {

	private String sifra;		//jedinstvena
	private String kupac;
	private ArrayList<String> prodavnice;
	private ProizvodKolicinaKolekcija proizvodi;
	private String dostavljac;
	private double cijenaDostave;
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
	public ArrayList<String> getProdavnica() {
		return prodavnice;
	}
	public void setProdavnica(ArrayList<String> prodavnice) {
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
	public double getCijenaDostave() {
		return cijenaDostave;
	}
	public void setCijenaDostave(double cijenaDostave) {
		this.cijenaDostave = cijenaDostave;
	}
}

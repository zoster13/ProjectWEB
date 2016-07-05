package beans;

import java.awt.Point;
import java.io.Serializable;
import java.util.HashSet;

import recenzije.ListaRecenzija;

public class Proizvod implements Serializable {

	private String sifra;		//jedinstvena
	private String naziv;
	private String boja;
	private Point dimenzije;
	private double tezina;
	private String zemljaProizvodnje;
	private String nazivProizvodjaca;
	private double jedinicnaCijena;
	private String kategorijaProizvoda;
	private String slika;
	private String videoURL;
	private double ocjena;
	private HashSet<Recenzija> recenzije;
	private int kolicinaUMagacinu;
	private Akcija akcija;
	
	private String prodavnica;
	
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
	public String getBoja() {
		return boja;
	}
	public void setBoja(String boja) {
		this.boja = boja;
	}
	public String getDimenzije() {
		
		if(dimenzije.x == 20)
			return "(20,20)";
		if(dimenzije.x == 50)
			return "(50,50)";
		if(dimenzije.x == 100)
			return "(100,100)";
		if(dimenzije.x == 500)
			return "(500,500)";
		if(dimenzije.x == 1000)
			return "(1000,1000)";
		
		return "";
	}
	public void setDimenzije(Point dimenzije) {
		this.dimenzije = dimenzije;
	}
	public double getTezina() {
		return tezina;
	}
	public void setTezina(double tezina) {
		this.tezina = tezina;
	}
	public String getZemljaProizvodnje() {
		return zemljaProizvodnje;
	}
	public void setZemljaProizvodnje(String zemljaProizvodnje) {
		this.zemljaProizvodnje = zemljaProizvodnje;
	}
	public String getNazivProizvodjaca() {
		return nazivProizvodjaca;
	}
	public void setNazivProizvodjaca(String nazivProizvodjaca) {
		this.nazivProizvodjaca = nazivProizvodjaca;
	}
	public double getJedinicnaCijena() {
		return jedinicnaCijena;
	}
	public void setJedinicnaCijena(double jedinicnaCijena) {
		this.jedinicnaCijena = jedinicnaCijena;
	}
	public String getKategorijaProizvoda() {
		return kategorijaProizvoda;
	}
	public void setKategorijaProizvoda(String kategorijaProizvoda) {
		this.kategorijaProizvoda = kategorijaProizvoda;
	}
	public String getSlika() {
		return slika;
	}
	public void setSlika(String slika) {
		this.slika = slika;
	}
	public String getVideoURL() {
		return videoURL;
	}
	public void setVideoURL(String videoURL) {
		this.videoURL = videoURL;
	}
	public double getOcjena() {
		return ocjena;
	}
	public void setOcjena(double ocjena) {
		this.ocjena = ocjena;
	}
	public HashSet<Recenzija> getRecenzije() {
		return recenzije;
	}
	public void setRecenzije(HashSet<Recenzija> hashSet) {
		this.recenzije = hashSet;
	}
	public int getKolicinaUMagacinu() {
		return kolicinaUMagacinu;
	}
	public void setKolicinaUMagacinu(int kolicinaUMagacinu) {
		this.kolicinaUMagacinu = kolicinaUMagacinu;
	}
	public String getProdavnica() {
		return prodavnica;
	}
	public void setProdavnica(String prodavnica) {
		this.prodavnica = prodavnica;
	}
	public Akcija getAkcija() {
		return akcija;
	}
	public void setAkcija(Akcija akcija) {
		this.akcija = akcija;
	}
	
	public double getSnizenaCijena()
	{
		if(akcija != null)
		{
			double snizenje = (double)jedinicnaCijena*akcija.snizenje;
			return jedinicnaCijena - snizenje;
		}
		
		return -1;
	}
	
}

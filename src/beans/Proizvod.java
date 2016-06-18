package beans;

import java.awt.Image;
import java.util.HashSet;

public class Proizvod {

	private String sifra;		//jedinstvena
	private String naziv;
	private String boja;
	private String dimenzije;
	private double tezina;
	private String zemljaProizvodnje;
	private String nazivProizvodjaca;
	private double jedinicnaCijena;
	private KategorijaProizvoda kategorijaProizvoda;
	private Image slika;
	private String videoURL;
	private int ocjena;
	private HashSet<Recenzija> recenzije;
	private int kolicinaUMagacinu;
	
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
		return dimenzije;
	}
	public void setDimenzije(String dimenzije) {
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
	public KategorijaProizvoda getKategorijaProizvoda() {
		return kategorijaProizvoda;
	}
	public void setKategorijaProizvoda(KategorijaProizvoda kategorijaProizvoda) {
		this.kategorijaProizvoda = kategorijaProizvoda;
	}
	public Image getSlika() {
		return slika;
	}
	public void setSlika(Image slika) {
		this.slika = slika;
	}
	public String getVideoURL() {
		return videoURL;
	}
	public void setVideoURL(String videoURL) {
		this.videoURL = videoURL;
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
	public int getKolicinaUMagacinu() {
		return kolicinaUMagacinu;
	}
	public void setKolicinaUMagacinu(int kolicinaUMagacinu) {
		this.kolicinaUMagacinu = kolicinaUMagacinu;
	}
}

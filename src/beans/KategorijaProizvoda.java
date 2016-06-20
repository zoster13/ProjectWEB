package beans;

//primjer: elektronika, odjeca, obuca...
public class KategorijaProizvoda {

	//Polja
	private String naziv;		//jedinstven
	private String opis;
	private String podkategorija;
	
	//Geteri i Seteri za sva polja
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
	public String getPodkategorija() {
		return podkategorija;
	}
	public void setPodkategorija(String podkategorija) {
		this.podkategorija = podkategorija;
	}
}

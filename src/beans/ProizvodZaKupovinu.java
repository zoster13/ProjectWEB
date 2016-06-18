package beans;

public class ProizvodZaKupovinu {

	private Proizvod proizvod;
	private int kolicina;
	private double porez;
	
	//Geteri i seteri za sva polja
	public Proizvod getProizvod() {
		return proizvod;
	}
	public void setProizvod(Proizvod proizvod) {
		this.proizvod = proizvod;
	}
	public int getKolicina() {
		return kolicina;
	}
	public void setKolicina(int kolicina) {
		this.kolicina = kolicina;
	}
	public double getPorez() {
		return porez;
	}
	public void setPorez(double porez) {
		this.porez = porez;
	}
}

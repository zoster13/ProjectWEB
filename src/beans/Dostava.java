package beans;

import java.util.Date;

public class Dostava {

	private Dostavljaci dostavljac;
	private Date trajanjePrenosa;
	private double cijenaPrenosa;
	
	//Geteri i seteri
	public Dostavljaci getDostavljac() {
		return dostavljac;
	}
	public void setDostavljac(Dostavljaci dostavljac) {
		this.dostavljac = dostavljac;
	}
	public Date getTrajanjePrenosa() {
		return trajanjePrenosa;
	}
	public void setTrajanjePrenosa(Date trajanjePrenosa) {
		this.trajanjePrenosa = trajanjePrenosa;
	}
	public double getCijenaPrenosa() {
		return cijenaPrenosa;
	}
	public void setCijenaPrenosa(double cijenaPrenosa) {
		this.cijenaPrenosa = cijenaPrenosa;
	}
}

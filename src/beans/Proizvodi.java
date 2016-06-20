package beans;

import java.util.HashSet;

public class Proizvodi {

	HashSet<Proizvod> proizvodi;
	
	public Proizvodi()
	{
		proizvodi = new HashSet<Proizvod>();
	}
	
	//Geteri i Seteri
	public HashSet<Proizvod> getProizvodi()
	{
		return proizvodi;
	}
	
	public void setProizvoid(HashSet<Proizvod> proizvodi)
	{
		this.proizvodi = proizvodi;
	}
}

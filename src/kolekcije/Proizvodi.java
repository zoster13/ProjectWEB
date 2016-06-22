package kolekcije;

import java.io.Serializable;
import java.util.HashMap;

import beans.Proizvod;

public class Proizvodi implements Serializable {

	HashMap<String, Proizvod> proizvodi;
	
	public Proizvodi()
	{
		proizvodi = new HashMap<String, Proizvod>();
	}
	
	//Geteri i Seteri
	public HashMap<String, Proizvod> getProizvodi()
	{
		return proizvodi;
	}
	
	public void setProizvoid(HashMap<String, Proizvod> proizvodi)
	{
		this.proizvodi = proizvodi;
	}
}

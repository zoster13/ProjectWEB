package kolekcije;

import java.util.HashMap;

import beans.Prodavnica;

public class Prodavnice {

	private HashMap<String, Prodavnica> prodavnice;
	
	public Prodavnice()
	{
		prodavnice = new HashMap<String, Prodavnica>();
	}
	
	public HashMap<String, Prodavnica> getProdavnice()
	{
		return this.prodavnice;
	}
	
	public void setProdavnice(HashMap<String, Prodavnica> prodavnice)
	{
		this.prodavnice = prodavnice;
	}
}

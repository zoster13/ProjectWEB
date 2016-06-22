package kolekcije;

import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;

import beans.KategorijaProizvoda;

public class KategorijeProizvoda implements Serializable {

	HashMap<String, KategorijaProizvoda> kategorije;
	
	public KategorijeProizvoda()
	{
		kategorije = new HashMap<String, KategorijaProizvoda>();
	}
	
	public HashMap<String, KategorijaProizvoda> getKategorijeProizvoda()
	{
		return this.kategorije;
	}
	
	public void setKategorijeProizvoda(HashMap<String, KategorijaProizvoda> kategorije)
	{
		this.kategorije = kategorije;
	}
	
}

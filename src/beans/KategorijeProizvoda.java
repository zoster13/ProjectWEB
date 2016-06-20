package beans;

import java.util.HashSet;

public class KategorijeProizvoda {

	HashSet<KategorijaProizvoda> kategorije;
	
	public KategorijeProizvoda()
	{
		kategorije = new HashSet<KategorijaProizvoda>();
	}
	
	public HashSet<KategorijaProizvoda> getKategorijeProizvoda()
	{
		return this.kategorije;
	}
	
	public void setKategorijeProizvoda(HashSet<KategorijaProizvoda> kategorije)
	{
		this.kategorije = kategorije;
	}
	
}

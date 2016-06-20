package beans;

import java.util.HashMap;

public class Dostavljaci {

	private HashMap<String, Dostavljac> dostavljaci;
	
	public Dostavljaci()
	{
		dostavljaci = new HashMap<String, Dostavljac>();
	}
	
	public HashMap<String, Dostavljac>  getDostavljaci()
	{
		return this.dostavljaci;
	}
	
	public void setDostavljaci(HashMap<String, Dostavljac>  dostavljaci)
	{
		this.dostavljaci = dostavljaci;
	}
}

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dodavanje prodavnice</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">
</head>

<script type="text/javascript">
	function Registracija()
	{	
		var sifra = document.forms["forma"].sifra.value;
		var naziv = document.forms["forma"].naziv.value;
		var adresa = document.forms["forma"].adresa.value;
		var drzava = document.forms["forma"].drzava.value;
		var telefon = document.forms["forma"].telefon.value;
		var email = document.forms["forma"].email.value;
		
		if(sifra == null || sifra=="")
		{
			alert ("Unesite sifru prodavnice.");	
			return false;
		}
		else if(naziv == null || naziv=="")
		{
			alert ("Unesite naziv prodavnice.");
			return false;
		}
		else if(adresa == null || adresa=="")
		{
			alert ("Unesite adresu prodavnice.");
			return false;
		}
		else if(drzava == null || drzava=="")
		{
			alert ("Unesite drzavu prodavnice.");
			return false;
		}
		else if(telefon == null || telefon=="")
		{
			alert ("Unesite telefon.");
			return false;
		}
		else if(email == null || email=="")
		{
			alert ("Unesite email.");
			return false;
		}
		
		return true;
	}
</script>



<body>
<script src="bootstrap/js/bootstrap.js"></script>
 	
<h3> Dodavanje nove prodavnice </h3>

<form action="DodajProdavnicu" onsubmit="return Validacija()" name="forma" method="post" class="well">
	<table>
		<tr>
			<td align="right"> Sifra: </td>
			<td> <input type="text" name="sifra"> </td>
		</tr>
		<tr>
			<td align="right"> Naziv: </td>
			<td> <input type="text" name="naziv"> </td>
		</tr>
		<tr>
			<td align="right"> Adresa: </td>
			<td> <input type="text" name="adresa"> </td>
		</tr>
		<tr>
			<td align="right"> Drzava: </td>
			<td> <input type="text" name="drzava"> </td>
		</tr>
		<tr>
			<td align="right"> Telefon: </td>
			<td> <input type="text" name="telefon"> </td>
		</tr><tr>
			<td align="right"> E-mail: </td>
			<td> <input type="email" name="email"> </td>
		</tr>
		<tr>
			<td> &nbsp; </td>
			<td align="center"> 
				<input type="submit" value="Dodaj" class="btn btn-success"> 
				<a href="admin.jsp" class="btn btn-danger">Odustani</a>	
			</td>
		</tr>
		
	</table>
</form>
</body>
</html>
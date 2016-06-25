<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="korisnici" class="kolekcije.Korisnici" scope="application"/>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registracija korisnika</title>

 
<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">
 
<script type="text/javascript">
	function Registracija()
	{	
		var username = document.forms["formaRegistracija"].korisnickoIme.value;
		var sifra = document.forms["formaRegistracija"].sifra.value;
		var ime = document.forms["formaRegistracija"].ime.value;
		var prezime = document.forms["formaRegistracija"].prezime.value;
		var telefon = document.forms["formaRegistracija"].telefon.value;
		var email = document.forms["formaRegistracija"].email.value;
		var adresa = document.forms["formaRegistracija"].adresa.value;
		var drzava = document.forms["formaRegistracija"].drzava.value;
		var uloga = document.forms["formaRegistracija"].uloga.value;
		
		if(username == null || username=="")
		{
			alert ("Unesite korisnicko ime.");	
			return false;
		}
		else if(sifra == null || sifra=="")
		{
			alert ("Unesite sifru.");
			return false;
		}
		else if(ime == null || ime=="")
		{
			alert ("Unesite ime.");
			return false;
		}
		else if(prezime == null || prezime=="")
		{
			alert ("Unesite prezime.");
			return false;
		}
		else if(uloga == null || uloga=="")
		{
			alert ("Izaberite ulogu.");
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
		else if(adresa == null || adresa=="")
		{
			alert ("Unesite adresa.");
			return false;
		}
		else if(drzava == null || drzava=="")
		{
			alert ("Unesite drzavu.");
			return false;
		}
		
		return true;
	}
</script>

<style>
table {
    border: 1px solid lightgrey;
	position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    
    background-color: rgba(230, 230, 230, 0.7);
}

body{
	background-image: url("http://wallpaperslabs.com/uploads/images/c/h/e/cheap_wallpaper_online_store_1.jpg");	
	background-size: 100%;
}
</style>


</head>

<body>
	<script src="bootstrap/js/bootstrap.js"></script>
	
	<form action="RegistrujSe" onsubmit="return Registracija();" method="post" name="formaRegistracija">
		<table cellspacing=0 cellpadding=3 border=0>
			<tr>
				<td align=right>Korisnicko ime:</td>
				<td><input type="text" name="korisnickoIme"></td>
			</tr>
			<tr>
				<td align=right>Sifra:</td>
				<td><input type="password" name="sifra"></td>
			</tr>
			<tr>
				<td align=right>Ime:</td>
				<td><input type="text" name="ime"></td>
			</tr>
			<tr>
				<td align=right>Prezime:</td>
				<td><input type="text" name="prezime"></td>
			</tr> 
			<tr>
				<td align=right>Uloga:</td>
				<td>
				<select name="uloga">
				  <option value="Kupac">Kupac</option>
				  <option value="Prodavac">Prodavac</option>
				</select>
				</td>
			</tr>
			<tr>
				<td align=right>Telefon:</td>
				<td><input type="text" name="telefon"></td>
			</tr>
			<tr>
				<td align=right>E-mail:</td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td align=right>Adresa:</td>
				<td><input type="text" name="adresa"></td>
			</tr>
			<tr>
				<td align=right>Drzava:</td>
				<td><input type="text" name="drzava"></td>
			</tr>
			<tr>
				<td align=right>&nbsp;</td>
				<td>
					<input type="submit" value="Registruj se" class="btn btn-success">
					<a href="index.jsp" class="btn btn-danger">Odustani</a>
				</td>
			</tr>
			</table>
	</form>

</body>
</html>
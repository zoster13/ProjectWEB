<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="korisnici" class="kolekcije.Korisnici" scope="application" />
<%@page import="beans.Korisnik" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dodavanje prodavnice</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">
</head>

<style>
table {
    border: 1px solid lightgrey;
	position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    
    background-color: rgba(230, 230, 230, 0.3);
}

body{
	background-image: url("http://static1.squarespace.com/static/5431c376e4b010fc5fa309dd/t/56551d1de4b0f06765d5d2f2/1448418591090/banner-ecommerce-blue.jpg?format=1500w");	
	background-size: 100%;
}
</style>

<script type="text/javascript">
	function Validacija()
	{	
		var sifra = document.forms["forma"].sifra.value;
		var naziv = document.forms["forma"].naziv.value;
		var adresa = document.forms["forma"].adresa.value;
		var drzava = document.forms["forma"].drzava.value;
		var telefon = document.forms["forma"].telefon.value;
		var email = document.forms["forma"].email.value;
		var prodavac = document.forms["forma"].prodavac.value;
		
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
		else if(prodavac == null || prodavac=="")
		{
			alert ("Izaberite odgovornog prodavca.");
			return false;
		}
		
		return true;
	}
</script>



<body>
<script src="bootstrap/js/bootstrap.js"></script>

<form action="DodajProdavnicu" onsubmit="return Validacija()" name="forma" method="post">
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
			<td align="right"> Odgovorni prodavac: </td>
			<td> 
				<select name="prodavac">
					<% for(Korisnik kor : korisnici.getKorisnici().values()) {
						if(kor.getUloga().equals(Korisnik.Uloga.Prodavac)) {	
					%>
					<option value="<%= kor.getKorisnickoIme() %>"> <%= kor.getKorisnickoIme() %> </option>
					<% }} %>
				</select>
			 </td>
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
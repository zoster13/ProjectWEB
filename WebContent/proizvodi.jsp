<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="proizvodi" class="kolekcije.Proizvodi" scope="application"/>
<%@page import="beans.Proizvod" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dodavanje proizvoda</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

</head>
<body>
	<script src="bootstrap/js/bootstrap.js"></script>
	
Dodavanje proizvoda, samo admin moze pristupiti

		<table class="well">
			<tr>
				<th>Sifra</th>
				<th>Naziv</th>	
				<th>Boja</th>	
				<th>Dimenzije</th>	
				<th>Zemlja proizvodnje</th>	
				<th>Naziv proizvodjaca</th>	
				<th>Jedinicna cijena</th>	
				<th>Kategorija proizvoda</th>	
				<th>Slika</th>	
				<th>Video</th>	
				<th>Ocjena</th>	
				<th>Recenzije</th>	
				<th>Kolicina u magacinu</th>	
			</tr>
			
			<tr>
			<% for(Proizvod pr : proizvodi.getProizvodi()) { %>
				<td> <%= pr.getSifra() %>	
				<td> <%= pr.getNaziv() %>	
				<td> <%= pr.getDimenzije() %>	
				<td> <%= pr.getZemljaProizvodnje() %>	
				<td> <%= pr.getNazivProizvodjaca() %>	
				<td> <%= pr.getJedinicnaCijena() %>	
				<td> <%= pr.getKategorijaProizvoda() %>	
				<td> <%= pr.getSlika() %>	
				<td> <%= pr.getVideoURL() %>	
				<td> <%= pr.getOcjena() %>	
				<td> <%= pr.getRecenzije() %>	
				<td> <%= pr.getKolicinaUMagacinu() %>	
			<% } %>
			<tr>
			<tr>
			<tr>
				<td><a href="dodajProizvod.jsp"> Dodaj proizvod </a> </td>
			</tr>		
		</table>

</body>
</html>
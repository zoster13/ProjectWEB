<%@page import="beans.Korisnik.Uloga"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="prodavnice" class="kolekcije.Prodavnice" scope="application" />
<%@page import="beans.Prodavnica" %>

<jsp:useBean id="korisnik" class="beans.Korisnik" scope="session" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prikaz svih prodavnica</title>
<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

<style>
table,h1 {
    border: 1px solid lightgrey;
    background-color: rgba(230, 230, 230, 0.5);
}

body{
	background-image: url("http://static1.squarespace.com/static/5431c376e4b010fc5fa309dd/t/56551d1de4b0f06765d5d2f2/1448418591090/banner-ecommerce-blue.jpg?format=1500w");	
	background-size: 100%;
}
</style>

</head>
<body>
	<script src="bootstrap/js/bootstrap.js"></script>

	<table border=1px width=70%>
		<tr>
			<th> Sifra: </th>
			<th> Naziv: </th>
			<th> Adresa: </th>
			<th> Drzava: </th>
			<th> Telefon: </th>
			<th> Email: </th>
			<th> Odgovorni prodavac: </th>
			<th> Ocjena: </th>
			<th> Recenzije: </th>
			<% if(korisnik.getUloga().equals(Uloga.Administrator)) {%>
			<th> Obrisi: </th>
			<th> Modifikuj: </th>
			<% }else { %>
			<th> Modifikuj: </th>
			<%} %>
		</tr>
		
		<!-- ADMIN - moze i da brise i da modifikuje-->
		<% if(korisnik.getUloga().equals(Uloga.Administrator)) { %>
		<% for(Prodavnica prod : prodavnice.getProdavnice().values()) {%>
			<tr>
				<td> <%= prod.getSifra() %> </td>
				<td> <%= prod.getNaziv() %> </td>
				<td> <%= prod.getAdresa() %> </td>
				<td> <%= prod.getDrzava() %>
				<td> <%= prod.getTelefon() %> </td>
				<td> <%= prod.getEmail() %> </td>
				<td> <%= prod.getOdgovorniProdavac() %> </td>
				<td> <%= prod.getOcjena() %> </td>
				<td> <%= prod.getRecenzije() %> </td>
				<td>
					<form action="ObrisiProdavnicu">
						<input type="hidden" name="prodavnica" value="<%= prod.getSifra() %>">
						<input type="submit" value="Obrisi" class="btn btn-success">
					</form>
				</td>
				<td>
					<form action="ModifikujProdavnicu">
						<input type="hidden" name="sifra" value="<%= prod.getSifra() %>">
						<input type="submit" value="Modifikuj" class="btn btn-success">
					</form>
				</td>
			</tr>
		<% } %>
		
		<!-- Prodavac-moze samo da modifikuje(prikazuju se samo one prod za koje je odgovoran) -->
		<% } else if(korisnik.getUloga().equals(Uloga.Prodavac)) { %>
		<% for(Prodavnica prod : prodavnice.getProdavnice().values()) { %>
			<!-- Prikazi samo one prodavnice za koje je prodavac ovlascen -->
			<% if(prod.getOdgovorniProdavac().equals(korisnik.getKorisnickoIme())) { %>
			<tr>
				<td> <%= prod.getSifra() %> </td>
				<td> <%= prod.getNaziv() %> </td>
				<td> <%= prod.getAdresa() %> </td>
				<td> <%= prod.getDrzava() %>			
				<td> <%= prod.getTelefon() %> </td>
				<td> <%= prod.getEmail() %> </td>
				<td> <%= prod.getOdgovorniProdavac() %> </td>
				<td> <%= prod.getOcjena() %> </td>
				<td> <%= prod.getRecenzije() %> </td>
				<td>
					<!-- Prodavac moze samo da modifikuje -->
					<form action="ModifikujProdavnicu">
						<input type="hidden" name="sifra" value="<%= prod.getSifra() %>">
						<input type="submit" value="Modifikuj" class="btn btn-success">
					</form>
				</td>
			</tr>
			<% } %>
		<% } %>
		<% } %>
	</table>

	<% if(korisnik.getUloga().equals(Uloga.Administrator)) { %>
		<a href="admin.jsp" class="btn btn-danger"> Nazad </a>
	<% } else if(korisnik.getUloga().equals(Uloga.Prodavac)) {%>
		<a href="prodavac.jsp" class="btn btn-danger"> Nazad </a>
	<% } %>
</body>
</html>
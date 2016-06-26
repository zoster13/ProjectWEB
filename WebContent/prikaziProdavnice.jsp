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

</head>
<body>
	<script src="bootstrap/js/bootstrap.js"></script>

	<h2> Trenutne prodavnice: </h2>	

	<table border=1px width=100% class="well">
		<tr>
			<th> Sifra: </th>
			<th> Naziv: </th>
			<th> Adresa: </th>
			<th> Telefon: </th>
			<th> Email: </th>
			<th> Odgovorni prodavac: </th>
			<th> Ocjena: </th>
			<th> Recenzije: </th>
		</tr>
		
		<!-- ADMIN - moze i da brise i da modifikuje-->
		<% if(korisnik.getUloga().equals(Uloga.Administrator)) { %>
		<% for(Prodavnica prod : prodavnice.getProdavnice().values()) {%>
			<tr>
				<td> <%= prod.getSifra() %> </td>
				<td> <%= prod.getNaziv() %> </td>
				<td> <%= prod.getAdresa() %> </td>
				<td> <%= prod.getTelefon() %> </td>
				<td> <%= prod.getEmail() %> </td>
				<td> <%= prod.getOdgovorniProdavac() %> </td>
				<td> <%= prod.getOcjena() %> </td>
				<td> <%= prod.getRecenzije() %> </td>
				<td>
					<form action="ObrisiProdavnicu">
						<input type="hidden" name="prodavnica" value="<%= prod.getSifra() %>">
						<input type="submit" value="Obrisi">
					</form>
					<form action="ModifikujProdavnicu">
						<input type="hidden" name="sifra" value="<%= prod.getSifra() %>">
						<input type="submit" value="Modifikuj">
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
				<td> <%= prod.getTelefon() %> </td>
				<td> <%= prod.getEmail() %> </td>
				<td> <%= prod.getOdgovorniProdavac() %> </td>
				<td> <%= prod.getOcjena() %> </td>
				<td> <%= prod.getRecenzije() %> </td>
				<td>
					<!-- Prodavac moze samo da modifikuje -->
					<form action="ModifikujProdavnicu">
						<input type="hidden" name="sifra" value="<%= prod.getSifra() %>">
						<input type="submit" value="Modifikuj">
					</form>
				</td>
			</tr>
			<% } %>
		<% } %>
		<% } %>
	</table>

	<% if(korisnik.getUloga().equals(Uloga.Administrator)) { %>
		<a href="admin.jsp"> Nazad </a>
	<% } else if(korisnik.getUloga().equals(Uloga.Prodavac)) {%>
		<a href="prodavac.jsp"> Nazad </a>
	<% } %>
</body>
</html>
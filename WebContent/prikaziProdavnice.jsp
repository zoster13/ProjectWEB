<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="prodavnice" class="kolekcije.Prodavnice" scope="application" />
<%@page import="beans.Prodavnica" %>

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
		
		<% for(Prodavnica dost : prodavnice.getProdavnice().values()) {%>
			<tr>
				<td> <%= dost.getSifra() %> </td>
				<td> <%= dost.getNaziv() %> </td>
				<td> <%= dost.getAdresa() %> </td>
				<td> <%= dost.getTelefon() %> </td>
				<td> <%= dost.getEmail() %> </td>
				<td> <%= dost.getOdgovorniProdavac() %> </td>
				<td> <%= dost.getOcjena() %> </td>
				<td> <%= dost.getRecenzije() %> </td>
			</tr>
		<% } %>
	</table>

	<a href="admin.jsp"> Nazad </a>

</body>
</html>
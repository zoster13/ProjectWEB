<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="kategorijeProizvoda" class="kolekcije.KategorijeProizvoda" scope="application" />
<%@page import="beans.KategorijaProizvoda"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trenutne kategorije proizvoda</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

</head>
<body>
	<script src="bootstrap/js/bootstrap.js"></script>

	<h2> Trenutne kategorije proizvoda: </h2>	

	<table border=1px width=50% class="well">
		<tr>
			<th> Naziv: </th>
			<th> Opis: </th>
			<th> Podkategorija </th>
		</tr>
		
		<% for(KategorijaProizvoda kat : kategorijeProizvoda.getKategorijeProizvoda().values()) {%>
			<tr>
				<td> <%= kat.getNaziv() %>
				<td> <%= kat.getOpis() %>
				<td> <%= kat.getPodkategorija() %>
			</tr>
		<% } %>
	</table>

	<a href="admin.jsp"> Nazad </a>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="dostavljaci" class="kolekcije.Dostavljaci" scope="application" />
<%@page import="beans.Dostavljac" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trenutni dostavljaci</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

</head>
<body>
	<script src="bootstrap/js/bootstrap.js"></script>

	<h2> Trenutni dostavljaci: </h2>	

	<table border=1px width=50% class="well">
		<tr>
			<th> Sifra: </th>
			<th> Naziv: </th>
			<th> Opis: </th>
			<th> Drzave poslovanja: </th>
			<th> Tarife(cijene prenosa): </th>
			<th> &nbsp; </th>
		</tr>
		
		<% for(Dostavljac dost : dostavljaci.getDostavljaci().values()) {%>
			<tr>
				<td> <%= dost.getSifra() %> </td>
				<td> <%= dost.getNaziv() %> </td>
				<td> <%= dost.getOpis() %> </td>
				<td> <%= dost.getDrzavePoslovanja() %> </td>
				<td> <%= dost.getCijenaPrenosa() %> </td>
				<td>
					<form action="ObrisiDostavljaca">
						<input type="hidden" name="sifra" value="<%= dost.getSifra() %>">
						<input type="submit" value="Obrisi">
					</form>
				</td>
			</tr>
		<% } %>
	</table>

	<a href="admin.jsp"> Nazad </a>

</body>
</html>
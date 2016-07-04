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

<style>
table {
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
			<th> Opis: </th>
			<th> Drzave poslovanja: </th>
			<th> Tarife(cijene prenosa): </th>
			<th> Obrisi </th>
			<th> Modifikuj </th>
		</tr>
		
		<% for(Dostavljac dost : dostavljaci.getDostavljaci().values()) {%>
			<tr>
				<td> <%= dost.getSifra() %> </td>
				<td> <%= dost.getNaziv() %> </td>
				<td> <%= dost.getOpis() %> </td>
				<td> 
					<ul>
					<% for(String drzava : dost.getDrzavePoslovanja()) {%>
						<li> <%=drzava%> </li>
					<% } %>
					</ul>
				</td>
				<td> <%= dost.getCijenaPrenosa() %> </td>
				<td>
					<form action="ObrisiDostavljaca">
						<input type="hidden" name="sifra" value="<%= dost.getSifra() %>">
						<input type="submit" value="Obrisi" class="btn btn-success">
					</form>
				</td>
				<td>
					<form action="ModifikujDostavljaca">
						<input type="hidden" name="sifra" value="<%= dost.getSifra() %>">
						<input type="hidden" name="naziv" value="<%= dost.getNaziv() %>">
						<input type="hidden" name="opis" value="<%= dost.getOpis() %>">
						<input type="hidden" name="drzave" value="<%= dost.getDrzavePoslovanja() %>">
						<input type="hidden" name="cijena" value="<%= dost.getCijenaPrenosa() %>">
						<input type="submit" value="Modifikuj" class="btn btn-success">
					</form>
				</td>
			</tr>
		<% } %>
	</table>

	<a href="admin.jsp" class="btn btn-danger"> Nazad </a>

</body>
</html>
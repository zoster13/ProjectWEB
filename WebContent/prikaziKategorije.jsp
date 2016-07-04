<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="kategorije" class="kolekcije.KategorijeProizvoda" scope="application" />
<%@page import="beans.KategorijaProizvoda"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trenutne kategorije proizvoda</title>

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

	<table border=1px width=70% align="left">
		<tr>
			<th> Naziv: </th>
			<th> Opis: </th>
			<th> Podkategorija </th>
			<th> Brisanje </th>
			<th> Modifikacija </th>
		</tr>
		
		<% for(KategorijaProizvoda kat : kategorije.getKategorijeProizvoda().values()) {%>
			<tr>
				<td> <%= kat.getNaziv() %> </td>
				<td> <%= kat.getOpis() %> </td>
				<td> <%= kat.getPodkategorija() %></td>
				<td align="center"> 
					<form action="ObrisiKategoriju">
						<input type="hidden" name="kategorija" value="<%=kat.getNaziv()%>">
						<input type="submit" value="Obrisi" class="btn btn-success">
					</form>
				</td>
				<td align="center">	
					<form action="ModifikujKategoriju">
						<input type="hidden" name="naziv" value="<%= kat.getNaziv() %>">
						<input type="hidden" name="opis" value="<%= kat.getOpis() %>">
						<input type="hidden" name="podkategorija" value="<%= kat.getPodkategorija() %>">
						<input type="submit" value="Modifikuj" class="btn btn-success">
					</form>
				</td>	
			</tr>
		<% } %>
	</table>

	<a href="admin.jsp" class="btn btn-danger"> Nazad </a>

</body>
</html>
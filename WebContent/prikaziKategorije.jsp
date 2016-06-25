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

</head>
<body>
	<script src="bootstrap/js/bootstrap.js"></script>

	<h2> Trenutne kategorije proizvoda: </h2>	

	<table border=1px width=100% class="well">
		<tr>
			<th> Naziv: </th>
			<th> Opis: </th>
			<th> Podkategorija </th>
			<th> &nbsp; </th>
		</tr>
		
		<% for(KategorijaProizvoda kat : kategorije.getKategorijeProizvoda().values()) {%>
			<tr>
				<td> <%= kat.getNaziv() %>
				<td> <%= kat.getOpis() %>
				<td> <%= kat.getPodkategorija() %>
				<td> 
					<form action="ObrisiKategoriju">
						<input type="hidden" name="kategorija" value="<%=kat.getNaziv()%>">
						<input type="submit" value="Obrisi">
					</form>
					<form action="ModifikujKategoriju">
						<input type="hidden" name="naziv" value="<%= kat.getNaziv() %>">
						<input type="hidden" name="opis" value="<%= kat.getOpis() %>">
						<input type="hidden" name="podkategorija" value="<%= kat.getPodkategorija() %>">
						<input type="submit" value="Modifikuj">
					</form>
				</td>
			</tr>
		<% } %>
	</table>

	<a href="admin.jsp"> Nazad </a>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="proizvodi" class="kolekcije.Proizvodi" scope="application" />
<%@page import="beans.Proizvod" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Proizvodi</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

</head>
<body>
	<script src="bootstrap/js/bootstrap.js"></script>
	 
	<h2> Trenutni proizvodi: </h2>	
	<%= proizvodi.getProizvodi().size() %>

	<table border=1px width=100% class="well">
		<tr>
			<th> Sifra: </th>
			<th> Naziv: </th>
			<th> Boja: </th>
			<th> Dimenzije: </th>
			<th> Tezina: </th>
			<th> Zemlja proizvodnje: </th>
			<th> Naziv proizvodjaca: </th>
			<th> Jedinicna cijena: </th>
			<th> Kategorija proizvoda: </th>
			<th> Slika: </th>
			<th> Video: </th>
			<th> Ocjena: </th>
			<th> Recenzije: </th>
			<th> Kolicina u magacinu: </th>
		</tr>
		
		<% for(Proizvod pr : proizvodi.getProizvodi().values()) {%>
			<tr>
				<td> <%= pr.getSifra() %> </td>
				<td> <%= pr.getNaziv() %> </td>
				<td bgcolor="<%= pr.getBoja() %>"> &nbsp; </td>
				<td> <%= pr.getDimenzije() %> </td>
				<td> <%= pr.getTezina() %> </td>
				<td> <%= pr.getZemljaProizvodnje() %> </td>
				<td> <%= pr.getNazivProizvodjaca() %> </td>
				<td> <%= pr.getJedinicnaCijena() %> </td>
				<td> <%= pr.getKategorijaProizvoda() %> </td>
				<td> 
					<img src="C:\\Users\\Rade\\Desktop\\SlikeNovogSada\\<%= pr.getSlika() %>" alt="C:\\Users\\Rade\\Desktop\\SlikeNovogSada\\<%=pr.getSlika()%>" style="width:50px; height:50px;"> 
				</td>
				<td> <%= pr.getVideoURL() %> </td>
				<td> <%= pr.getOcjena() %> </td>
				<td> <%= pr.getRecenzije() %> </td>
				<td> <%= pr.getKolicinaUMagacinu() %> </td>
			</tr>
		<% } %>
	</table>

	<a href="admin.jsp"> Nazad </a>

</body>
</html>
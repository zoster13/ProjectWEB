<%@page import="beans.Korisnik.Uloga"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="proizvodi" class="kolekcije.Proizvodi" scope="application" />
<%@page import="beans.Proizvod" %>

<jsp:useBean id="korisnik" class="beans.Korisnik" scope="session" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WebShop</title>

<style>
table,h1 {
    border: 1px solid lightgrey;
    background-color: rgba(230, 230, 230, 0.3);
}
body{
	background-image: url("http://static1.squarespace.com/static/5431c376e4b010fc5fa309dd/t/56551d1de4b0f06765d5d2f2/1448418591090/banner-ecommerce-blue.jpg?format=1500w");	
	background-size: 100%;
}
</style>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

</head>
<body>
	<script src="bootstrap/js/bootstrap.js"></script>

	Dobrodosli na WebShop!

	<br />
	Dostupni proizvodi:
	<table border=1 width=80%>
		<tr bgcolor="lightgrey">
			<th> Sifra: </th>
			<th> Naziv: </th>
			<th> Boja: </th>
			<!-- <th> Dimenzije: </th> -->
			<!-- <th> Tezina: </th>  -->
			<!-- <th> Zemlja proizvodnje: </th>  -->
			<th> Naziv proizvodjaca: </th>
			<th> Cijena: </th>
			<th> Kategorija proizvoda: </th>
			<th> Slika: </th>
			<!-- <th> Video: </th>  -->
			<!-- <th> Ocjena: </th>  -->
			<th> Kolicina u magacinu: </th>
			<th> Prodavnica: </th>
			<th> Akcija: </th>
			<th> Recenzije: </th>
			<th> KUPOVINA: </th>
		</tr>
		
		<% for(Proizvod pr : proizvodi.getProizvodi().values()) {%>
			<tr>
				<td> <%= pr.getSifra() %> </td>
				<td> <%= pr.getNaziv() %> </td>
				<td bgcolor="<%= pr.getBoja() %>"> &nbsp; </td>
				<!-- <td> <%= pr.getDimenzije() %> </td>  -->
				<!--<td> <%= pr.getTezina() %> </td>  -->
				<!--<td> <%= pr.getZemljaProizvodnje() %> </td> -->
				<td> <%= pr.getNazivProizvodjaca() %> </td>
				<td> <%= pr.getJedinicnaCijena() %> </td>
				<td> <%= pr.getKategorijaProizvoda() %> </td>
				<td> 
					<img src="C:\\Users\\Rade\\Desktop\\SlikeNovogSada\\<%= pr.getSlika() %>" alt="C:\\Users\\Rade\\Desktop\\SlikeNovogSada\\<%=pr.getSlika()%>" style="width:50px; height:50px;"> 
				</td>
				<!--<td> <%= pr.getVideoURL() %> </td> -->
				<!-- <td> <%= pr.getOcjena() %> </td>  -->
				<td> <%= pr.getKolicinaUMagacinu() %> </td>
				<td> <%= pr.getProdavnica() %> </td>
				<td>
					<%if(pr.getAkcija() != null)  {%>
						<p style="color:red;"> <%=pr.getSnizenaCijena() %> </p>
					<% } else { %>
						
					<%} %>
				</td>
				<td> 
				 	<form action="PrikaziRecenzijeServlet">
						<input type="hidden" name="proizvod" value="<%=pr.getSifra()%>">								
						<input type="submit" value="Recenzije" class="btn btn-success">	
					</form>
					<!-- 
					<a href="prikazRecenzija2.jsp?sifra=<%=pr.getSifra()%>">Prikazi recenzije </a>
					<% request.getSession().setAttribute("sifraPr", pr.getSifra()); %>
					 -->
				</td>
				
				<!-- Samo kupac moze da kupuje -->
				<% if(korisnik.getUloga().equals(Uloga.Kupac)) { %>
				<td>
					<form action="DodajUKorpu">
						<input type="text" name="kolicina">
						<input type="hidden" name="proizvod" value="<%= pr.getSifra() %>">
						<input type="submit" value="Dodaj" class="btn btn-success">
					</form>
				</td>
						
				<% } %>
			</tr>
		<% } %>
	</table>

	<a href="korpa.jsp" class="btn btn-success"> Trenutni sadrzaj korpe </a>
	
	<form action="IstorijaKupovineServlet">
		<input type="submit" value="Prikazi istoriju kupovine">
	</form>
	
	<form action="LogoutServlet">
		<input type="submit" value="Logout" class="btn btn-danger">
	</form>
</body>
</html>
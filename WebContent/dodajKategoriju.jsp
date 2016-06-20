<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="kategorijeProizvoda" class="beans.KategorijeProizvoda" scope="application" />
<%@page import="beans.KategorijaProizvoda" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Dodavanje nove kategorije proizvoda</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">
</head>

<body>
<script src="bootstrap/js/bootstrap.js"></script>
 	
<h3> Dodavanje nove kategorije proizvoda </h3>

<form action="DodajKategoriju" method="post" class="well">
	<table>
		<tr>
			<td align="right"> Naziv: </td>
			<td> <input type="text" name="nazivKategorije"> </td>
		</tr>
		<tr>
			<td align="right"> Opis: </td>
			<td> <input type="text" name="opisKategorije"> </td>
		</tr>
		<tr>
			<td align="right"> Podkategorija: </td>
			<td> 
				<select name="podkategorija">
					<option value="nema"> Nema podkategoriju </option>
					<% for(KategorijaProizvoda kat : kategorijeProizvoda.getKategorijeProizvoda()) { %>
					<option value="<%= kat.getNaziv()%>"> <%= kat.getNaziv() %> </option>
					<% } %>
				</select>	
			</td>
		</tr>
		<tr>
			<td> &nbsp; </td>
			<td> <input type="submit" class="btn btn-success"> </td>
		</tr>
		
	</table>
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="kategorije" class="kolekcije.KategorijeProizvoda" scope="application" />
<%@page import="beans.KategorijaProizvoda" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dodavanje nove kategorije proizvoda</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

<script type="text/javascript">
	function Validacija()
	{
		var naziv = document.forms["forma"].nazivKategorije.value;
		var opis = document.forms["forma"].opisKategorije.value;
		
		if(naziv==null || naziv=="")
		{
			alert("Unesite naziv kategorije");
			return false;
		}
		else if(opis==null || opis=="")
		{
			alert("Unesite opis kategorije");
			return false
		}
		return true;
	}
</script>

<style>
table {
    border: 1px solid lightgrey;
	position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    
    background-color: rgba(230, 230, 230, 0.3);
}

body{
	background-image: url("http://static1.squarespace.com/static/5431c376e4b010fc5fa309dd/t/56551d1de4b0f06765d5d2f2/1448418591090/banner-ecommerce-blue.jpg?format=1500w");	
	background-size: 100%;
}
</style>

</head>

<body>
<script src="bootstrap/js/bootstrap.js"></script>

<form action="DodajKategoriju" onsubmit="return Validacija()" name="forma" method="post">
	<table>
		<tr>
			<td align="right"> Naziv: </td>
			<td> <input type="text" name="nazivKategorije"> </td>
		</tr>
		<tr>
			<td align="right"> Opis: </td>
			<td> <input type="text" name="opisKategorije" > </td>
		</tr>
		<tr>
			<td align="right"> Podkategorija: </td>
			<td> 
				<select name="podkategorija">
					<option value="nema"> Nema podkategoriju </option>
					<% for(KategorijaProizvoda kat : kategorije.getKategorijeProizvoda().values()) { %>
					<option value="<%= kat.getNaziv()%>"> <%= kat.getNaziv() %> </option>
					<% } %>
				</select>	
			</td>
		</tr>
		<tr>
			<td> &nbsp; </td>
			<td align="center"> 
				<input type="submit" value="Dodaj" class="btn btn-success"> 
				<a href="admin.jsp" class="btn btn-danger">Odustani</a>	
			</td>
		</tr>
		
	</table>
</form>


</body>
</html>
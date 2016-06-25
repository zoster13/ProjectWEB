<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dodavanje novog dostavljaca</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

<script type="text/javascript">
	function Validacija()
	{
		var sifra = document.forms["forma"].sifraDostavljaca.value;
		var naziv = document.forms["forma"].nazivDostavljaca.value;
		var opis = document.forms["forma"].opisDostavljaca.value;
		var drzave = document.forms["forma"].drzave.value;
		var tarife = document.forms["forma"].tarifeDostavljaca.value;
	
		if(sifra==null || sifra=="")
		{
			alert("Unesite sifru dostavljaca.");
			return false;
		}
		else if(naziv==null || naziv=="")
		{
			alert("Unesite naziv dostavljaca.");
			return false;
		}
		else if(opis==null || opis=="")
		{
			alert("Unesite opis dostavljaca.");
			return false;
		}
		else if(drzave==null || drzave=="")
		{
			alert("Unesite drzave poslovanja dostavljaca.");
			return false;
		}
		else if(tarife==null || tarife=="")
		{
			alert("Unesite tarife(cijene prenosa) dostavljaca.");
			return false;
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
    
    background-color: rgba(230, 230, 230, 0.7);
}

body{
	background-image: url("http://wallpaperslabs.com/uploads/images/c/h/e/cheap_wallpaper_online_store_1.jpg");	
	background-size: 100%;
}
</style>

</head>
<body>

<script src="bootstrap/js/bootstrap.js"></script>

<form action="DodajDostavljaca" name="forma" method="post">
	<table>
		<tr>
			<td align="right"> Sifra: </td>
			<td> <input type="text" name="sifraDostavljaca"> </td>
		</tr>
		<tr>
			<td align="right"> Naziv: </td>
			<td> <input type="text" name="nazivDostavljaca"> </td>
		</tr>
		<tr>
			<td align="right"> Opis: </td>
			<td> <input type="text" name="opisDostavljaca"> </td>
		</tr>
		<tr>
			<td align="right"> Drzave poslovanja: </td>
			<td> <input type="text" name="drzave"> </td>
		</tr>
		<tr>
			<td align="right"> Cijena prenosa(po kilogramu): </td>
			<td> <input type="text" name="tarifeDostavljaca"> </td>
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
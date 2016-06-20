<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dodavanje novog dostavljaca</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

</head>
<body>

<script src="bootstrap/js/bootstrap.js"></script>
 	
<h3> Dodavanje dostavljaca </h3>

<form action="DodajDostavljaca" method="post" class="well">
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
			<td align="right"> Tarife(cijene prenosa): </td>
			<td> <input type="text" name="tarifeDostavljaca"> </td>
		</tr>
		<tr>
			<td> &nbsp; </td>
			<td> <input type="submit" class="btn btn-success"> </td>
		</tr>
		
	</table>
</form>


</body>
</html>
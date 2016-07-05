<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

<style>
a {
	color: white;
}

body{
	background-image: url("http://static1.squarespace.com/static/5431c376e4b010fc5fa309dd/t/56551d1de4b0f06765d5d2f2/1448418591090/banner-ecommerce-blue.jpg?format=1500w");	
	background-size: 100%;
}
</style>

</head>
<body>
	<script src="bootstrap/js/bootstrap.js"></script>
 	
 	<form action="LogoutServlet">
		<input type="submit" value="Logout" class="btn btn-danger">
	</form>
 	
	<h5> Prikaz: </h5>
	<ul>
	  <li><a href="prikaziKategorije.jsp"> Prikazi kategorije proizvoda</a></li>
	  <li><a href="prikaziDostavljace.jsp"> Prikazi dostavljace</a></li>
	  <li><a href="prikaziProdavnice.jsp"> Prikazi prodavnice </a></li>
	  <li><a href="prikaziProizvode.jsp"> Prikazi proizvode</a></li>
	  <li><a href="prikaziKorisnike.jsp"> Prikazi korisnike</a></li>	  
	</ul>

	<h5> Dodavanje: </h5>
	<ul>
		<li><a href="dodajKategoriju.jsp"> Dodaj kategoriju proizvoda</a></li>
		<li><a href="dodajDostavljaca.jsp"> Dodaj dostavljaca</a> </li>
		<li><a href="dodajProdavnicu.jsp"> Dodaj prodavnicu</a> </li>
		<li><a href="dodajProizvod.jsp"> Dodaj proizvod</a> </li>
	</ul>	
	
	<h5> Zalbe: </h5>
	<ul>
		<li> <a href="prikaziZalbe.jsp">Prikazi zalbe</a> </li>
	</ul>
			
</body>
</html>
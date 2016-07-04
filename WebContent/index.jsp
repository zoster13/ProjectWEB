<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<jsp:useBean id="korisnik" class="beans.Korisnik" scope="session" />
<%@page import="beans.Korisnik.Uloga"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Web prodavnica</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

<style>
table,h1 {
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

<script type="text/javascript">
	function Validacija()
	{	
		var username = document.forms["forma"].korisnickoIme.value;
		var sifra = document.forms["forma"].sifra.value;

		if(username == null || username=="")
		{
			alert ("Unesite korisnicko ime.");	
			return false;
		}
		else if(sifra == null || sifra=="")
		{
			alert ("Unesite sifru.");
			return false;
		}
		
		return true;
	}
</script>
</head>

<body>
	<script src="bootstrap/js/bootstrap.js"></script>
 	
 	<% if(!korisnik.isUlogovan()) {%>
 	
	<form action="LoginServlet" method="post" name="forma" onsubmit="return Validacija();">
		<table cellspacing=0 cellpadding=3>
			<tr>
				<td align=right>Korisnicko ime:</td>
				<td><input type="text" name="korisnickoIme"></td>
			</tr>
			<tr>
				<td align=right>Sifra:</td>
				<td><input type="password" name="sifra"></td>
			</tr>
			<tr>
				<td align=right>&nbsp;</td>
				<td align="center">
					<input type="submit" value="Prijavi se" class="btn btn-success">
					<a href="registruj.jsp" class="btn btn-danger"> Registruj se </a>
				</td>
			</tr>
		</table>
	</form>
	
	<% } else { %>
		<% 
		RequestDispatcher disp = null;
		
		if(korisnik.getUloga().equals(Uloga.Administrator))
		{
			disp = request.getRequestDispatcher("admin.jsp");
		}
		else if(korisnik.getUloga().equals(Uloga.Kupac))
		{
			disp = request.getRequestDispatcher("webshop.jsp");
		}
		else if(korisnik.getUloga().equals(Uloga.Prodavac))
		{
			disp = request.getRequestDispatcher("prodavac.jsp");
		}
		disp.forward(request, response);
		%>
	<% } %>
</body>
</html>
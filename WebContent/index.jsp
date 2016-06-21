<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<jsp:useBean id="korisnici" class="kolekcije.Korisnici" scope="application"/>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Web prodavnica</title>

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="bootstrap/css/bootstrap.css">

</head>

<body>
	<script src="bootstrap/js/bootstrap.js"></script>
 	
	<form action="LoginServlet" method="post" class="well">
		<table cellspacing=0 cellpadding=3 border=0>
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
				<td>
					<input type="submit" value="Prijavi se" class="btn btn-success">
					<a href="registruj.jsp" class="btn btn-danger"> Registruj se </a>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
<%@ page language="Java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href=".../stylesheets/style3.css" />
<link rel="stylesheet" type="text/css" href=".../stylesheets/header.css" />
<link rel="stylesheet" type="text/css" href=".../stylesheets/footer.css" />
<link rel="stylesheet" type="text/css" href=".../stylesheets/content.css" />
<title>Login</title>
</head>
<body>
<%@ include file="header.jspf" %>
<h2>Login nur für registrierte Kunden!</h2>
<form id="login" method="post" action=../LoginServlet>
<div>
<label for="email">E-Mail:</label> <input type="email" name="email" id="email" placeholder="E-Mail Adresse eingeben" required>
</div>
<div>
<label for="password">Passwort:</label> <input type="password" name="password" id="password" size="10" maxlength="10" placeholder="Passwort hier eingeben" required>
</div>
<div>
				<p>
					<button name="absenden" type="submit">Login</button>
					<button name="Reset" type="reset">Abbrechen</button>
			</div>
</form>
<div>
<p>Noch nicht registriert?<p>
<p>Hier zur Registrierung ->
<a href="registrierung.jsp"><button name="registrierung" type="submit">Jetzt registrieren!</button>
</a>
</p>
</div>
				

<%@ include file="footer.jspf" %>

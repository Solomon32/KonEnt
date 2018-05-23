<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page import="java.util.*" %>
<html lang="de">
<head>
<link rel="stylesheet" type="text/css" href="../stylesheets/style3.css"/>
<link rel="stylesheet" type="text/css" href="../stylesheets/header.css"/>
<link rel="stylesheet" type="text/css" href="../stylesheets/footer.css"/>
<link rel="stylesheet" type="text/css" href="../stylesheets/content.css"/>
<title>Registrierung</title>
</head>
<body>
<%@ include file="header.jspf" %>
<form id="myForm" method="post" action="../regServlet">
<fieldset>
<legend>Registrierung</legend>
<div>
<label for="anrede">Anrede:</label>
<input type="radio" name="anrede" id="herr" value="Herr">
<label for="herr">Herr</label>
<input type="radio" name="anrede" id="frau" value="Frau">
<label for="frau">Frau</label>
</div>
<div>
<label for="titel">Titel:</label> <select name="titel" id="titel">
<option value="keine">Kein Titel</option>
<option value="Dr.">Dr.</option>
<option value="Prof.">Prof.</option>
<option value="ProfDr.">Prof. Dr.</option>
</select>
</div>
<div>
<label for="vname">Vorname:</label>
<input type="text" name="vorname" id="vname" placeholder="Vornamen eingeben" required>
</div>
<div>
<label for="name">Name:</label>
<input type="text" name="name" id="name" placeholder="Nachnamen eingeben" required>
</div>
<div>
<label for="mail">E-Mail:</label>
<input type="email" name="email" id="email" placeholder="E-Mail eingeben" required>
</div>
<div>
<label for="strasse">Straße:</label>
<input type="text" name="strasse" id="strasse" placeholder="Straße eingeben:" required>
</div>
<div>
<label for="plz">Postleitzahl:</label>
<input type="text" name="plz" id="plz" placeholder="Postleitzahl eingeben" required>
</div>
<div>
<label for="stadt">Stadt:</label>
<input type="text" name="stadt" id="stadt" placeholder="Stadt eingeben" required>
</div>
<div>
<label for="land">Land:</label>
<input type="text" name="land" id="land" placeholder="Land eingeben" required>
</div>
<div>
<label for="telnr">Telefonnummer:</label>
<input type="text" name="telnr" id="telnr" placeholder="Telefonnummer eingeben" required>
</div>
<div>
<label for="passwd">Passwort:</label>
<input type="password" name="pw" id="pw" placeholder="Passwort eingeben" size="30" maxlength="30" required>
</div>
<div>
<label for="repasswd">Passwort wiederholen:</label>
<input type="password" name="pw2" id="pw2" placeholder="Passwort wiedehrolen" size="30" maxlength="30" required>
</div>
<div>
<p>
<button id="absenden" name="absenden" type="submit">Abschicken</button>
<button name="Reset" type="reset">Zurücksetzen</button>
</p>
</div>
</fieldset>
</form>



<%@ include file="footer.jspf" %>

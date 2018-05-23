<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href=".../stylesheets/style3.css" />
<link rel="stylesheet" type="text/css" href=".../stylesheets/header.css" />
<link rel="stylesheet" type="text/css" href=".../stylesheets/footer.css" />
<link rel="stylesheet" type="text/css" href=".../stylesheets/content.css" />
<title>Kontakt</title>
</head>
<body>
<%@ include file="header.jspf" %>

<div class="content">
		<h2>Kontaktformular</h2>
	<form method="post" action=".../kontaktServlet">
		<fieldset>
		<legend>Ihre Nachricht an das Sneakr-Team!</legend>
		<div>
		<label for="vname">Vorname:</label>
		<input type="text" name="vname" id="vorname" placeholder="Hier Vorname eintragen" required>
		</div>
		<div>
		<label for="name">Nachname:</label>
		<input type="text" name="name" id="nachname" placeholder="Hier Namen eintragen" required>
		</div>
		<div>
		<label for="mail">E-Mail-Adresse:</label>
		<input type="text" name="mail" id="email" placeholder="Hier E-Mail eintragen" required>
		</div>
		<div>
		<label for="bday">Geburtsjahr:</label>
		<input type="text" name="bday" id="geboren" min="1920" max="2017" value="1994">
		</div>
		<div class="form_radio">
		<label>Geschlecht:</label>
		<input type="radio" name="gender" id="male" value="male">
		<label for="male">Männlich</label>
		<input type="radio" name="gender" id="female" value="female">
		<label for="female">Weiblich</label>
		</div>
		<div>
		<label class="textarea" for="nachricht">Ihre Nachricht:</label>
		<textarea name="nachricht" id="nachricht" placeholder="Hier Bitte Ihre Nachricht eingeben..." rows="8"></textarea>
		<label for="nachricht"></label>
		</div>
		<div>
		<input type="checkbox" name="reply" id="reply" value="reply">
		<label for="reply">Ich Bitte um eine Rückmeldung</label>
		</div>
		<p>(*) = Pflichtfelder</p>
		</fieldset>
	</form>
</div>

<%@ include file="footer.jspf" %>

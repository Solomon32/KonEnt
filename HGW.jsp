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
<title>Index</title>
</head>
<body>

<%@ include file="header.jspf"%>

<div class="content">
		<content>
		<h3>HERZLICHEN GLÜCKWUNSCH SIE SIND REGISTRIERT!</h3>
		<h3>Ihre Eingaben</h3>
		<br><em>Id      : </em>${form.id}
		<br><em>Titel   : </em>${form.titel}
		<br><em>Nachname: </em>${form.name}
		<br><em>Vorname : </em>${form.vorname}
		<br><em>E-Mail   : </em>${form.email}
		<br><em>Strasse   : </em>${form.strasse}
		<br><em>Postleitzahl   : </em>${form.plz}
		<br><em>Stadt   : </em>${form.stadt}
		<br><em>Land   : </em>${form.land}
		<br><em>TelNr   : </em>${form.telnr}
		
		</content>	
</div>

<%@ include file="footer.jspf" %>
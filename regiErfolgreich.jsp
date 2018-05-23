<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page import="java.util.*" %>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/stylesheets/style3.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/stylesheets/header.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/stylesheets/footer.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/stylesheets/content.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<body>

<%@ include file="header.jspf" %>

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
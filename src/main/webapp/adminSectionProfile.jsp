<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	session.invalidate();
%>
    <h3>Book added Successfully</h3>
    <a href="adminSection.jsp">Back AdminSection</a>
</body>
</html>
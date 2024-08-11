<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String CallNo=request.getParameter("callno");
String StudentId=request.getParameter("studentid");

try {
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_db","root","");
	PreparedStatement ps=con.prepareStatement("delete  from e_issuedbook where CALLNO=(?)");
	ps.setString(1, CallNo);
	

	int p=ps.executeUpdate();
	
	  if(p>0)
	   {
		   //out.println("Return book sucessfully");
		   response.sendRedirect("returnBookSuccessProfile.jsp");
	   }
	   else
	   {
		   out.println(" return Not not");
	   }
	

	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>
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
String StudentName=request.getParameter("studentname");
String StudentContract=request.getParameter("studentcontract");
String Issueddate=request.getParameter("issueddate");

try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_db","root","");
    PreparedStatement ps=con.prepareStatement("insert into e_issuedbook values(?,?,?,?,?)");
	ps.setString(1, CallNo);
	ps.setString(2, StudentId);
	ps.setString(3, StudentName);
	ps.setString(4, StudentContract);
	ps.setString(5, Issueddate);
	
	int count=ps.executeUpdate();
	
	if(count>0)
	{
		
		//out.print("IssuedBook successfully");
		response.sendRedirect("issuedBookSuccessProfile.jsp");
	}
	else
	{
		
		out.print("Book not Issued");
		
		
	}
}
catch(Exception e)
{
	e.printStackTrace();
	
}

%>
</body>
</html>
<%
%>
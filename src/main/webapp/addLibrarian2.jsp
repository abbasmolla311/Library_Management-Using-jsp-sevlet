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
String Id=request.getParameter("id");
String Name=request.getParameter("name");
String Password=request.getParameter("password");
String Email=request.getParameter("email");
String Address=request.getParameter("address");
String City=request.getParameter("city");
String Mobile=request.getParameter("mobile");
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_db","root","");
	PreparedStatement ps=con.prepareStatement("insert into e_librarian values(?,?,?,?,?,?,?)");
	ps.setString(1, Id);
	ps.setString(2, Name);
	ps.setString(3, Password);
	ps.setString(4, Email);
	ps.setString(5, Address);
	ps.setString(6, City);
	ps.setString(7, Mobile);
	
	int count=ps.executeUpdate();
	
	if(count>0)
	{
		
		//out.print("add librarian successfully");
		response.sendRedirect("adminSectionProfile.jsp");  
	}
	else
	{
		
		out.print("Librian not added");
		
		
	}
}
catch(Exception e)
{
	e.printStackTrace();
	
}
%>
</body>
</html>
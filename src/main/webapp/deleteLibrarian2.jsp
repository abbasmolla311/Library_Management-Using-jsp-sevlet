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

try
{
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_db","root","");
	   PreparedStatement ps=con.prepareStatement("delete from e_librarian where ID=(?)");
	   ps.setString(1, Id);
	   int p=ps.executeUpdate();
	   if(p>0)
	   {
		   //out.println("Delete done");
			response.sendRedirect("deleteSuccesProfile.jsp");
	   }
	   else
	   {
		   out.println("Not done");
	   }
	   

}
catch(Exception e)
{
	e.printStackTrace();
}
%>

     
</body>
</html>
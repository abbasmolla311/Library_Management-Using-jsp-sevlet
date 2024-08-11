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

try
{
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_db","root","");
	   String sql="select * from e_issuedbook";
	   PreparedStatement ps=con.prepareStatement(sql);
       
	  
	   
	   ResultSet rs=ps.executeQuery();


%>

      <table border="1px">
         <tr>
             <th>CALLNO</th>
             <th>StudentId</th>
             <th>StudentName</th>
             <th>StudentContract</th>
             <th>IssuedDate</th>
             
             
         </tr>
      <%
      while(rs.next())
      {
      %>
      <tr>
           
            
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getInt(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
          
           
            
           
            
            
      </tr>
      <%
      }
      %>
      </table>
      <% 
  
 }
catch(Exception e)
{
	e.printStackTrace();
}
 %>
</body>
</html>
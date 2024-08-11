<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body
    {
    font-family: Arial, sans-serif;
    background-color: #c5d9ed;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 300px;
}

h2 {
    text-align: center;
}

.input-group {
    margin-bottom: 15px;
}

.input-group label {
    display: block;
    margin-bottom: 5px;
}

.input-group input {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}
.input-group input
{
  width:100%;
  padding:8px;
  border:1px solid #ccc;
  border-radius:3px;
}
select
{
     width: 106%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 3px;
     
}


</style>
</head>
<body>
<div class="container">
<form action="issuedBook2.jsp" method="post">
<h2>Issued Book</h2>

<%
String callno=request.getParameter("callno");



try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library_db","root","");
    String sql = "select * from e_book";
	PreparedStatement ps=con.prepareStatement(sql);
	
	 ResultSet rs=ps.executeQuery();
	

%>
 <div class="input-group">
    <label>BookCallno</label>
    
  </div>


     <select name="callno">
       <option>----select----</option>
     <%
     
     while(rs.next()){ 
     %>
         <option><%= rs.getString(1) %></option>
     <% } %>
     </select>
     

     

     

	
<% 
}
catch(Exception e)
{
	e.printStackTrace();
}

%>



 
  <div class="input-group">
    <label>StudentId</label>
    <input type="text" name="studentid" placeholder="StudentId" required/>
  </div>
  <div class="input-group">
    <label>StudentName</label>
    <input type="text" name="studentname" placeholder="StudentName" required/>
  </div>
  <div class="input-group">
    <label>StudentContract</label>
    <input type="text" name="studentcontract" placeholder="StudentContract" required/>
  </div>
  <div class="input-group">
    <label>IssuedDate</label>
    <input type="date" name="issueddate" placeholder="IssuedDate" required/>
  </div>
  
  <button type="submit">Issue Book</button><br><br>
  <button type="submit">Back</button>



</form>
</div>
</body>
</html>
<%
%>
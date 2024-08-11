<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
   body {
    font-family: Arial, sans-serif;
    background-color:#c5d9ed;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color:#f0f6fc;
    padding: 30px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 300px;
    height:300px;
    padding-top:10px;
    
    font-size:30px;
    font-decoration:none;
}
a
{
   font-size:20px;
   text-decoration:none;
   
}
a:hover
{
   color:pink;
   
}

</style>
</head>
<body>
<div class="container">
     <h3>Admin Section</h3>
     <a href="addlibrarian.jsp">Add Librarian</a><br>
     <a href="viewLibrarian.jsp">View Librarian</a><br>
     <a href="deleteLibrarian.jsp">Delete Librarian</a><br>
     <a href="logout.jsp">Logout</a>
</div>
</body>
</html>
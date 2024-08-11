<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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

.login-container {
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

.loginbt {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

loginbt:hover {
    background-color: #0056b3;
}
.input-group input
{
  width:100%;
  padding:8px;
  border:1px solid #ccc;
  border-radius:3px;
}

</style>
</head>
<body>
<div class="login-container">
<h2>Librarian Login</h2>
     <form action="librarianLogin2" method="post">
         <div class="input-group">
              <label>Name:</label>
              <input type="text" name="name" />
          </div>
          <div class="input-group">
             <label>Password:</label>
             <input type="password" name="password" /><br><br>
          </div>
           <input type="submit" value="Login" class="loginbt"/><br><br>
           
          
     </form>
     </div>
</body>
</html>
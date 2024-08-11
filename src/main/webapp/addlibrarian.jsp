<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

.button{
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

.button:hover {
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
<div class="container">
<h3>Add Librarian</h3>
 
  <form action="addLibrarian2.jsp" method="post" style="width:300px">
  <div class="input-group">
    <label>Id</label>
    <input type="text" name="id" placeholder="Id"/>
  </div>
  <div class="input-group">
    <label>Name</label>
    <input type="text" name="name" placeholder="Name"/>
  </div>
  <div class="input-group">
    <label>Password</label>
    <input type="password"  name="password" placeholder="Password" />
  </div> 
  <div class="input-group">
    <label>Email address</label>
    <input type="email"  name="email" placeholder="Email"/>
  </div>
   <div class="input-group">
    <label>Address</label>
    <input type="text"  name="address" placeholder="Address"/>
  </div> 
  <div class="input-group">
    <label>City</label>
    <input type="text"  name="city" placeholder="City1"/>
  </div> 
  <div class="input-group">
    <label>Mobile Number</label>
    <input type="number" name="mobile" placeholder="Mobile"/>
  </div>
  <button type="submit"class="btn btn-primary" >Submit</button><br><br>
  <input type="button" value="Go Back">
</form>
</div>
</body>
</html>
<% 

%>

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

</style>
</head>
<body>
<div class="container">
<h3>Add Book Form</h3>
  <form action="addBook2" method="post" style="width:300px">
  <div class="input-group">
    <label>Callno</label>
    <input type="text" name="callno"  placeholder="Callno" required/>
  </div>
  <div class="input-group">
    <label>Name</label>
    <input type="text" name="name" placeholder="Name" required/>
  </div>
  <div class="input-group">
    <label>Author</label>
    <input type="text" name="author" placeholder="Author" required/>
  </div>
  <div class="input-group">
    <label>Publisher</label>
    <input type="text" name="publisher" placeholder="Publisher" required/>
  </div>
  <div class="input-group">
    <label>Quantity</label>
    <input type="number" name="quantity" placeholder="Quantity" required/>
  </div>
  <div class="input-group">
    <label>Issued</label>
    <input type="number" name="issued" placeholder="Issued" required/>
  </div>
  <div class="input-group">
    <label>Added_Date</label>
    <input type="date" name="added_date" required/>
  </div>
  <button type="submit">Save Book</button>
</form>
</div>
</body>
</html>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <title>LMS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">LMS</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">All Books</a></li>
      <li><a href="newBook">New Book</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
<c:choose>
<c:when test="${mode=='BOOK_VIEW'}">
<table class="table table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Book name</th>
        <th>Autor</th>
        <th>Purchase date</th>
         <th>Image</th>
        <th>Update</th>
        <th>Delete</th>
      
       
      </tr>
    </thead>
    <tbody>
    <c:forEach  items="${books}" var="book">
       <tr>
         <td>${book.id}</td>
         <td>${book.book_name}</td>
         <td>${book.autor}</td>
         <td>${book.purchase_date}</td>
         <td><img src="${book.img}" alt="Lights" style="width:150px" height="200"></td>
         
         <td><a href="updateBook?id=${book.id}"</a> <div class="glyphicon glyphicon-pencil"</div></td>
         <td><a href="deleteBook?id=${book.id}"</a> <div class="glyphicon glyphicon-trash"</div></td>
       </tr>
     </c:forEach>
      </tbody>
  </table>

</c:when>
<c:when test="${mode=='BOOK_EDIT'||$mode=='BOOK_NEW'}">

<form action="save" method="POST">
<input type="hidden" class="form-control" value="${book.id}" name="id" id="id">
  <div class="form-group">
    <label for="book_name">Book Name</label>
    <input type="text" class="form-control" value="${book.book_name}" name="book_name" id="book_name">
  </div>
  <div class="form-group">
    <label for="autor">Autor</label>
    <input type="text" class="form-control" value="${book.autor}" id="autor" name="autor">
  </div>
  <div class="form-group">
    <label for="autor">Image</label>
    <input type="text" class="form-control" value="${book.img}" id="img" name="img">
  </div>
  <div class="form-group">
    <label for="purchase_date">Puchase Date</label>
    <input type="date" class="form-control" value="${book.puchase_date}" id="purchase_date" name="purchase_date">
  
  <button type="submit" class="btn btn-default">Submit</button>
  
</form>
</c:when>

</c:choose>
   
     
      
   
  
</div>


</body>
</html>

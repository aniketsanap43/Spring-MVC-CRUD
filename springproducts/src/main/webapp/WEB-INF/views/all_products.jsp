<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
  
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		
	<link href="<c:url value="/resources/css/style.css" /> /">
	
    <title>Hello, world!</title>
  </head>
  <body>

 <div class="container">
	<table class="table table-hover">
	  <thead>
	    <tr>
	      <th scope="col">S.No</th>
	      <th scope="col">Name</th>
	      <th scope="col">Description</th>
	      <th scope="col">Price</th>
	      <th scope="col">Action</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach items="${ProductList}" var="p">
	    <tr>
	      <th scope="row">Tech-${p.id }</th>
	      <td>${p.name }</td>
	      <td>${p.description }</td>
	      <td>${p.price }</td>
	      <td>
	      	<a href="delete/${p.id }">Delete</a>
	      	<a href="update/${p.id }">Update</a>
	      </td>
	    </tr>
	    </c:forEach>
	  </tbody>
	</table>
	<div class="container text-center">
		<a href="openForm" type="button" class="btn btn-primary" >Add Product</a>
	</div>
	
</div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>


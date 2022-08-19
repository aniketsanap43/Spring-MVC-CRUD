<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>  
  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		
	<link href="<c:url value="/resources/css/style.css" /> /">


</head>
<body>
	
	<div class="container">
		<div class="product-form" style="padding:150px">
			<div class="heading text-center">
				<h2>Fill the product form</h2>
			</div>
			<form action="${pageContext.request.contextPath}/add_product" method="post">
			 <div class="form-group">
			    <input type="text" class="form-control" id="id" name="id" value="${MyProduct.id}">
			  </div>
			  <div class="form-group">
			    <label for="name">Name</label>
			    <input type="text" class="form-control" id="name" name="name" value="${MyProduct.name}">
			  </div>
			  <div class="form-group">
			    <label for="description">Description</label>
			    <textarea class="form-control" id="description" name="description"  rows="3">${MyProduct.description}</textarea>
			  </div>
			  <div class="form-group">
			    <label for="price">Price</label>
			    <input type="text" class="form-control" id="price" name="price" value="${MyProduct.price}">
			  </div>
			  <div class="form-group text-center" style="padding-top:10px">
			  	<button type="submit" class="btn btn-primary">Update</button>
			  </div>
			</form>
		</div>
	</div>

</body>
</html>
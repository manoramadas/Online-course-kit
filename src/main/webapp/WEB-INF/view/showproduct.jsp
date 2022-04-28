<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Online CourseKit Store</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="${cp}/resources/css/design.css" rel="stylesheet" type="text/css"/>
  <link href="${cp}/resources/css/proddetails.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
  </head>

  <body id="myPage" data-spy="scroll" data-target=".navbar" >
	 <div>
            <%@include file="headers.jsp" %>	
        </div>
        <c:if test="${(not empty sc)}">
				<a href="http://localhost:8090/onlinecourse/admi">back</a>
				</c:if>
 
	
 <br><br><div class="container" bgcolor="cyan">
<br> <p style="color:black; font-size:20px">${msg}</p>
	<p style="color:black; font-size:20px">${mssg}</p>
	<p style="color:black; font-size:20px">${b4cart}</p>
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1">
                                                      <img src="${cp}/resources/images/${p.co_id}.jpg" height="350" >
                                                  </div> 
						</div>
						
					</div>
					<div class="details col-md-6">
                                            <h3 class="product-title"><u>${p.co_name}</u></h3>
                                            <p>${p.co_id}</p>
                                            <p>${p.ca_name}</p>
                                            
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
							</div>
							<!--<span class="review-no">41 reviews</span>-->
						</div>
						<p class="product-description">${p.co_desc }</p>
						<p>No. of parts:- ${p.co_parts}</p>
						<h4 class="price">price:   <span><i class="fa fa-rupee"></i>${p.co_price }</span></h4>
						<p class="vote"><strong>91%</strong> of buyers loved this course! <strong>(87 votes)</strong></p>
						
						<!--<h5 class="colors">colors:
							<span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
							<span class="color green"></span>
							<span class="color blue"></span>
						</h5>-->
						
	<c:if test="${( empty sc)}">
						
	<form action="${cp}/myCart/add/${p.co_id}" method="post">
	<div class="action">
	<button class="add-to-cart btn btn-default" type="submit">Add to cart</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="${cp}/view2/${p.co_id}">
      <button class="add-to-cart btn btn-default" type="button">Buy Now</button></a>
       
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
	</div>
	</form>
	</c:if>
					</div>
				</div>
			</div>
		</div>
        </div><br><br><br>
      
<%@include file="footer.jsp" %>	
  </body>
</html>
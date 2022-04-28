<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Online CourseKit Store</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="resources/css/design.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
        
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar">
   <%@include file="headers.jsp" %>       
 
        <div id="band" class="container text-center">
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>${p.category }</strong></p><br>
      <a href="#demo" data-toggle="collapse">
        <img src="images/img9.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo" class="collapse">
                 
          <a href="productdetails.html"><p><u>${p.co_name}</u></p></a>
          <a href=""><p><u></u></p></a>
        
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong></strong></p><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="images/img10.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo2" class="collapse">
               
              <a href=""><p><u></u></p></a>
        <a href=""><p><u></u></p></a>
        
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong></strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="images/img11.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo3" class="collapse">      
             <a href=""><p><u></u></p></a>
       <a href=""><p><u></u></p></a>
       
      </div>
    </div>
  </div><hr>
    
    <div class="row">
      <div class="col-sm-4">
      <p class="text-center"><strong></strong></p><br>
      <a href="#demo4" data-toggle="collapse">
        <img src="images/img12.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo4" class="collapse">       
             <a href=""><p><u></u></p></a>
        <a href=""><p><u></u></p></a>
        
      </div>
    </div>
      <div class="col-sm-4">
      <p class="text-center"><strong></strong></p><br>
      <a href="#demo5" data-toggle="collapse">
        <img src="images/img13.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo5" class="collapse">       
              <a href=""><p><u></u></p></a>
        <a href=""><p><u></u></p></a>
        
      </div>
    </div>
      <div class="col-sm-4">
      <p class="text-center"><strong></strong></p><br>
      <a href="#demo6" data-toggle="collapse">
        <img src="images/img14.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo6" class="collapse">      
             <a href=""><p><u></u></p></a>
      <a href=""><p><u></u></p></a>
        
      </div>
    </div>
  </div>
</div>
        <%@include file="footer.jsp" %>
    </body>
</html>

<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="cp" value="${pageContext.request.contextPath}"  />
<html lang="en">
<head>
  
  <title>Online CourseKit Store</title>
  <%@include file="links.jsp" %>	
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar">
    
   <%@include file="headers.jsp" %>	

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
   
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" style="width: 100%; height:500px;">
      <div class="item active" style="width: 100%; height:500px;">
        <img src="${cp}/resources/images/img22.jpg" style="width: 100%; height:500px;" alt="New York" class="responsive"/>
        <div class="carousel-caption">
            <h3></h3>
        </div>      
      </div>
        
      <div class="item" style="width: 100%; height:500px;">
        <img src="${cp}/resources/images/img23.jpg" style="width: 100%; height:500px;" alt="Chicago" class="responsive">
        <div class="carousel-caption">
          <h3></h3>
        </div>      
      </div>
    
      <div class="item" style="width: 100%; height:500px;">
        <img src="${cp}/resources/images/img20.jpg" style="width: 100%; height:500px;" alt="Los Angeles" class="responsive">
        <div class="carousel-caption">
          <h3></h3>
         
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div><br><br><br>

<!-- Container (TOUR Section) -->
<div id="tour" class="bg-1">
  <div class="container">
    <h3 class="text-center">TRENDING COURSES</h3>
        
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${cp}/resources/images/img15.jpg" alt="Paris" width="400" height="300">
          <p><strong>DIGITAL MARKETTING</strong></p>
          <p>20% OFF</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Buy Now</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${cp}/resources/images/img6.jpg" alt="New York" width="400" height="300">
          <p><strong>SSC CGL</strong></p>
          <p>20% OFF</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Buy Now</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${cp}/resources/images/img1.jpg" alt="San Francisco" width="400" height="300">
          <p><strong>NEET 2021</strong></p>
         <p>20% OFF</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Buy Now</button>
        </div>
      </div>
    </div>
  </div>
  
    </div>
  <%@include file="footer.jsp" %>	

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>
</body>
</html>

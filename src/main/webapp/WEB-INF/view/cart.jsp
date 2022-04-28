<!DOCTYPE html>
<html lang="en">
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="cp" value="${pageContext.request.contextPath}"  />
<head>
  <title>Online CourseKit Store</title>
 <%@include file="links.jsp" %>	
		
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar">
<div>
<%@include file="headers.jsp"%>
</div><br><br><br>
<div class="container">  
  <c:if test="${ empty p}">          
  <table class="table table-striped">
  <h3>${mssg}</h3>
    <thead>
      <tr>
        <th>Course</th>
        <th>Course Name</th>
	<th>Price</th>
	<th>Total</th>
	<th></th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${allcart}" var="o" >
    <tr>
      <td><img alt="" src="${cp}/resources/images/${o.courseid}.jpg" height="100px" width="100px"/></td>     
<td>${o.coursename}</td>    
<td>${o.courseprice}</td>
<td>${o.totalprice}</td>

 
	<td><a href="${cp}/remove/${o.cartid}">
          <span class="glyphicon glyphicon-trash" style="color:red"></span>
        </a></td>
    </tr>
      </c:forEach>
       

    </tbody>
  </table>

  <div align="right">
  
		  <h5>TOTAL COST: <i class="fa fa-rupee"></i>3700</h5>
		<br>
		 
	</div>
	</c:if>
	<c:if test="${not empty p}">
 <table class="table table-striped">
  <h3>${mssg}</h3>
    <thead>
      <tr>
        <th>Course</th>
        <th>Course Name</th>
	<th>Price</th>
	<th>Total</th>
	<th></th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${allcart}" var="o" >
    <tr>
      <td><img alt="" src="${cp}/resources/images/${o.courseid}.jpg" height="100px" width="100px"/></td>     
<td>${o.coursename}</td>    
<td>${o.courseprice}</td>
<td>${o.totalprice}</td>

 
	<td><a href="${cp}/remove/${o.cartid}">
          <span class="glyphicon glyphicon-trash" style="color:red"></span>
        </a></td>
    </tr>
      </c:forEach>
       

    </tbody>
  </table>

  <div align="right">

	<h5>TOTAL COST: <i class="fa fa-rupee"></i>3700</h5>
		<br>
		 
	</div>

	</c:if><br><br>
	   <a href="${cp}/admi">
 <button type="button" class="btn btn-success"> Continue Shopping<span class="glyphicon glyphicon-shopping-cart" ></span></button></a>

  <a href="${cp}/billingpage"><button type="button" class="btn btn-success">Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></a>
</div>
<br>

<%@include file="footer.jsp"%>	

</body>
</html>

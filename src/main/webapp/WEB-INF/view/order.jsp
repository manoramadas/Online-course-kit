<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<head>
 <title>Online CourseKit Store</title>
 <%@include file="links.jsp" %>	
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar">
<div>
<%@include file="headers.jsp"%>
</div>
<br><br><br>
<form:form action="${cp}/payment">
<center><h1><u>Order Confirmation</u></h1></center>
<div class="container">
  <h2><u>Your Purchase Details</u></h2>
  <c:if test="${ empty p}">
  <table class="table">
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
     <c:forEach items="${allcart}" var="o">
        <tr class="info">
        <td><img alt=""
							src="${cp}/resources/images/${o.courseid}.jpg"
							height="100px" width="100px"></td>
						<td>${o.coursename}</td>
						<td>${o.courseprice}</td>
						<td>${o.totalprice}</td>
						<td><a href="${cp}/remove/${o.cartid}" class="btn btn-default"><span class="glyphicon glyphicon-trash"></span></a></td>
      </tr>  
      </c:forEach>    
        
    </tbody>
  </table>
   <div align="right">
		<h4>Total Cost: <i class="fa fa-rupee"></i>${grandtot}</h4>
		<br>
		</div>
		</c:if>
</div><br><br>


  <c:if test="${not empty p}">
  <div class="container">
  <table class="table">
    <thead>
      <tr>
        <th>Product</th>
					<th>Product Name</th>
					
					
					<th>Price</th>
					<th>Total</th>
					<th></th>
      </tr>
    </thead>
    <tbody>
         <td>${o.courseid}</td>
						<td>${o.coursename}</td>
						
						
						<td>${o.courseprice}</td>
						<td>${o.totalprice}</td>
						</tr>
						</tbody>
</table>
		
		<div align="right">
		<h6>Total Cost: <i class="fa fa-rupee"></i>${grandtot}</h6>
		<br>
		</div>
						   
</div><br><br>
</c:if>
<div class="container">
  <h2><u>Your Billing Details</u></h2>
  <table class="table">
    <thead>
      <tr>
       <th>Name</th>
					<th>Address</th>
					
      </tr>
    </thead>
    <tbody>
      <tr class="danger">
         <td>${u.name}</td>
                  <td>${u.address}</td>
                   
   
      	</tr>
    </tbody>
  </table>
</div><br><br>

<div class="container">
  <h2><u>Your Shipping Details</u></h2>
  <table class="table">
    <thead>
      <tr>
        <!-- <th>Name</th> -->
					<th>address</th>
					
      </tr>
    </thead>
    <tbody>
       <tr class="warning">
        <%-- <td>${uu.username}</td> --%>
                  <td>${uu.address}</td>
                   
      	</tr>
    </tbody>
  </table>
</div><br><br><br>
<center><input type="submit"  value="Submit" class="btn btn-info"></center>
</form:form>

<br>

<%@include file="footer.jsp"%>
</body>
</html>


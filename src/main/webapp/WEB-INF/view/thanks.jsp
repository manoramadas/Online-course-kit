<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="cp" value="${pageContext.request.contextPath}"  />
<html>
<head>
 <%@include file="links.jsp" %>	
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar">
<div>
<%@include file="headers.jsp"%>
</div><br><br>
<style>
div.background {
  background: url(${cp}/resources/images/img28.jpg);
  border: 2px solid black;
   background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}

div.transbox {
  margin: 30px;
  background-color: #ffffff;
  border: 1px solid black;
  opacity: 0.6;
  filter: alpha(opacity=60); /* For IE8 and earlier */
}

div.transbox p {
  margin: 5%;
  font-weight: bold;
  color: #000000;
}
</style>
</head>

<body>
<h3>YOUR ORDER IS CONFIRMED!! HAPPY LEARNING!!</h3>
<br><br><div class="background">

  <div class="transbox">
     <center> <h3 style="font-size:70px; font-family:Papyrus,fantasy"><i><b>THANK YOU</b></i> </h3>
          <p style="font-size:50px; font-family:Papyrus,fantasy">for visiting this website.........</p></center>
  </div>
</div>
        
      <%@include file="footer.jsp" %>
</body>
</html>
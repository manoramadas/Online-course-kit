<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="cp" value="${pageContext.request.contextPath}"/>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online CourseKit Store</title>
       <%@include file="links.jsp" %>	
    </head>
    <body id="myPage" data-spy="scroll" data-target=".navbar">
         <div>
<%@include file="headers.jsp"%>
        </div>
        
        <div id="band" class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>Your feedback is precious to us!</em></p>

  <div class="row">
    <div class="col-md-6">
     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d471218.3856071276!2d88.04953039278531!3d22.676385754021997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f882db4908f667%3A0x43e330e68f6c2cbc!2sKolkata%2C%20West%20Bengal!5e0!3m2!1sen!2sin!4v1605936067530!5m2!1sen!2sin" width="400" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
      
      <p><span class="glyphicon glyphicon-map-marker">Kolkata, India</span>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p>
    </div>
  
    <div class="col-md-6">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
  </div>
<%@include file="footer.jsp"%>
    </body>
</html>

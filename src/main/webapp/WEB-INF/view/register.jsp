<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Online CourseKit Store</title>
       <%@include file="links.jsp" %>	
    </head>
   
        
         <body id="myPage" data-spy="scroll" background ="${cp}/resources/images/img21.jpg" 
         style="background-position: center; background-repeat: no-repeat;
  background-size: cover; background-attachment: fixed;">
             
        <style>
            body {
            width:100%;
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
  }
        * {
  box-sizing: border-box;
}

/* Add styles to the form container */
.container {
 position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
max-width: 50%;
   padding-top: 0px;
  padding-left: 0px;
  padding-right: 0px;
   padding-bottom: 20px;
 opacity:1;

  z-index: 1;
  background-color: white;
  position: absolute;
  align-content: center;
  
}
h5{
color:red;
}
 #reg {
     padding-top:5px;
     padding-left : 5px;
   text-align: center;
   background-color : #333;
   color:#f1f1f1;
  font-size: 30px;
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=email], input[type=number], #address {
  width: 100%;
  padding: 10px;
  margin: 5px 0 10px 0;
  border: none;
  background: #f1f1f1;
  
}

input[type=text]:focus, input[type=password]:focus, input[type=text]:focus,input[type=number]:focus, textarea:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  border: 1px solid #333;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  
  
}

.btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
</style>
        <div class="bg-img" ></div>
        <div>
        <form:form action="${cp}/login" method="post" modelAttribute="u" class="form-horizontal container">
 
      <div id="reg"><h1>REGISTER</h1></div>
      <c:if test="${not empty er }">
      <div >
         
          <div class="form-group">
      <label class="control-label col-sm-2" for="name">NAME:</label>
      <div class="col-sm-9">
        <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
        <form:errors path = "name" cssClass = "error" />
        <h5>${er }</h5>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">EMAIL:</label>
      <div class="col-sm-9">          
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
        <form:errors path = "email" cssClass = "error" />
            <h5>${er }</h5>
      </div>
    </div>
           <div class="form-group">
      <label class="control-label col-sm-2" for="contact">CONTACT:</label>
      <div class="col-sm-9">          
        <input type="number" class="form-control" id="contact" placeholder="Enter phone number" name="contact">
      </div>
    </div>
    <div class="form-group">
             <div class="col-sm-9">  
        <input type="hidden" required="required" class="form-control" name="role" value="user">
      </div>
    </div>
           <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">ADDRESS:</label>
      <div class="col-sm-9">          
        <textarea rows="2" cols="50" class="form-control" id="address" placeholder="Enter address" name="address">
        </textarea>
      </div>
    </div>
           <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">PAYMENT DETAILS:</label>
      <div class="col-sm-9">          
        <input type="text" class="form-control" id="pay_det" placeholder="Optional" name="pay_det">
      </div>
    </div>
           <div class="form-group">
      <label class="control-label col-sm-2" for="password">PASSWORD:</label>
      <div class="col-sm-9">          
        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
        <form:errors path = "password" cssClass = "error" />
            <h5>${er }</h5>
            
      </div>
    </div>

          <button type="submit" class="btn" onclick="register()">Register</button>
      </div>
      </c:if>
      </form:form>
 
        </div>
        
    </body>
    
    
</html>

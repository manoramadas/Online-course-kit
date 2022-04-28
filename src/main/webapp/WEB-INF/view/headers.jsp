<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="cp" value="${pageContext.request.contextPath}"  />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <div>
            <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        <a class="navbar-brand" href="${cp}/home" style="color:#2d2d30 !important; font-family: Matura MT Script Capitals, regular; font-size:30px;">Online CourseKit Store</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${cp}/home">HOME</a></li>
        <!--  <li><a href="">CATEGORY</a></li>-->
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">CATEGORY
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a href="${cp}/viewall">All Sections</a></li>
            <li><a href="${cp}/viewall/NEET">NEET</a></li>
            <li><a href="${cp}/viewall/JEE">JEE</a></li>
          <li><a href="${cp}/viewall/SSC">SSC</a></li> 
            <li><a href="${cp}/viewall/Banking">Banking</a></li>
            <li><a href="${cp}/viewall/IT(coding)">IT(Coding)</a></li>
            <li><a href="${cp}/viewall/others">Others</a></li>
          </ul>
        </li>
        <li><a href="${cp}/contact">CONTACT</a></li>
        <c:if test="${(not empty mv)||(not empty sm)||(not empty sc)}">
       <li><a href="${cp}/cart">CART</a></li>
        <li><a href="${cp}/logout">LOGOUT</a></li>
        </c:if>
	<c:if test="${(empty mv)&&(empty sc)&&(empty sm)}">
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
          
            <li><a href="#" data-toggle="modal" data-target="#myModal">Login</a></li>
             
            <li><a href="${cp}/register">Register</a></li>
          
          </ul>
        </li>
        </c:if>
      </ul>
      <c:if test="${(not empty mv)||(not empty sm)||(not empty sc)}">
      <h5>${sm}</h5>
      <h5>${error}</h5> 
	<h5>${mv}</h5>
	<h5>${sc}</h5>
	</c:if>
    </div>
  </div>
</nav>
  
        </div>
        <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> LOGIN</h4>
        </div>
        <div class="modal-body">
         <form:form action="${cp}/login2" method="post" role="form">
         <input type="hidden" name="role" value="role">
            <div class="form-group">
              <label for="email"><span class="glyphicon glyphicon-user"></span> USERNAME</label>
              <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
            </div>
            <div class="form-group">
              <label for="password"><span class="glyphicon glyphicon-eye-close"></span> PASSWORD</label>
              <input type="password" class="form-control" id="password" placeholder="password" name="password">
            </div>
              <button type="submit" class="btn btn-block">Login
                <span class="glyphicon glyphicon-ok"></span>
              </button>
          </form:form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          <p> <a href="#">Need help?</a></p>
        </div>
      </div>
      </div></div>
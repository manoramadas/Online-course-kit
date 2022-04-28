<!DOCTYPE html>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="cp" value="${pageContext.request.contextPath}"  />
<html lang="en">
  <head>
   <title>Online CourseKit Store</title>    

     <%@include file="links.jsp" %>	
  </head>
<body id="myPage" data-spy="scroll" data-target=".navbar">
<div>
<%@include file="headers.jsp" %>	
</div><br><br><br>

<div class="container">

	<div class="row">

 <div class="col-md-12">
        
<h4 style="background-color: #EF8A24">Course Table</h4><br><br>
        
<div class="table-responsive">

                
             
 <table id="mytable" class="table table-bordred table-striped">
 
 <thead>
                   
              
 <th>Course Image</th>
                    
<th>Course Name</th>
                     
<th>Course price</th>
 <th>Course Description</th> 
 <th>Category ID</th>
 <th>Category Name</th>  
 <th>No. of parts</th>                 
 <c:if test="${not empty sc}">                     
<th>Edit</th>
                                            
<th>Delete</th>
</c:if>
<th>View Products</th>
                   
</thead>
    
<tbody>
    
 <tr>
   <c:forEach items="${a}" var="mn" > 
  <td><img alt="" src="${cp}/resources/images/${mn.co_id}.jpg" height="100px" width="100px"/></td>     
<td>${mn.co_name}</td>    
<td>${mn.co_price}</td>
<td>${mn.co_desc}</td>
<td>${mn.ca_id}</td>
<td>${mn.ca_name}</td> 
<td>${mn.co_parts}</td>
   <c:if test="${not empty sc}">     
<td><a href="${cp}/edit/${mn.co_id}">
          <span class="glyphicon glyphicon-pencil" style="color:blue"></span>
        </a></td>
<td><a href="${cp}/del/${mn.co_id}">
          <span class="glyphicon glyphicon-trash" style="color:red"></span>
        </a></td>
        </c:if>
 <td><a href="${cp}/viewpro/${mn.co_id}" class="btn btn-default " >View</a></td>
    </tr>
    
 </c:forEach>   
            
</tbody>
</table>
<c:if test="${not empty sc}"> 
<a href="${cp}/give" class="btn btn-default " >Add Course</a>
</c:if>
</div>
</div>
</div>
</div>
<br><br>
<%@include file="footer.jsp" %>

</body> 
</html>
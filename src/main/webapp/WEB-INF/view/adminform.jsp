<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online CourseKit Store</title>
<%@include file="links.jsp" %>	
<%@include file="headers.jsp"%>
</head>
<body>

	<form:form action="give1" method="post" modelAttribute="p"
		enctype="multipart/form-data">

		<div class="container">

			<div class="row setup-content" id="ProfileSetup-step">
				<div class="col-xs-12">
					<div class="col-md-12">
						<br />
						<div class="form-horizontal">

							<fieldset>
								<legend style="color: blue">
								</legend>
								<br />

								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-holder-name">
										Name:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="text" class="form-control"
											name="co_name" placeholder="Name" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-holder-name">
										Price:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="text" class="form-control"
											name="co_price" placeholder="Enter price" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-number">Description:</label>
									<div class="col-sm-9">
									<textarea rows="2" cols="50" class="form-control" id="address" placeholder="description" name="co_desc">
       									 </textarea>
										<!--  <input  type="text" required="required"
											class="form-control" name=""  />-->
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-number">Category ID:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="text" required="required"
											class="form-control" name="ca_id"
											placeholder="Enter category ID" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-number">Category Name:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="text" required="required"
											class="form-control" name="ca_name"
											placeholder="Enter category name" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-number">Parts:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="text" required="required"
											class="form-control" name="co_parts"
											placeholder="Enter number of parts" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-holder-name"> File to upload:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="file" required="required"
											class="form-control" name="file" placeholder="file" />
									</div>
								</div>
								
							</fieldset>
						</div>
						<input type="submit" class="pull-right" value="Add">
					</div>
				</div>
			</div>
		</div>
	<br>
	<br>
	<br>
	</form:form>
</body>
<%@include file="footer.jsp"%>
</html>
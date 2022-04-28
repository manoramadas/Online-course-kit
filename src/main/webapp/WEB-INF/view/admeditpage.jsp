<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="${cp}/resources/css/design.css" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</head>
<body id="myPage" data-spy="scroll" data-target=".navbar">
<div>
<%@include file="headers.jsp"%>
</div>
<form:form action="${cp}/editsave" method="post" modelAttribute="p" enctype="multipart/form-data">

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
										</label>
									<div class="col-sm-9">
										<input maxlength="100" type="hidden" class="form-control"
											name="co_id"  value="${p.co_id}"/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-holder-name">
										Name:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="text" class="form-control"
											name="co_name" value="${p.co_name}" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-number">price:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="text" required="required"
											class="form-control" name="co_price" value="${p.co_price}" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-number">Description:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="text" required="required"
											class="form-control" name="co_desc"
											value="${p.co_desc}" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-number">Category ID:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="text" required="required"
											class="form-control" name="ca_id"
											value="${p.ca_id}" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-number">Category Name:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="text" required="required"
											class="form-control" name="ca_name"
											value="${p.ca_name}" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-number">Number of parts:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="text" required="required"
											class="form-control" name="co_parts"
											value="${p.co_parts}" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label" for="card-holder-name"> File to upload:</label>
									<div class="col-sm-9">
										<input maxlength="100" type="file" required="required"
											class="form-control" name="file" value="${p.myurl}" />
									</div>
								</div>
								
							</fieldset>
						</div>
						<input type="submit" class="pull-right" value="Save">
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
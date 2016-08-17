<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="resources/css/demo.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="resources/font-awesome/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Admin</title>
	</head>
	<body>
	
	<c:url var="addAction" value="/Concern/add"></c:url>
	
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title">Share Your Concern</h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form:form class="form-horizontal" role="form" commandName="concern" action="${addAction}">
						
						<div class="form-group">
							<label for="studentId" class="cols-sm-2 control-label">Student ID</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-laptop fa" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="studentId" placeholder="Enter your Student ID"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="name" placeholder="Enter Your Name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="emailId" placeholder="Enter your Email ID"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="mobile" class="cols-sm-2 control-label">Mobile</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-mobile-phone fa" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="mobile"  placeholder="Enter your Mobile No."/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="address" class="cols-sm-2 control-label">Address</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-home fa" aria-hidden="true"></i></span>
									<form:textarea class="form-control" placeholder="Enter Your Address" rows="4" path="address"></form:textarea>
								</div>
							</div>
						</div>

						
					

						<div class="form-group">
							<label for="category" class="cols-sm-2 control-label">Category</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<form:select path="category" class="form-control">
									<option value="Admission">Admission</option>
									<option value="Assessment">Assessment</option>
									<option value="Certificate">Certificate</option>
									<option value="Cloud Services">Cloud Services</option>
									<option value="Courseware">Courseware</option>
									<option value="Downgrade/Refund">Downgrade/Refund</option>
									<option value="Face to Face Delivery">Face to Face Delivery</option>
									<option value="Fee Issue">Fee Issue</option>
									<option value="Machine Room">Machine Room</option>
									<option value="Placement">PP/Placement</option>
									<option value="SLT Classes">SLT Classes</option>
									<option value="Staff Behavior">Staff Behavior</option>
									<option value="Transfer">Transfer</option>
									<option value="Others">Others</option>
									
									</form:select>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="subject" class="cols-sm-2 control-label">Subject</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope-square fa" aria-hidden="true"></i></span>
									<form:input type="text" class="form-control" path="subject"  placeholder="Enter Subject"/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="body" class="cols-sm-2 control-label">Body</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-keyboard-o fa" aria-hidden="true"></i></span>
									<form:textarea class="form-control" placeholder="Enter Your Concern" rows="10" path="body"></form:textarea>
								</div>
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Send</button>
						</div>
						
					</form:form>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="resources/js/bootstrap.js"></script>
	</body>
</html>
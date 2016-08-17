<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Connected</title>
    <!-- Bootstrap Core CSS -->
    <link href="/connected/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="/connected/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <!-- Theme CSS -->
    <link href="/connected/resources/css/grayscale.css" rel="stylesheet">
        <!-- Angular Core JavaScript -->
    <script src="/connected/resources/js/angular.min.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media
    queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file://
    -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head><body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">Menu
            <i class="fa fa-bars"></i>
          </button>
          <a class="navbar-brand page-scroll" href="#page-top" contenteditable="true">
                    <i class="fa -circle fa-thumbs-up"></i> <span class="light">NIIT</span> Camac Street
                </a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
          <ul class="nav navbar-nav">
            <!-- Hidden li included to remove active class from about link when scrolled
            up past about section -->
            <li class="hidden">
              <a href="#page-top"></a>
            </li>
            <li>
              <a class="page-scroll" href="/connected">Home</a>
            </li>
            <li>
              <a class="page-scroll" href="#about">About</a>
            </li>
            <li>
              <a class="page-scroll" href="#contact">Contact</a>
            </li>
            <li>
              <a class="page-scroll" href="Login">Admin Login</a>
            </li>
          </ul>
        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container -->
    </nav>
    <!-- Intro Header -->
    <header class="intro">
      <div class="intro-body">
        <div class="container">
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <h1 class="brand-heading">CONNECTED</h1>
              <p class="intro-text">We are listening!</p>
              <a href="#about" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
            </div>
          </div>
        </div>
      </div>
    </header>
    
<div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <form role="form">
              <div class="form-group">
                <label class="control-label">Document ID</label>
                <input class="form-control" type="text" value="${concern.concernId}" readonly="readonly">
              </div>
              <div class="form-group">
                <label class="control-label">Student ID</label>
                <input class="form-control" type="text" value="${concern.studentId}" readonly="readonly">
              </div>
              <div class="form-group">
                <label class="control-label">Name</label>
                <input class="form-control" type="text" value="${concern.name}" readonly="readonly">
              </div>
              <div class="form-group">
                <label class="control-label">Email ID</label>
                <input class="form-control" type="text" value="${concern.emailId}" readonly="readonly">
              </div>
              <div class="form-group">
                <label class="control-label">Mobile No</label>
                <input class="form-control" type="text" value="${concern.mobile}" readonly="readonly">
              </div>
              <div class="form-group">
                <label class="control-label">Address</label>
                <textarea class="form-control" type="text" rows="5" readonly="readonly">${concern.address}</textarea>
              </div>
              <div class="form-group">
                <label class="control-label">Category</label>
                <input class="form-control" type="text" value="${concern.category}" readonly="readonly">
              </div>
              <div class="form-group">
                <label class="control-label">Date Reported</label>
                <input class="form-control" type="text" value="${concern.dateReported}" readonly="readonly">
              </div>
              <div class="form-group">
                <label class="control-label">Concern Open?</label>
                <input class="form-control" type="text" value="${concern.open}" readonly="readonly">
              </div>
              <div class="form-group">
                <label class="control-label">Subject</label>
                <input class="form-control" type="text" value="${concern.subject}" readonly="readonly">
              </div>
              <div class="form-group">
                <label class="control-label">Content</label>
                <textarea class="form-control" type="text" rows="15" readonly="readonly">${concern.body}</textarea>
              </div>
              <a class="btn btn-danger" href="/connected/EditConcern/${concern.concernId}">Mark As Closed</a>
            <a class="btn btn-primary" href="/connected/Admin">Go Back</a>
            </form>
          </div>
        </div>
      </div>
    </div>
   

    <!-- Footer -->
    <footer>
      <div class="container text-center">
        <p>Copyright � Somsubhra Mukherjee 2016</p>
      </div>
    </footer>
    
    
    <!-- jQuery -->
    <script src="/connected/resources/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="/connected/resources/js/bootstrap.min.js"></script>
    <!-- Angular Core JavaScript -->
    <script src="/connected/resources/js/angular.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <!-- Google Maps API Key - Use your own API key to enable the
    map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/
    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&amp;sensor=false"></script>
    <!-- Theme JavaScript -->
    <script src="/connected/resources/js/grayscale.min.js"></script>
  

</body></html>
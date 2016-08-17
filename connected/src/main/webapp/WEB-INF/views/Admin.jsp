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
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <!-- Theme CSS -->
    <link href="resources/css/grayscale.css" rel="stylesheet">
        <!-- Angular Core JavaScript -->
    <script src="resources/js/angular.min.js"></script>

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
    
    
    <div  ng-app="repeatSample" class="section">
	<div class="container">
    <!-- Angular script to generate the concern list and sorting -->
		<!-- ============================================================================================== -->

		<script>
			var c = ${concerns};

			angular.module('repeatSample', []).controller('repeatController',
					function($scope) {
						$scope.concerns = c;

						$scope.sort = function(keyname) {
							$scope.sortKey = keyname; //set the sortKey to the param passed
							$scope.reverse = !$scope.reverse; //if true make it false and vice versa
						}

					});
			
		</script>

		<!-- Textbox used to implement search option using Angular -->
		<!-- ============================================================================================== -->

		<div class="bs-component" ng-controller="repeatController">

			<form class="form-inline">
				<div class="form-group">
					<label>Search</label> <input type="text" ng-model="search"
						class="form-control" placeholder="Search">
				</div>
			</form>


			<!-- table to show data coming from the JSON file -->
			<!-- ============================================================================================== -->


			<table class="table table-striped table-hover">
				<thead>
					<tr>

						<!-- Performing sort functionality using angular both in ascending and descending manner -->
						<!-- ============================================================================================== -->
						<th ng-click="sort('concernId')">ID <span
							class="glyphicon sort-icon" ng-show="sortKey=='concernId'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('category')">Category <span
							class="glyphicon sort-icon" ng-show="sortKey=='category'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('subject')">Subject<span
							class="glyphicon sort-icon" ng-show="sortKey=='subject'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						<th ng-click="sort('datereported')">Date Reported <span
							class="glyphicon sort-icon" ng-show="sortKey=='datereported'"
							ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</th>
						
						<!-- <th>More Info</th> -->

					</tr>
				</thead>
				<tbody>
					<!-- dynamically generating the table data -->
					<!-- ============================================================================================== -->

					<tr
						ng-repeat="concern in concerns|orderBy:sortKey:reverse|filter:search">
						<td>{{concern.concernId}}</td>
						<td>{{concern.category}}</td>
						<td>{{concern.subject}}</td>
						<td>{{concern.dateReported}}</td>


						<!-- Info button that maps to the ProductDetails view. Required Info for ProductDetails view is passed through request parameters -->
						<!-- ============================================================================================== -->

						<td><a
							href="/connected/ShowConcern/{{concern.concernId}}"><i
								class="fa fa-3x fa-fw fa-exclamation-circle"></i></a></td>
					</tr>
				</tbody>
			</table>

		</div>
    </div>
    </div>
   

    <!-- Footer -->
    <footer>
      <div class="container text-center">
        <p>Copyright © Somsubhra Mukherjee 2016</p>
      </div>
    </footer>
    
    
    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- Angular Core JavaScript -->
    <script src="resources/js/angular.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <!-- Google Maps API Key - Use your own API key to enable the
    map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/
    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&amp;sensor=false"></script>
    <!-- Theme JavaScript -->
    <script src="resources/js/grayscale.min.js"></script>
  

</body></html>
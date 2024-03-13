<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<meta name="viewport" content="width-device-width, initial-scale=1.0">

<style>

.navbg{
	background-color:  #FFFFFF;
}

.navlink{
	margin-left: auto;
}
.imgSize{
	width: 100px;
	height: 60px;
	margin-right: 20px;
}
.logoText{
	font-size: 24px;
	color: #4d88ff;
}
.navText{
	font-size: 16px;
	color: #707070;
}
.logoName{
    font-family: Algerian;
    color:  #000099;
}

.nav-item a:hover{
	color: #FFA500;
}
.nav-link.clicked {
  color: red; /* Color when clicked */
}
.nav-link .active{
	color: orange !important;
}
.navtext{
	color: black !important;
}
</style>
<title>Pristine Public School</title>
</head>
<body>
<nav class="navbar navbar-expand-md text-uppercase fw-bold fixed-top navbg shadow ">
<!--   <div class="container">-->
	
	<img src="images/schoollogo.PNG" alt="logo" class="imgSize ms-2">
	<h4 class="logoName">Pristine Public School</h4>
	<button class="navbar-toggler navbar-light me-3" data-toggle="collapse" data-target="#mynav">
		<span class="navbar-toggler-icon navicon"></span>
	</button>
	<div class="collapse navbar-collapse " id="mynav">
	<ul class="navbar-nav navlink ">
		<li class="nav-item "><a href="index.jsp" class="nav-link mx-2">Home</a></li>
		<li class="nav-item"><a href="newenquiryform.jsp" class="nav-link mx-2">Enquiry</a></li>
		<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle  mx-2" role="button" data-bs-toggle="dropdown" aria-expanded="false">Facilities</a>
		<ul class="dropdown-menu">
          	<li><a href="librarypage.jsp" class="dropdown-item">Libraries</a></li>
          	<li><a href="computerlab.jsp" class="dropdown-item" >Computer Labs</a></li>
          	<li><a href="sciencelab.jsp" class="dropdown-item">Science Labs</a></li>
          </ul>
		</li>
		<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle  mx-2" role="button" data-bs-toggle="dropdown" aria-expanded="false">Admission</a>
		<ul class="dropdown-menu">
          	<li><a href="admissionnew.jsp" class="dropdown-item">Form</a></li>
          	<li><a href="fees.jsp" class="dropdown-item">Fee Structure</a></li>
          	<li><a href="paymentterms.jsp" class="dropdown-item">Payment Terms</a></li>
          	<li><a href="#" class="dropdown-item">Payment Gateway</a></li>
          </ul>
		</li>
		<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle  mx-2" role="button" data-bs-toggle="dropdown" aria-expanded="false">Login</a>
		<ul class="dropdown-menu">
          	<li><a href="studentlogin.jsp" class="dropdown-item">Student</a></li>
          	<li><a href="stafflogin.jsp" class="dropdown-item">Staff</a></li>
          </ul>
		</li>
		
		<li class="nav-item"><a href="aboutus.jsp" class="nav-link mx-2">About US</a></li>
		
		
	</ul>
	</div>
<!--  </div> -->
</nav>
</body>
</html>
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

<!-- External css -->
<link rel="stylesheet" type="text/css" href="css/newheader.css">

<!-- dropdown script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<!-- login logos -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
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
          	<li><!-- Popup Login -->
          		<div class="logcontainer">
                            <div class="item-inner">
                               <h3></h3>
                               <div class="read-more-cont">
                                   <div class="poploginbody">
                                    <div class="poplogincontainer">
                                        <div class="poploginwrapper">
                                            <div class="poplogintitle"><span>Student Login</span>
                                            </div>
                                                <form class="poploginform" action="StudentValidation" method="post">
                                                    <div class="poplrow">
                                                        <i class="fas fa-user"></i>
                                                        <input type="text" placeholder="Username" name="uname" required>
                                                    </div>
                                                    <div class="poplrow">
                                                        <i class="fas fa-lock"></i>
                                                        <input type="password" placeholder="Password" name="pass" required>
                                                    </div>
                                                    <div class="poppass"><a href="#"> Forgot password?</a></div>
                                                    <div class="poplrow popsbbutton">
                                                        <input type="submit" value="Login">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                               </div>
                               <button class="dropdown-item popup-btn" type="button">Student</button>
                            </div>
            		</div>
            		<!-- read more popup box start -->
            <div class="popup-box">
                <div class="popup-content">
                    <div class="popup-header">
                        <h3></h3>
                    <span class="popup-close-icon">&times;</span>
                </div>
                <div class="popup-body"></div>
        
                </div>
             </div>
            <!-- read more popup box end -->
          	</li>
          	<li>
          	 <div class="slogcontainer">
                            <div class="sitem-inner">
                               <h2></h2>
                               <div class="sread-more-cont">
                                   <div class="poploginbody">
                                    <div class="poplogincontainer">
                                        <div class="poploginwrapper">
                                            <div class="poplogintitle"><span>Staff Login</span></div>
                                                <form class="poploginform" action="StaffValidation" method="post">
                                                    <div class="poplrow">
                                                        <i class="fas fa-user"></i>
                                                        <input type="text" placeholder="Username" name="unames" required>
                                                    </div>
                                                    <div class="poplrow">
                                                        <i class="fas fa-lock"></i>
                                                        <input type="password" placeholder="Password" name="passd" required>
                                                    </div>
                                                    <div class="poppass"><a href="#"> Forgot password?</a></div>
                                                    <div class="poplrow popsbbutton">
                                                        <input type="submit" value="Login">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                               </div>
                               <button class="dropdown-item popup-btn" type="button">Staff</button>
                            </div>
            </div>
            <!-- read more popup box start -->
            <div class="spopup-box">
                <div class="spopup-content">
                    <div class="spopup-header">
                        <h2></h2>
                    <span class="spopup-close-icon">&times;</span>
                </div>
                <div class="spopup-body"></div>
        
                </div>
             </div>
            <!-- read more popup box end -->
          	</li>
          </ul>
		</li>
		
		<li class="nav-item"><a href="aboutus.jsp" class="nav-link mx-2">About US</a></li>

	</ul>
	</div>
<!--  </div> -->
</nav>
<script src="javascript/loginpopup.js"></script>
<script src="javascript/staffpopup.js"></script>
</body>
</html>
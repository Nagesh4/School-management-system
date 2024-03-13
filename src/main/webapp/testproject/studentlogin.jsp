<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="mainHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Login</title>
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" href="css/studentlogin.css">
</head>
<body>
	<div class="loginbody">
	<div class="logincontainer">
		<div class="loginwrapper">
			<div class="logintitle"><span>Student Login</span></div>
				<form class="loginform" action="#">
					<div class="lrow">
 						<i class="fas fa-user"></i>
 						<input type="text" placeholder="Email or phone" required>
					</div>
					<div class="lrow">
 						<i class="fas fa-lock"></i>
 						<input type="password" placeholder="Password" required>
					</div>
 					
					
					<div class="pass"><a href="#"> Forgot password?</a></div>
					<div class="lrow sbbutton">
						<input type="submit" value="Login">
					</div>
				</form>
			</div>
			</div>
		</div>
</body>
</html>

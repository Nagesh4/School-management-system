<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Login</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

<style>	
	*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	.loginbody{
		background: #fff;	
		overflow: hidden;
		font-family: times new roman;	
	}
	.logincontainer{
		max-width: 440px;
		padding: 0 20px;
		margin: 170px auto;
		
	}
	.loginwrapper{
		width: 100%;
		background: #fff;
		border-radius: 5px;
		border: 1px solid #808080;
	}
	.loginwrapper .logintitle{
		line-height: 80px;
		background: #f8f8f8;
		text-align: center;
		border-radius: 5px 5px 0 0;
		font-size: 25px;
		font-weight: 600;
		color: #3e9bad;
		border-bottom: 1px solid #808080;
	}
	.loginwrapper form{
		padding: 30px 25px 25px 25px;
	}
	.loginwrapper form .lrow{
		height: 45px;
		margin-bottom: 15px;
		position: relative;
	}
	.loginwrapper form .lrow input{
		height: 100%;
		width: 100%;
		padding-left: 60px;
		outline: none;
		border-radius: 5px;
		border: 1px solid grey;
		font-size: 16px;
		transition: all 0.3s ease;
	}
	form .lrow input:focus{
		border-color: #16a085;
		box-shadow: inset 0px 0px 2px 2px rgba(26,188,156,0.25);
	}
	.loginwrapper form .lrow i{
		position: absolute;
		width: 47px;
		height: 100%;
		color: grey;
		font-size: 18px;
		background: #f8f8f8;
		border: 1px solid grey;
		border-radius: 5px 0 0 5px;
		display: flex;
		align-items: center;
		justify-content: center;
		
	}
	.loginwrapper form .sbbutton input{
		color: #fff;
		font-size: 20px;
		font-weight: 500;
		font-size: 18px;
		padding-left: 0px;
		background: #3e9bad;
		border: 1px solid #3e9bad;
		cursor: pointer;
	}
	.loginwrapper form .sbbutton input:hover{
		background: #1576bf;
	}
	.loginwrapper form .pass{
		margin: -6px 0 15px 0;
	}
	.loginwrapper form .pass a{
		color: #3e9bad;
		font-size: 17px;
		text-decoration: none;
	}
	.loginwrapper form .pass a:hover{
		text-decoration: underline;
	}
</style>
</head>
<body>
	<div class="loginbody">
	<div class="logincontainer">
		<div class="loginwrapper">
			<div class="logintitle"><span>Staff Login</span></div>
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
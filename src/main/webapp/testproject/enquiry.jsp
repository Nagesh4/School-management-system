<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <!--  <%@include file="newheader.jsp" %> --> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<meta name="viewport" content="width-device-width, initial-scale=1.0">
	<style>
	*{
		padding: 0;
		margin: 0;
		box-sizing: border-box;
	}
	body{
		/* background: url(images/back1.jpg);
		background-size: cover; */
		
	}
	.enquirybody{
		margin-top: 10%;
		margin-bottom: 4%;
		margin-left: 25%;
		margin-right: 20%;
		height: 100vh;
		justify-items: center;
		align-items: center;
		
	}
	.enquirycontainer{
		align: center;
		width: 100%;
		max-width: 650px;
		background: rgba(0,0,0,0.5);
		padding: 28px;
		margin: 0 28px;
		border-radius: 10px;
		box-shadow: inset -2px 2px 2px white;
	}
	.form-title{
		font-size: 26px;
		font-weight: 600;
		text-align: center;
		padding-bottom: 6px;
		color: white;
		text-shadow: 2px 2px 2px black;
		border-bottom: solid 1px white;
	}
	.main-user-info{
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
		padding: 20px 0;
	}
	.user-input-box:nth-child(2n){
		justify-content: end;
	}
	.user-input-box{
		display: flex;
		flex-wrap: wrap;
		width: 50%;
		padding-bottom: 15px;
	}
	.user-input-box label{
		width: 95%;
		color: white;
		font-size: 20px;
		font-weight: 400;
		margin: 5px 0;
	}
	.user-input-box input{
		height: 40px;
		width: 95%;
		border-radius: 7px;
		outline: none;
		border: 1px solid grey;
		padding: 0 10px;
	}
	.user-input-box select{
		height: 40px;
		width: 95%;
		border-radius: 7px;
		outline: none;
		border: 1px solid grey;
		padding: 0 10px;
	}
	.user-input-box textarea{
		width: 100%;
		border-radius: 7px;
		outline: none;
		border: 1px solid grey;
		padding: 0 10px;
	}
	.gender-title{
		color: white;
		font-size: 24px;
		font-weight: 600;
		border-bottom: 1px solid white;
	}
	.gender-category{
		margin: 15px 0;
		color: white;
	}
	.gender-category label{
		padding: 0 20px 0 5px;
	}
	.gender-category label,
	.gender-category input,
	.form-submit-btn input{
		cursor: pointer;
	}
	.form-submit-btn{
		margin-top: 40px;
	}
	.form-submit-btn input{
		display: block;
		width: 100%;
		margin-top: 10px;
		font-size: 20px;
		padding: 10px;
		border: none;
		border-radius: 3px;
		color: rgb(209,209,209);
		background: rgba(63,114,76,0.7);
	}
	.form-submit-btn input:hover{
		background: rgba(56,204,93,0.7);
		color: rgb(255,255,255);
	}
	@media(max-width: 767px){
		.enquirybody{
			margin-left: 0%;
			margin-right: 10%;
		}
		.enquirycontainer{
			min-width: 280px;
		}
		.user-input-box{
			margin-bottom: 12px;
			width: 100%;
		}
		.user-input-box:nth-child(2n){
			justify-content: space-between;
		}
		.gender-category{
			display: flex;
			justify-content: space-between;
			width: 100%;
		}
		.main-user-info{
			max-height: 380px;
			overflow: auto;
		}
		.main-user-info::-webkit-scrollbar{
			width: 0;
		}
	}

	</style>
<title>Enquiry Form</title>
</head>
<body>
<div class="enquirybody">
<div class="enquirycontainer">
	<h1 class="form-title">Enquiry Form</h1>
	<form action="EnquiryForm" method="post">
		<div class="main-user-info">
			<div class="user-input-box">
				<label for="studentName">Student Name</label>
				<input type="text" id="studentName" name="studentName" placeholder="Enter Full Name">
			</div>
			<div class="user-input-box">
				<label for="parentnamee">Parent Name</label>
				<input type="text" id="parentname" name="parentname" placeholder="Parent Name">
			</div>
			<div class="user-input-box">
				<label for="classname">Admission Class</label>
				<select name="admission_class" id="admissionclass">
					<option>-Select Class-</option>
  					<option value="nursery">Nursery</option>
  					<option value="jrkg">JR KG</option>
  					<option value="srkg">SR KG</option>
  					<option value="first">I</option>
  					<option value="second">II</option>
  					<option value="third">III</option>
  					<option value="forth">IV</option>
  					<option value="fifth">V</option>
  					<option value="sixth">VI</option>
  					<option value="seventh">VII</option>
  					<option value="eighth">VIII</option>
  					<option value="ninth">IX</option>
  					<option value="tenth">X</option>
				</select>
			</div>
			<div class="user-input-box">
				<label for="dob">Date of birth</label>
				<input type="date" id="dob" name="dob" placeholder="Confirm Password">
			</div>
			<div class="user-input-box">
				<label for="email">Parent Email</label>
				<input type="email" id="email" name="email" placeholder="Enter Email">
			</div>
			<div class="user-input-box">
				<label for="phoneNumber">Parent Phone No.</label>
				<input type="text" id="phoneNumber" name="phoneNumber" placeholder="Enter Phone Number">
			</div>
			<div class="user-input-box">
				<label for="enquiry">Enter your enquiry query</label>
				 <textarea id="w3review" name="w3review" rows="4" cols="80"></textarea>
			</div>
			
		</div>
		 <div class="gender-details-box">
			<span class="gender-title">Gender</span>
			<div class="gender-category">
				<input type="radio" name="gender" id="male">
				<label for="male">Male</label>
				<input type="radio" name="gender" id="female">
				<label for="female">Female</label>
				<input type="radio" name="gender" id="other">
				<label for="other">Other</label>
			</div>
		</div>
		<div class="form-submit-btn">
			<input type="submit" value="Submit">
		</div>
	</form>
</div>
</div>
</body>
</html>

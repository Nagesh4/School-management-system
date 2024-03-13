<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="newheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/newenquiryform.css">
<title>Enquiry Form</title>
<script type="text/javascript">
function validate() {
	var sname=document.getElementById("studentname").value;
    var pname=document.getElementById("parentname").value;
    var admissionclass=document.getElementById("admissionclass").value;
    var mobno=document.getElementById("mobileno").value;
    var emailid=document.getElementById("emailid").value;
    var enquirymsg=document.getElementById("enquirymsg").value;
    var mobregx= /^[6-9][0-9]*$/;
    var nameregx=/^([a-zA-Z]+)(\s?[a-zA-Z]+\s?)?(\s?[a-zA-Z]+)?$/;
    var emailregx=/^([a-zA-Z0-9\.-]+)@([a-z0-9]+).([a-z]{2,8})(.[a-z]{2,8})?$/;
    if(sname.trim()==""){
      alert("Student name cannot be blank");
      document.getElementById("studentname").focus();
      return false;
    }else if(sname.length>50){
        alert("Student name should be less than 50 characters");
        document.getElementById("studentname").focus();
        return false;
    }else if(!sname.match(nameregx)){
      alert("Student name should not contain numbers/special characters/extra spaces");
      document.getElementById("studentname").focus();
      return false;
    }else if(pname.trim()==""){
      alert("Parent name cannot be blank");
      document.getElementById("parentname").focus();
      return false;
    }else if(pname.length>50){
        alert("Parent name should be less than 50 characters");
        document.getElementById("parentname").focus();
        return false;
    }else if(!pname.match(nameregx)){
        alert("Parent name should not contain numbers/special characters/extra spaces");
        document.getElementById("studentname").focus();
        return false;
	}else if(admissionclass.trim()==""){
      alert("Admission class cannot be blank");
      document.getElementById("admissionclass").focus();
      return false;
    }else if(mobno.trim()==""){
      alert("Mobile no. cannot be blank");
      document.getElementById("mobileno").focus();
      return false;
    }else if(!mobno.match(mobregx)){
      alert("Invalid mobile no");
      document.getElementById("mobileno").focus();
      return false;
    }
    else if(mobno.length <10 || mobno.length >10){
      alert("Mobile length is not valid");
      document.getElementById("mobileno").focus();
      return false;
    }
    else if(emailid.trim()==""){
      alert("Email id cannot be blank");
      document.getElementById("emailid").focus();
      return false;
    }else if(!emailid.match(emailregx)){
      alert("Invalid email id");
      document.getElementById("emailid").focus();
      return false;
    }else if(emailid.length>50){
        alert("Email id should be less than 50 characters");
        document.getElementById("emailid").focus();
        return false;
    }else if(enquirymsg.trim()==""){
      alert("Enquiry msg cannot be empty");
      document.getElementById("enquirymsg").focus();
      return false;
    }else if(enquirymsg.length>150){
    	alert("Enquiry message should be less than 150 characters");
        document.getElementById("enquirymsg").focus();
        return false;
      }
   
  }
</script>
</head>
<body>
<div class="admission_body">
        <form onsubmit="return validate()" action="EnquiryForm" method="post">
            <div class="admissioncontainer">
                <div class="logintitle"><span>Enquiry Form</span>
                <p class="enquiry_data">${error}</p>
                </div>
                <div class="main-user-info">
                  <div class="user-input-box">
                    <label for="studentname"
                      >Student Name <span class="astrix_sign">&#42;</span></label
                    >
                    <input type="text" id="studentname" name="studentname" />
                  </div>
                  <div class="user-input-box">
                    <label for="parentname">Parent Name <span class="astrix_sign">&#42;</span></label>
                    <input
                      type="text"
                      id="parentname"
                      name="parentname"
                    />
                  </div>
                  <div class="user-input-box">
                    <label for="classname">Admission Class <span class="astrix_sign">&#42;</span></label>
                    <select name="admission_class" id="admissionclass">
                        <option value="">-Select Class-</option>
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
                    <label for="mobileno"
                      >Mobile No. <span class="astrix_sign">&#42;</span></label
                    >
                    <input type="text" id="mobileno" name="mobileno" />
                  </div>
                  <div class="user-input-box">
                    <label for="emailid">Email Id <span class="astrix_sign">&#42;</span></label>
                    <input type="text" id="emailid" name="emailid" />
                  </div>
                  <div class="user-input-box">
                    <label for="enquirymsg">Enter your enquiry query</label>
                     <textarea id="enquirymsg" name="enquirymsg" rows="4" cols="80"></textarea>
                  </div>
                  <div class="submit_btn">
                    <input type="submit" value="Submit">
                </div>
                </div>
              </div>
        </form>
    </div>
</body>
</html>
<%@include file="footernew.jsp" %>
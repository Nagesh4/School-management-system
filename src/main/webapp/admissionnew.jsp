<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="newheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/admissionnew.css">
<title>Admission Form</title>
<script type="text/javascript">
      function admissionvalidate(){
        var admission=document.getElementById("admissionclass").value;
        var studentfirst=document.getElementById("firstname").value;
        var studentmiddle=document.getElementById("middlename").value;
        var studentlast=document.getElementById("lastname").value;
        var dob=document.getElementById("dob").value;
        var male=document.getElementById("male");
        var female=document.getElementById("female");
        var mothertongue=document.getElementById("mothertongue").value;
        var nationality=document.getElementById("nationality").value;
        var religion=document.getElementById("religion").value;
        var caste=document.getElementById("caste").value;
        var income=document.getElementById("income").value;
        var relationwithstudent=document.getElementById("relationwithstudent").value;
        var pointofcontact=document.getElementById("pointofcontact").value;
        var fathername=document.getElementById("fathername").value;
        var fatheroccupation=document.getElementById("fatheroccupation").value;
        var fatherno=document.getElementById("fatherno").value;
        var fatheremail=document.getElementById("fatheremail").value;
        var mothername=document.getElementById("mothername").value;
        var motheroccupation=document.getElementById("motheroccupation").value;
        var motherno=document.getElementById("motherno").value;
        var motheremail=document.getElementById("motheremail").value;
        var address1=document.getElementById("address1").value;
        var address2=document.getElementById("address2").value;
        var country=document.getElementById("country").value;
        var state=document.getElementById("state").value;
        var pincode=document.getElementById("pincode").value;
        var city=document.getElementById("city").value;
        var photo=document.getElementById("photo");
        var adharcard=document.getElementById("adharcard");
        var birthcertificate=document.getElementById("birthcertificate");
        var parentadharcard=document.getElementById("parentadharcard");
        var preschoolname=document.getElementById("preschoolname").value;
        var preschoolclass=document.getElementById("preschoolclass").value;
        var preschoolleave=document.getElementById("preschoolleave").value;
        var dyes=document.getElementById("dyes");
        var dno=document.getElementById("dno");
        var pyes=document.getElementById("pyes");
        var pno=document.getElementById("pno");
        var myes=document.getElementById("myes");
        var mno=document.getElementById("mno");
        var specialneedremark=document.getElementById("specialneedremark").value;
        var terms=document.getElementById("terms");
        var nameregx=/^([a-zA-Z]+)$/;
        var mobregx= /^[6-9][0-9]*$/;
       // var spaceregx=/^([a-zA-Z]+)\s{3}?$/;
        var mulspacer=/^([a-zA-Z\s]+)$/;
        var emailregx=/^([a-zA-Z0-9\.-]+)@([a-z0-9]+).([a-z]{2,8})(.[a-z]{2,8})?$/;
        var schnameregx=/^([a-zA-Z\.-\s]+)$/;
        var numregx=/^([0-9]+)$/;
        if(admission.trim()==""){
          alert("Admission class cannot be empty");
          document.getElementById("admissionclass").focus();
          return false;
        }
        else if(studentfirst.trim()==""){
          alert("Student first name cannot be empty");
          document.getElementById("firstname").focus();
          return false;
        }
        else if(!studentfirst.match(nameregx)){
          alert("Student firstname should not contain numbers/special characters/extra spaces");
          document.getElementById("firstname").focus();
          return false;
        }
        else if(studentmiddle.trim()!="" && !studentmiddle.match(nameregx)){
          alert("Student middlename should not contain numbers/special characters/extra spaces");
          document.getElementById("middlename").focus();
          return false;
        }
        else if(studentlast.trim()==""){
          alert("Student last name cannot be empty");
          document.getElementById("lastname").focus();
          return false;
        }
        else if(!studentlast.match(nameregx)){
          alert("Student lastname should not contain numbers/special characters/extra spaces");
          document.getElementById("lastname").focus();
          return false;
        }
        else if(dob.trim()==""){
          alert("Date of birth cannot be empty");
          document.getElementById("dob").focus();
          return false;
        }
        else if(male.checked==false && female.checked==false){
          alert("Please select gender");
          document.getElementById("male").focus();
          return false;
        }
        else if(mothertongue.trim()==""){
          alert("Mother tongue cannot be empty");
          document.getElementById("mothertongue").focus();
          return false;
        }
        else if(!mothertongue.match(nameregx)){
          alert("Mother tongue should not contain numbers/special characters/extra spaces");
          document.getElementById("mothertongue").focus();
          return false;
        }
        else if(nationality.trim()==""){
          alert("Nationality cannot be empty");
          document.getElementById("nationality").focus();
          return false;
        }
        else if(!nationality.match(nameregx)){
          alert("Nationality should not contain numbers/special characters/extra spaces");
          document.getElementById("nationality").focus();
          return false;
        }
        else if(religion.trim()==""){
          alert("Religion cannot be empty");
          document.getElementById("religion").focus();
          return false;
        }
        else if(!religion.match(nameregx)){
          alert("Religion should not contain numbers/special characters/extra spaces");
          document.getElementById("religion").focus();
          return false;
        }
        else if(income.trim()==""){
          alert("Income cannot be empty");
          document.getElementById("income").focus();
          return false;
        }
        else if(income.length<5){
          alert("Income length cannot be less than 5");
          document.getElementById("income").focus();
          return false;
        }
        else if(!income.match(numregx)){
          alert("Income should contain only numbers");
          document.getElementById("income").focus();
          return false;
        }
        else if(relationwithstudent.trim()==""){
          alert("Relation with student cannot be empty");
          document.getElementById("relationwithstudent").focus();
          return false;
        }
        else if(pointofcontact.trim()==""){
          alert("Contact cannot be empty");
          document.getElementById("pointofcontact").focus();
          return false;
        }
        else if(!pointofcontact.match(mobregx)){
          alert("Invalid mobile no");
          document.getElementById("pointofcontact").focus();
          return false;
        }
        else if(pointofcontact.length <10 || pointofcontact.length >10){
          alert("Mobile length is not valid");
          document.getElementById("pointofcontact").focus();
          return false;
        }
        else if(fathername.trim()==""){
          alert("Father name cannot be empty");
          document.getElementById("fathername").focus();
          return false;
        }
        else if(!fathername.match(mulspacer)){
          alert("Father name should not contain numbers/special characters");
          document.getElementById("fathername").focus();
          return false;
        }
        else if(fatheroccupation.trim()==""){
          alert("Father Occupation cannot be empty");
          document.getElementById("fatheroccupation").focus();
          return false;
        }
        else if(!fatheroccupation.match(mulspacer)){
          alert("Father name should not contain numbers/special characters");
          document.getElementById("fatheroccupation").focus();
          return false;
        }
        else if(fatherno.trim()==""){
          alert("Father number cannot be empty");
          document.getElementById("fatherno").focus();
          return false;
        }
        else if(!fatherno.match(mobregx)){
          alert("Invalid mobile no");
          document.getElementById("fatherno").focus();
          return false;
        }
        else if(fatherno.length <10 || fatherno.length >10){
          alert("Mobile length is not valid");
          document.getElementById("fatherno").focus();
          return false;
        }
        else if(!fatheremail.match(emailregx) && fatheremail!=""){
          alert("Invalid email id");
          document.getElementById("fatheremail").focus();
          return false;
        }
        else if(mothername.trim()==""){
          alert("Mother name cannot be empty");
          document.getElementById("mothername").focus();
          return false;
        }
        else if(!mothername.match(mulspacer)){
          alert("Mother name should not contain numbers/special characters/extra spaces");
          document.getElementById("Mothername").focus();
          return false;
        }
        else if(motheroccupation.trim()==""){
          alert("Mother occupation cannot be empty");
          document.getElementById("motheroccupation").focus();
          return false;
        }
        else if(!motheroccupation.match(mulspacer)){
          alert("Mother occupation should not contain numbers/special characters");
          document.getElementById("motheroccupation").focus();
          return false;
        }
        else if(!motherno.match(mobregx)){
          alert("Invalid mobile no");
          document.getElementById("motherno").focus();
          return false;
        }
        else if(motherno.length <10 || motherno.length >10){
          alert("Mobile length is not valid");
          document.getElementById("fatherno").focus();
          return false;
        }
        else if(motheremail.trim()!="" && !motheremail.match(emailregx)){
          alert("Invalid email id");
          document.getElementById("motheremail").focus();
          return false;
        }
        else if(address1.trim()==""){
          alert("Address1 cannot be empty");
          document.getElementById("address1").focus();
          return false;
        }
        else if(address2.trim()==""){
          alert("Address2 cannot be empty");
          document.getElementById("address2").focus();
          return false;
        }
        else if(country.trim()==""){
          alert("Country cannot be empty");
          document.getElementById("country").focus();
          return false;
        }
        else if(!country.match(nameregx)){
          alert("Country should not contain numbers/special characters/extra spaces");
          document.getElementById("country").focus();
          return false;
        }
        else if(state.trim()==""){
          alert("State cannot be empty");
          document.getElementById("state").focus();
          return false;
        }
        else if(!state.match(mulspacer)){
          alert("State should not contain numbers/special characters");
          document.getElementById("state").focus();
          return false;
        }
        else if(pincode.trim()==""){
          alert("Pincode cannot be empty");
          document.getElementById("pincode").focus();
          return false;
        }
        else if(pincode.length <6 || pincode.length >6){
          alert("Pincode length is not valid");
          document.getElementById("pincode").focus();
          return false;
        }
        else if(!pincode.match(numregx)){
          alert("Pincode should contains only numbers");
          document.getElementById("pincode").focus();
          return false;
        }
        else if(city.trim()==""){
          alert("City cannot be empty");
          document.getElementById("city").focus();
          return false;
        }
        else if(!city.match(mulspacer)){
          alert("City should not contain numbers/special characters");
          document.getElementById("state").focus();
          return false;
        }
        else if(photo.value==""){
          alert("Uploading photo is mandatory");
          document.getElementById("photo").focus();
          return false;
        }
        else if(adharcard.value==""){
          alert("Uploading adharcard is mandatory");
          document.getElementById("adharcard").focus();
          return false;
        }
        else if(birthcertificate.value==""){
          alert("Uploading birthcertificate is mandatory");
          document.getElementById("birthcertificate").focus();
          return false;
        }
        else if(parentadharcard.value==""){
          alert("Uploading parentadharcard is mandatory");
          document.getElementById("parentadharcard").focus();
          return false;
        }
        else if(preschoolname.trim()!="" && !preschoolname.match(schnameregx)){
          alert("Previous school name should not contain numbers/special characters");
          document.getElementById("preschoolname").focus();
          return false;
        }
        else if(preschoolleave.trim()!="" && !preschoolleave.match(schnameregx)){
          alert("Reason for leaving should not contain numbers/special characters");
          document.getElementById("preschoolleave").focus();
          return false;
        }
        else if(dyes.checked==false && dno.checked==false){
          alert("Provide input for learning disablity");
          document.getElementById("dyes").focus();
          return false;
        }
        else if(pyes.checked==false && pno.checked==false){
          alert("Provide input for physically challenged");
          document.getElementById("pyes").focus();
          return false;
        }
        else if(myes.checked==false && mno.checked==false){
          alert("Provide input for mentally challenged");
          document.getElementById("myes").focus();
          return false;
        }
        else if(specialneedremark.trim()!="" && !specialneedremark.match(schnameregx)){
          alert("Special remarks should not contain numbers/special characters");
          document.getElementById("specialneedremark").focus();
          return false;
        }
        else if(terms.checked==false){
          alert("Please read and click checkbox of declartion");
          document.getElementById("terms").focus();
          return false;
        }
      }
      function photoValidate(){
        var photoInput=document.getElementById("photo");
        var photoPath=photoInput.value;
        var allowedExtensions =/(\.jpg|\.jpeg|\.png|\.pdf)$/i;
        if(!allowedExtensions.exec(photoPath)){
          alert("Please upload file having extensions .jpg/.jpeg/.png/.pdf");
          photoInput.value="";
          document.getElementById("photo").focus();
          return false;
        }
      }
      function adharcardValidate(){
        var adharcardInput=document.getElementById("adharcard");
        var adharcardPath=adharcardInput.value;
        var allowedExtensions =/(\.jpg|\.jpeg|\.png|\.pdf)$/i;
        if(!allowedExtensions.exec(adharcardPath)){
          alert("Please upload file having extensions .jpg/.jpeg/.png/.pdf");
          adharcardInput.value="";
          document.getElementById("adharcard").focus();
          return false;
        }
      }
      function leavindcertificateValidate(){
        var leavindcertificateInput=document.getElementById("leavindcertificate");
        var leavindcertificatePath=leavindcertificateInput.value;
        var allowedExtensions =/(\.jpg|\.jpeg|\.png|\.pdf)$/i;
        if(!allowedExtensions.exec(leavindcertificatePath)){
          alert("Please upload file having extensions .jpg/.jpeg/.png/.pdf");
          leavindcertificateInput.value="";
          document.getElementById("leavindcertificate").focus();
          return false;
        }
      }
      function birthcertificateValidate(){
        var birthcertificateInput=document.getElementById("birthcertificate");
        var birthcertificatePath=birthcertificateInput.value;
        var allowedExtensions =/(\.jpg|\.jpeg|\.png|\.pdf)$/i;
        if(!allowedExtensions.exec(birthcertificatePath)){
          alert("Please upload file having extensions .jpg/.jpeg/.png/.pdf");
          birthcertificateInput.value="";
          document.getElementById("birthcertificate").focus();
          return false;
        }
      }
      function castecertificateValidate(){
        var castecertificateInput=document.getElementById("castecertificate");
        var castecertificatePath=castecertificateInput.value;
        var allowedExtensions =/(\.jpg|\.jpeg|\.png|\.pdf)$/i;
        if(!allowedExtensions.exec(castecertificatePath)){
          alert("Please upload file having extensions .jpg/.jpeg/.png/.pdf");
          castecertificateInput.value="";
          document.getElementById("castecertificate").focus();
          return false;
        }
      }
      function parentadharcardValidate(){
        var parentadharcardInput=document.getElementById("parentadharcard");
        var parentadharcardPath=parentadharcardInput.value;
        var allowedExtensions =/(\.jpg|\.jpeg|\.png|\.pdf)$/i;
        if(!allowedExtensions.exec(parentadharcardPath)){
          alert("Please upload file having extensions .jpg/.jpeg/.png/.pdf");
          parentadharcardInput.value="";
          document.getElementById("parentadharcard").focus();
          return false;
        }
      }
    </script>
</head>
<body>
<div class="admission_body">
        <div class="form_logo">
            <img src="images/admissionlogo.PNG" alt="logo" class="img_logo">
	        <!-- <span class="logoName">Pristine Public School</span> -->
          <h3 class="form_name">Admisson Form</h3>
          <p style="font-size: 20px; color: #000099;text-align: center; font-weight: 500">${error}</p>
        </div>
      <form onsubmit="return admissionvalidate()" action="AdmissionForm" method="post" enctype="multipart/form-data" >
        <div class="topadmissioncontainer">
          <div class="main-user-info">
            <div class="user-input-box">
              <label for="academic">Academic Year <span class="astrix_sign">&#42;</span></label>
              <select name="academic" id="academic">
                  <option value="2023-2024">2023-2024</option>
              </select>
          </div>
          <div class="user-input-box">
            <label for="classname">Admission Class <span class="astrix_sign">&#42;</span></label>
            <select name="admissionclass" id="admissionclass">
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
          <label for="branch">Branch <span class="astrix_sign">&#42;</span></label>
          <select name="branch" id="branch">
              <option value="mumbai">Mumbai</option>
          </select>
      </div>
          </div>
        </div>
        <div class="admissioncontainer">
          <div class="logintitle"><span>Student Details</span></div>

          <div class="main-user-info">
            <div class="user-input-box">
              <label for="firstname"
                >First Name <span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="firstname" name="firstname" />
            </div>
            <div class="user-input-box">
              <label for="middlename">Middle Name <span class="astrix_sign">&#42;</span></label>
              <input type="text" id="middlename" name="middlename" />
            </div>
            <div class="user-input-box">
              <label for="lastname"
                >Last Name <span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="lastname" name="lastname" />
            </div>
            <div class="user-input-box">
              <label for="dob">Date of birth <span class="astrix_sign">&#42;</span></label>
              <input type="date" id="dob" name="dob" />
            </div>
            <span class="gender-details-box">
              <span class="gender-title">Gender <span class="astrix_sign">&#42;</span></span>
              <div class="gender-category">
                <input type="radio" name="gender" id="male" value="male"/>
                <label for="male">Male</label>
                <input type="radio" name="gender" id="female" value="female"/>
                <label for="female">Female</label>
              </div>
            </span>
            <div class="user-input-box">
              <label for="mothertongue"
                >Mother Tongue <span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="mothertongue" name="mothertongue" />
            </div>
            <div class="user-input-box">
              <label for="nationality"
                >Nationality<span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="nationality" name="nationality" />
            </div>
            <div class="user-input-box">
              <label for="religion"
                >Religion<span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="religion" name="religion" />
            </div>
            <div class="user-input-box">
              <label for="caste">Caste</label>
              <input type="text" id="caste" name="caste" />
            </div>
            <div class="user-input-box">
              <label for="income"
                >Family Income<span class="astrix_sign">&#42;</span></label
              >
              <input type="number" id="income" name="income" />
            </div>
            <div class="user-input-box">
              <label for="relationwithstudent"
                >Relation with student (Point of Contact)<span
                  class="astrix_sign"
                  >&#42;</span
                ></label
              >
              <select name="relationwithstudent" id="relationwithstudent">
                <option value="">-Select-</option>
                <option value="father">Father</option>
                <option value="mother">Mother</option>
                <option value="guardian">Guardian</option>
              </select>
            </div>
            <div class="user-input-box">
              <label for="pointofcontact"
                >Contact No.<span class="astrix_sign">&#42;</span></label
              >
              <input type="tel" id="pointofcontact" name="pointofcontact" />
            </div>
          </div>
        </div>
        <div class="admissioncontainer">
          <div class="logintitle"><span>Father's Details</span></div>
          <div class="main-user-info">
            <div class="user-input-box">
              <label for="fathername"
                >Father Name <span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="fathername" name="fathername" />
            </div>
            <div class="user-input-box">
              <label for="fatheroccupation">Father Occupation <span class="astrix_sign">&#42;</span></label>
              <input
                type="text"
                id="fatheroccupation"
                name="fatheroccupation"
              />
            </div>
            <div class="user-input-box">
              <label for="fatherno"
                >Father Mobile No. <span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="fatherno" name="fatherno" />
            </div>
            <div class="user-input-box">
              <label for="fatheremail">Father Email</label>
              <input type="text" id="fatheremail" name="fatheremail" />
            </div>
          </div>
        </div>
        <div class="admissioncontainer">
          <div class="logintitle"><span>Mother's Details</span></div>
          <div class="main-user-info">
            <div class="user-input-box">
              <label for="mothername"
                >Mother Name <span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="mothername" name="mothername" />
            </div>
            <div class="user-input-box">
              <label for="motheroccupation"
                >Mother Occupation <span class="astrix_sign">&#42;</span></label
              >
              <input
                type="text"
                id="motheroccupation"
                name="motheroccupation"
              />
            </div>
            <div class="user-input-box">
              <label for="motherno">Mother Mobile No. <span class="astrix_sign">&#42;</span></label>
              <input type="text" id="motherno" name="motherno" />
            </div>
            <div class="user-input-box">
              <label for="mothermail">Mother Email</label>
              <input type="text" id="motheremail" name="Motheremail" />
            </div>
          </div>
        </div>
        <div class="admissioncontainer">
          <div class="logintitle"><span>Address Details</span></div>
          <div class="main-user-info">
            <div class="user-input-box">
              <label for="address1"
                >Address 1 <span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="address1" name="address1" />
            </div>
            <div class="user-input-box">
              <label for="address2"
                >Address 2 <span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="address2" name="address2" />
            </div>
            <div class="user-input-box">
              <label for="country"
                >Country <span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="country" name="country" />
            </div>
            <div class="user-input-box">
              <label for="state"
                >State <span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="state" name="state" />
            </div>
            <div class="user-input-box">
              <label for="pincode"
                >Pincode <span class="astrix_sign">&#42;</span></label
              >
              <input type="number" id="pincode" name="pincode" />
            </div>
            <div class="user-input-box">
              <label for="city"
                >City <span class="astrix_sign">&#42;</span></label
              >
              <input type="text" id="city" name="city" />
            </div>
          </div>
        </div>
        <div class="admissioncontainer">
          <div class="logintitle"><span>Upload Documents (.jpg/.jpeg/.png/.pdf) files are allowed</span></div>
          <div class="main-user-info">
            <div class="file-box">
              <label for="photo"
                >Photo <span class="astrix_sign">&#42;</span></label
              >
              <input type="file" id="photo" name="photo" onchange="return photoValidate()">
            </div>
            <div class="file-box">
              <label for="adharcard"
                >Adharcard <span class="astrix_sign">&#42;</span></label
              >
              <input type="file" id="adharcard" name="adharcard" onchange="return adharcardValidate()">
            </div>
            <div class="file-box">
              <label for="adharcard"
                >Leaving Certificate (if applicable) </label
              >
              <input type="file" id="leavindcertificate" name="leavindcertificate" onchange="return leavindcertificateValidate()">
            </div>
            <div class="file-box">
              <label for="birthcertificate"
                >Birth Certificate <span class="astrix_sign">&#42;</span></label
              >
              <input type="file" id="birthcertificate" name="birthcertificate" onchange="return birthcertificateValidate()">
            </div>
            <div class="file-box">
              <label for="castecertificate"
                >Caste Certificate</label
              >
              <input type="file" id="castecertificate" name="castecertificate" onchange="return castecertificateValidate()">
            </div>
            <div class="file-box">
              <label for="parentadharcard"
                >Parent's Adharcard <span class="astrix_sign">&#42;</span></label
              >
              <input type="file" id="parentadharcard" name="parentadharcard" onchange="return parentadharcardValidate()">
            </div>
          </div>
        </div>
        <div class="admissioncontainer">
          <div class="logintitle"><span>Details of Previous Study</span></div>
          <div class="main-user-info">
            <div class="user-input-box">
              <label for="preschoolname">Name of the School</label>
              <input type="text" id="preschoolname" name="preschoolname" />
            </div>
            <div class="user-input-box">
              <label for="preschoolclass">Class</label>
              <input type="text" id="preschoolclass" name="preschoolclass" />
            </div>
            <div class="user-input-box">
              <label for="preschoolleave">Reason for Leaving </label>
              <input type="text" id="preschoolleave" name="preschoolleave" />
            </div>
          </div>
        </div>
        <div class="admissioncontainer">
          <div class="logintitle">
            <span>Behaviourial or Learning Difficulties</span>
          </div>
          <div class="main-user-info">
            <span class="disability-details-box">
              <span class="disability-title">Any Learning Disablity <span class="astrix_sign">&#42;</span></span>
              <div class="disability-category">
                <input type="radio" name="learning_disablity" id="dyes" value="yes"/>
                <label for="learning_disablity">Yes</label>
                <input type="radio" name="learning_disablity" id="dno" value="no"/>
                <label for="learning_disablity">No</label>
              </div>
            </span>
            <span class="disability-details-box">
              <span class="disability-title">Physically Challenged <span class="astrix_sign">&#42;</span></span>
              <div class="disability-category">
                <input type="radio" name="physically_challenged" id="pyes" value="yes"/>
                <label for="physically_challenged">Yes</label>
                <input type="radio" name="physically_challenged" id="pno" value="no"/>
                <label for="physically_challenged">No</label>
              </div>
            </span>
            <span class="disability-details-box">
              <span class="disability-title">Mentally Challenged <span class="astrix_sign">&#42;</span></span>
              <div class="disability-category">
                <input type="radio" name="mentally_challenged" id="myes" value="yes"/>
                <label for="mentally_challenged">Yes</label>
                <input type="radio" name="mentally_challenged" id="mno" value="no"/>
                <label for="mentally_challenged">No</label>
              </div>
            </span>
            <div class="user-input-box">
              <label for="specialneedremark">Special Needs Remark</label>
              <input
                type="text"
                id="specialneedremark"
                name="specialneedremark"
              />
            </div>
          </div>
        </div>
        <div class="terms-conditions">
          <input type="checkbox" id="terms" name="terms" value="terms"/>
          <span>I/We here by declare that the above-mentioned details are true to
            the best of my/our knowledge. I/We also comprehend that the
            management reserves the right to offer/decline Admission to my ward
            without assigning any reason. I/We agree that the decision of the
            Admission Committee will be final and binding. I/We will not hold
            school responsible, if I/We do not receive any communication due to
            incorrect Email Id or mobile numbers registered in the format as
            given by the school. I/We give consent to abide by the school norms
            and co-operate as required in all areas.</span>
        </div>
        <div class="submit_btn">
            <input type="submit" value="Submit">
        </div>
      </form>
    </div>
    </body>
</html>
<%@include file="footernew.jsp" %>
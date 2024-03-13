<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<title>Insert title here</title>
<style>
@import url('https://font.googlesapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
.bodyclass{
    line-height: 1.5;
    font-family: 'Poppins', sans-serif;
}
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.container1{
    max-width: 1170px;
    margin: auto;
}
.row{
    display: flex;
    flex-wrap: wrap;
}
ul{
    list-style: none;
}
.footer{
    background-color: #24262b;
    padding: 70px 0;
}
.footer-col{
    width: 25%;
    padding: 0 15px;
}
.footer-col h4{
    font-size: 18px;
    color: #ffffff;
    text-transform: capitalize;
    margin-bottom: 30px;
    font-weight: 500;
    position: relative;
}
.footer-col h4::before{
    content: '';
    position: absolute;
    left: 0;
    bottom: -10px;
    background-color: #e91e63;
    height: 2px;
    box-sizing: border-box;
    width: 90px;
}
.footer-col ul li:not(:last-child){
    margin-bottom: 10px;
}
.footer-col ul li a{
    font-size: 16px;
    text-transform: capitalize;
    color: #ffffff;
    text-decoration: none;
    font-weight: 300;
    color: #bbbbbb;
    display: block;
    transition: all 0.3s ease;
}
.footer-col ul li a:hover{
    color: #ffffff;
    padding-left: 5px;
}
.footer-col .social-links a{
    display: inline-block;
    height: 40px;
    width: 40px;
    background-color: rgba(255, 255, 255, 0.2);
    text-align: center;
    line-height: 40px;
    border-radius: 50%;
    color: #ffffff;
    transition: all 0.5s ease;
}
.footer-col .social-links a:hover{
    color: #24262b;
    background-color: #ffffff;
}
/* responsive */
@media(max-width: 767px){
    .footer-col{
        width: 50%;
        margin-bottom: 30px;
    }
}
@media(max-width: 574px){
    .footer-col{
        width: 100%;
        margin-bottom: 30px;
        text-align: center;
    }
    .footer-col h4::before{
        content: '';
        position: absolute;
        left: 45%;
        bottom: -10px;
        background-color: #e91e63;
        height: 2px;
        box-sizing: border-box;
        width: 50px;
    }
}
.copyright{
	color: #ffffff;
}
</style>
</head>
<body class="bodyclass">
        <footer class="footer">
            <div class="container1">
            <div class="row">
                <div class="footer-col">
                    <h4>Pristine Public School</h4>
                    <ul>
                        <li><a href="#">Street: 3979 Emmanuel Plains</a></li>
                        <li><a href="#">City: Mumbai</a></li>
                        <li><a href="#">State: Maharashtra</a></li>
                        <li><a href="#">Zip Code: 400003</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Resources</h4>
                    <ul>
                        <li><a href="#">Search</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Disability</a></li>
                        <li><a href="#">Grievance</a></li>
                        <li><a href="#">Non-Discrimination</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><a href="#">Faculty & Staff</a></li>
                        <li><a href="#">Current</a></li>
                        <li><a href="#">Students</a></li>
                        <li><a href="#">Alumni & Friends</a></li>
                        <li><a href="#">Community & Visitors</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>On Campus</h4>
                    <ul>
                        <li><a href="#">News</a></li>
                        <li><a href="#">Events Calendar</a></li>
                        <li><a href="#">Library</a></li>
                        <li><a href="#">Book shop</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>follow us</h4>
                    <div class="social-links">
                    	<p class="copyright">2023 &#169; PRISTINE PUBLIC SCHOOL INTERNATIONAL SCHOOL. ALL RIGHTS RESERVED.</p>
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </div>
        </footer>
    </body>
</html>
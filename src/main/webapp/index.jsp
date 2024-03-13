<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="newheader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="css/index.css">
<title>Home</title>
</head>
<body>
<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="3000">
      <img src="images/silderphoto3new.jpg" class="d-block w-100 imgsize" alt="first image">
    </div>
    <div class="carousel-item" data-bs-interval="3000">
      <img src="images/newimg1.jpg" class="d-block w-100 imgsize" alt="second image">
    </div>
    <div class="carousel-item" data-bs-interval="3000">
      <img src="images/midimg2.jpeg" class="d-block w-100 imgsize" alt="second image">
    </div>
    <div class="carousel-item" data-bs-interval="3000">
      <img src="images/sliderphoto1.jpg" class="d-block w-100 imgsize" alt="third image">
    </div>
    <div class="carousel-item" data-bs-interval="3000">
      <img src="images/midimg3.jpeg" class="d-block w-100 imgsize" alt="third image">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<section id="about" class="about section-padding midDet">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-12">
                        <div class="about-img imgPos">
                            <img src="images/homepageimg.jpg" alt="" class="img-fluid about-img">
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-12 col-12 ps-lg-5 mt-md-5">
                        <div class="about-text">
                            <h2>Unlocking Knowledge, Inspiring Futures: Welcome to Pristine Public School!</h2>
                            <p>At Pristine Public School, we believe that education is the key to unlocking a world of endless possibilities. Our school is dedicated to providing a nurturing and inclusive learning environment that empowers students to reach their full potential. We strive to instill a love for learning, foster critical thinking skills, and promote personal growth in every student.

Here are some highlights of what you can expect from Pristine Public School:<br>

1) Academic Excellence: We offer a rigorous and comprehensive curriculum designed to challenge students and prepare them for future success. Our dedicated and passionate teachers employ innovative teaching methods to engage students and inspire a thirst for knowledge.<br>

2) Holistic Development: We value the holistic development of our students. Along with a strong emphasis on academics, we provide a wide range of extracurricular activities, including sports, arts, and cultural programs, to help students discover and nurture their unique talents and interests.<br>

</p>
                            <a href="aboutus.jsp" class="btn btn-danger">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
         <div class="main-section">
            <div class="stat1">
                <div class="box">
                    <h1 class="num" data-val="30">00</h1>
                    <p>classroom</p>
                </div>
                <div class="box">
                    <h1 class="num" data-val="700">000</h1>
                    <p>students</p>
                </div>
                <div class="box">
                    <h1 class="num" data-val="40">00</h1>
                    <p>teachers</p>
                </div>    
            </div>
            <div class="stat2">
                <div class="box">
                    <h1 class="num" data-val="8">0</h1>
                    <p>computer labs</p>
                </div>
                <div class="box">
                    <h1 class="num" data-val="1200">000</h1>
                    <p>books in libraries</p>
                </div>
                <div class="box">
                    <h1 class="num" data-val="150">000</h1>
                    <p>computers</p>
                </div>    
            </div>
            <p class="statlogo">
                some stats
            </p>
            
        </div>
        <script src="javascript/numberdisplay.js"></script>
</body>
</html>
<%@include file="footernew.jsp" %>
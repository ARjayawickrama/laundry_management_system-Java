<!DOCTYPE html>
<html lang="en">
<head>
<script >
 function openNewJSP2() {
    window.location.href = 'login.jsp';
  
    

    // Prevent going forward or backward after one step
    var navigated = false;
    history.pushState(null, null, location.href);
    window.onpopstate = function () {
        if (!navigated) {
            navigated = true;
            history.go(1); // Go forward
            history.pushState(null, null, location.href); // Push another state to prevent further navigation
        }
    };
}
 
 function openNewJSP1() {
	
	    window.location.href = 'registration.jsp'; // Redirect to newww.jsp
	}
 </script>
    
  <!-- Theme Made By www.w3schools.com -->
  <title>Bootstrap Theme Company Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #222;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
  body {
  
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
     font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  background-color: black;
       
  }
  h2 {
  
    font-size: 24px;
    text-transform: uppercase;
    color: #fff;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {

  
  background: url('images/2.jpg.jpg') no-repeat center center fixed;
    filter: brightness(0.9) saturate(100%) hue-rotate(360deg);
    background-size: cover;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
  }
  .container-fluid {
    padding: 60px 50px;
  }
.main {
   
    background-size: cover;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

.button-container {
       margin-right: 300px;
}

.homeBT1, .homeBT2 {
    display: inline-block;
    padding: 30px 30px;
    text-decoration: none;
    color: #ffffff;
    border: 1px solid #F0F8FF;
    border-radius: 15px;
    text-align: center;
    margin: 10px;
    font-size: 50px;
    font-family: Georgia, serif;
    transition: background-color 0.3s, color 0.3s;
    
}

.homeBT1 {
    background-color:rgb(199, 169, 243);
      text-decoration: none !important;
}


.homeBT2 {
    background-color:  rgb(0, 149, 199);
      text-decoration: none !important;
}

.homeBT1:hover, .homeBT2:hover {
    background-color: #fff; /* Change this to the desired hover background color */
    color: #000; /* Change this to the desired hover text color */
}
.title{
  position: absolute;

  left: 50%;
  transform: translateX(-50%);

}
.main-title{
margin-top: 150px;
margin-bottom: 150px;
}

.OUR-SERVICES-Main img{
margin-top: 300px;
 background-color: blue;
   
}
form {

    background-color: #fff;
    padding: 1000px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 10px;
   
}

 a:link {
      text-decoration: none;
      
}
     .mymain1:hover {
      transform: scale(1.03);
    }
    
    

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
 
  
}
a{
 text-decoration: none !important;
}
.pricing-table {
    width: 5%; /* Adjust this value as needed */
    float: left; /* Ensures the elements are displayed side by side */
  }
  
  .image-container {
    position: relative;
}

.image-container img {
 
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(1);
    animation: scaleRotateAnimation 3s alternate infinite;
}

@keyframes scaleRotateAnimation {
    0% {
        transform: translate(-50%, -50%) scale(1) rotate(0deg);
    }
    100% {
        transform: translate(-50%, -50%) scale(1.2) rotate(360deg);
    }
}

  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
                           
      
      <a class="navbar-brand" href="#myPage">EcoWash</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
       
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center">
      <div class="button-container">
            <a class="homeBT1"  target="_blank"onclick="openNewJSP1()" >SIGN UP</a>
            <a class="homeBT2" target="_blank"onclick="openNewJSP2()">LOGIN</a>
        </div>
        <div class="image-container">
    <img src="images/wash1.png" alt="Only Wash" width="300" height="300">
</div>
        
 </div>


 <div class="about-section">
    
  <h1>About Us Page</h1>
  <br>

        <p >
Welcome to our Laundry Service System, where we are committed to being your dedicated partner in simplifying and enhancing your laundry care routine. At the heart of our mission lies a relentless pursuit of efficiency and convenience, driven by our desire to redefine the entire laundry experience for our valued customers.

In today's fast-paced world, time is of the essence, and mundane tasks like laundry can often feel like a chore. That's why we've made it our goal to seamlessly integrate technology and convenience into every aspect of our service. From scheduling pickups to tracking the progress of your laundry, our intuitive platform puts the power in your hands, allowing you to manage your laundry needs with ease and flexibility.
        </p>
       
</div>
      
      
      <br>
      <br>
      
      
<div id="Service" class="container-fluid text-center bg-grey">
  <h2>At Your Service</h2><br>

  <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/wash1.jpg" alt="Wash + Press" width="430" height="300">
        <p><strong>Wash + Press</strong></p>
       <p>âA wardrobe full of fresh, clean clothes which are neatly pressedâ Sounds like an 
       impossible dream? We are here to make it possible! Don't waste 
       another beautiful Weekend for washing, drying and folding laundry. 
       Let washapp to handle the dirty work while you spend your time enjoying life.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/only_wash.jpg" alt="Only Wash" width="330" height="200">
        <p><strong>Only Wash</strong></p>
        <p>We bring you a bag, you fill it with clothes. We then send your dirty clothes for a quick spin,
         tumble dry and return them to you crisp clean. This service is charged per kilo, so donât hesitate to send us a truckload of work! 
         But please remember, items that require extra care including toweling and bedding should be selected separately.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/dray.jpg" alt="Dry Clean" width="230" height="100">
        <p><strong>Dry Clean</strong></p>
       <p> Delicate fabrics that canât withstand detergent? Tired of rushing around and re-arranging your schedule trying to make it in time to drop off or pic
       k up your dry cleaning? Wouldn't it be nice to have freshly pressed suits delivered rig
       ht to your door, right when you need them? With Washapp, now you can!</p>
      </div>
    </div>
  </div><br>
  </div>
  

  <div class="text-center">
    <h2>EcoWash CORE BENEFITS</h2>
    <br>
  </div>
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
    
    
    
    
    
    
      <div class="panel panel-default text-center">
       <div class="mymain1">
        <div class="panel-heading">
        <img src="images/c1.jpg" alt="Wash + Press" width="200" height="200">
          <h1>Customer Experience</h1>
        </div>
        <div class="panel-body">
          <p><strong></strong> Everything about Bundle is centred on our clients and their success. That's precisely why we've built our portal to ensure all clients have visibility, transparency and ownership of their operations.</p>
          
        </div>
        </div>
        
      </div>      
    </div>   
    
 
      
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
       <div class="mymain1">
        <div class="panel-heading">
          <img src="images/c2.jpg" alt="Wash + Press" width="200" height="200">
          <h1>Automate Processes</h1>
        </div>
        <div class="panel-body">
          <p><strong>50</strong>Productivity is at the heart of any business's success and we understand this better than anyone. Our entire suite has been constructed with the objective of ensuring trust, efficiency and reliability.</p>
        
         </div>
        </div>
       
      </div>      
    </div>       
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
       <div class="mymain1">
        <div class="panel-heading">
          <img src="images/c3.jpg" alt="Wash + Press" width="200" height="200">
          <h1>Increase Productivity</h1>
        </div>
        <div class="panel-body">
          <p><strong></strong> Manual processes hinder operations and lead to inefficiency and errors - leaving your operation vulnerable. Our suite has the capacity and capability to completely modernise your various operations.</p>
    
        </div>
      </div>
        </div>
      </div>      
    </div>    

  <br>
  <br>
  
   
    
      <div class="w3-half w3-margin-bottom">
        <ul class="w3-ul w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-dark-grey w3-xlarge w3-padding-32"></li>
          <li class="w3-padding-16"><img src="images/homwach.png" alt="Wash + Press" width="400" height="400">
          <li class="w3-padding-16"></li>
          <li class="w3-padding-16">
            <h2>$ 10</h2>
            <span class="w3-opacity"></span>
          </li>
          <li class="w3-light-grey w3-padding-24">
            <a class="w3-button w3-white w3-padding-large w3-hover-black" onclick="openNewJSP2()">Order Add</a>
          </li>
        </ul>
      </div>

      <div class="w3-half">
        <ul class="w3-ul w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-dark-grey w3-xlarge w3-padding-32"></li>
     <li class="w3-padding-16"><img src="images/only_wash.jpg" alt="Wash + Press" width="450" height="400">
    
          <li class="w3-padding-16"></li>
          <li class="w3-padding-16">
            <h2>$ 25</h2>
            <span class="w3-opacity"></span>
          </li>
          <li class="w3-light-grey w3-padding-24">
            <a class="w3-button w3-white w3-padding-large w3-hover-black" onclick="openNewJSP2()">Order Add</a>
          </li>
        </ul>
      </div>

 </body>
 </html>

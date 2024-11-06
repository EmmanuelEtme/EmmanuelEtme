<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticketing Application</title>
<style type="text/css">
 * {
     margin: 0;
	 padding: 0;
     box-sizing: border-box;
}
 .navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color:lightblue;
	padding: 10px 20px;
    color: white;
}
		
.navbar .title {
  font-size: 1.5em;
  font-weight: bold;
}
 .navbar .nav-links {
   display: flex;
}
 .navbar .nav-links a {
   color: white;
   padding: 10px 15px;
   text-decoration: none;
   text-align: center;
   margin-left: 10px;
   border-radius: 5px;
}
.navbar .nav-links a:hover {
   background-color: #555;
}
.container2 {
background-color:lightblue;
margin-top:450px;
}
.slideshow-container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 80%;    /* Set the width of the container */
            height: 70vh;  /* Set the height of the container */
            overflow: hidden;
            border-radius: 10px; /* Optional: rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        /* Styling each slide */
        .slide {
            position: absolute;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center;
            opacity: 0;
            animation: fade 30s infinite;
        }

        /* Define fade animation */
        @keyframes fade {
            0%, 50% { opacity: 1; }
            55%, 100% { opacity: 0; }
        }

        /* Position each slide with different images and animation delays */
        .slide:nth-child(1) { background-image: url('slide 1.jpg'); animation-delay: 0s; }
        .slide:nth-child(2) { background-image: url('slide4.jpg'); animation-delay: 5s; }
        .slide:nth-child(3) { background-image: url('slide5.jpg'); animation-delay: 10s; }

        /* Optional: Content in the middle of the page */
        .content {
            position: relative;
            z-index: 1;
            color: black;
            text-align: center;
            padding: 20px;
        }
        h1 {
        font-size: 30px;
        color: blue;
        }
        p {
        tex-align: center;
        color: goldenrod;
        margin-left:20px;
        margin-top: 10px;
        font-size:38px;
        }
        p1 {
         tex-align: center;
        color: Black;
        margin-left:20px;
        margin-top: 10px;
        font-size:38px;
        }
        p2 {
        tex-align: center;
        color: darkblue;
        margin-left:20px;
        margin-top: 5px;
        font-size:23px;
        }
</style>
</head>
<body>
<div class="container">
 <div class="navbar">
    <div class="title">Ticketing Application</div>
    <div class="nav-links">
        <a href="#home">Home</a>
        <a href="#">ADMIN</a>
        <a href="Ticket-List.jsp">Ticket</a>
        <a href="#biodata">Biodata</a>
        <a href="Login.jsp" id="btn btn-Logouti" class="btn btn-login">Logout</a>
    </div>
</div>
<h1>WELCOME</h1>
<div class="slideshow-container">
    <div class="slide">
    	<p>
    	Thank you for connecting with us through this platform.<br>
    	We’re here to make it easy for you to report any issues, get support,<br>
    	and track the resolution of your concerns every step of the way.
    	</p>
    </div>
    <div class="slide">
    	<p>
    	Whether you’re facing a technical problem, need assistance with services,<br> 
    	or simply have a question, our ticketing system is designed to provide you with a seamless experience.<br>
    	Simply submit a ticket with your details, and our team will ensure you receive timely response.
    	</p>
    </div>
    <div class="slide">
    	<p1>
    	How to Get Started:<br>

        1. Create a Ticket: Click "Ticket" to share the details of your issue.<br>
        2. Stay Updated: Our team will keep you informed as your ticket progresses.<br>
        3. Get Resolutions Fast: Track your ticket status and communicate directly for quicker solutions.<br><br><br><br>
        </p1>
       <p2>
        We’re committed to delivering the support you deserve. 
        Thank you for reaching out to us with your concerns!
       </p2>
       
    	
    </div>
</div>

<div class="container2">
  <footer>
     @Copyright 2007 (NORBUS TECHNOLOGY). All rights reserved.<br>
     Location: Accra digital center, circle.<br>
     Phone: +233 30 296 4012<br>
     Website: www.norbusgh.com.
   </footer>
</div>
    </div>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticketing Application</title>
<style type="text/css">
body {
   background-image: url('Background.jpeg');
   background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
    background-blend-mode: multiply;
}
h1 {
    font-size: 40px;
    color: wheat;
    text-align: center;
    font-family: Georgia, 'Times New Roman', Times, serif;
}
button {
    padding: 10px 20px;
    padding-top: 10%;
}
h2 {
    font-size: 30px;
    color: white;
    margin-left: 5%;
}
 .picture1 {
    height: 400px;
    width: 100%;
}
.container1 {
    max-width: 600px;
    background-color: white;
    color: blue;
    text-align: center;
    width: 800px;
    height: 60px;
}
 .btn-ticket {
    background-color: greenyellow;
    color: white;
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 10px;
    margin-left: 40%;
 }
 .btn-login {
    background-color: greenyellow;
    color: white;
    padding: 10px 20px;
    border-radius: 20px;
    cursor: pointer;
    margin-left: 80px;
 }
 .btn-home {
    background-color: white;
    padding: 10px 20px;
    border-radius: 20px;
    cursor: pointer;
    margin-left: 18%;
 }
 .btn-about {
    background-color: white;
    padding: 10px 20px;
    border-radius: 20px;
    cursor: pointer;
    margin-left: 10%;
 }
 .btn-history {
    background-color: white;
    padding: 10px 20px;
    border-radius: 20px;
    cursor: pointer;
    margin-left: 10%;
 }
 .btn-feedback {
    background-color: white;
    padding: 10px 20px;
    border-radius: 20px;
    cursor: pointer;
    margin-left: 10%;
 }
.container2 {
    text-align: center;
    margin-top: 250px;
    margin-right: 50%;
}
h1 {
    font-family: Arial, Helvetica, sans-serif;
    color: white;
    margin-left: 5%;
}
 p {
    color: blanchedalmond;
    font-family: 'Times New Roman', Times, serif;
    font-style: oblique;
    font-size: 25px;
    margin-left: 5%;
    margin-top: 3%;
}
h3 {
    color: red;
    font-family: Arial, Helvetica, sans-serif;
    font-style: oblique;
    font-size: 25px;
    margin-left: 10%;
}
h4 {
    color: lightblue;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 25px;
    font-style: oblique;
}
.p1 {
    color: blue;
    font-family: Arial, Helvetica, sans-serif;
    font-style: oblique;
    font-size: larger;
}
@media screen and (max-width: 1200px)
 {
    header{
        font-size: 200%;
        text-align: center;
        margin-top: 50px;
    }
    body {
        width: 100%;
        height: auto;
    }
}
footer {
    font: italic;
    font-size: medium;
    color: white;
}
</style>
</head>
<body>
<div class="container">
        <h1>NORBUS TECHNOLOGY</h1>
        <header class="d-flex justify-content-center align-items-center">
            <button type="button" class="btn-home"><a href="Index.jsp">Home</a></button>
            <button type="button" class="btn-about"><a href="https://norbusgh.com/">About Us</a></button>
            <button type="button" class="btn-history"><a href="#">History</a></button>
            <button type="button" class="btn-feedback"><a href="#">Feedback</a></button>
            <button type="button" class="btn-login"><a href="Login.jsp"><b>Logout</b></a></button>
        </header>
            <main class="container">
                <h2>Welcome!</h2>
                <p>
                Thank you for loging into our site. Our compitent and able team members are ready to receive your<br> problems and
                suggestions and to respond to them with immediate effect.<br><br>
                </p>
                <h3><b>TO ISSUE A TICKET KINDLY HIT ON THE BUTTON BELOW!</b></h3><br>
                <button type="button" class="btn-ticket"><a href="Ticket.jsp"><b>Ticket</b></a></button>
                <button type="button" class="btn-ticket"><a href="#"><b>Users</b></a></button>
            </main>
            <hr>
            <footer>
                @Copyright 2007 (NORBUS TECHNOLOGY). All rights reserved.<br>
                Location:Accra digital center, circle.<br>
                Phone: +233 30 296 4012<br>
                Website: www.norbusgh.com.
            </footer>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
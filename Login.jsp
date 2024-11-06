<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticketing Application</title>
</head>
<body>
  <style>
    body {
     background-image: url('Digital.jpg');
      background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
    background-blend-mode: multiply;
    }

    h1{
      margin-top: 40px;
      text-align: center;
      font-size: 50px;
      color: Blue;
    }

    label {
      padding: auto;
      margin-top: 40px;
      font-size: large;
      font-family: Arial, Helvetica, sans-serif;
      margin-left: 30%;
    }

    input {
      width: 40%;
      height: 30px;
      border-radius: 10px;
      margin-left:30%;
    }

    .btn-success {
      margin-top: 30px;
      width: 150px;
      height: 40px;
      padding: 10px 20px;
      text-align: center;
      background-color: green;
      color: white; /* Adjusted color for better contrast */
      margin-left:42%;
      border-radius: 10px;
    }

    .btn-forgotten {
      padding: 10px 20px;
      background-color: transparent;
      color: blue;
      text-align: center;
      margin-left: 40%;
      margin-top:20px;
      width:200px;
      border-color: transparent;
    }

    .btn-SignUp {
      padding: 10px 20px;
      background-color: transparent;
      color: white;
      text-align: center;
      border: transparent;
    }
    p {
    margin-top:30px;
    text-align: center;
    }
  </style>
</head>
<body>
    <h1>Login</h1>

  <div class="d-flex flex-column justify-content-center align-items-center ">
    <form id="Loginform" class="form">
      <label for="username"><b>Username:</b></label><br>
      <input type="text" id="username" placeholder="Please enter your Username"/><br>

      <label for="password"><b>Password</b></label><br>
      <input type="password" id="password" placeholder="Password"/><br><br>

      <button type="button" class="btn btn-forgotten"><i>Forgotten password?</i></button><br>
      <button type="button" class="btn btn-success"><a href="Index.jsp"><b>Login</b></a></button>

      <p><b>Don't have an account?</b><button type="button" class="btn btn-SignUp"><a href="SignUp.jsp"><i>SignUp</i></a></button></p>
    </form>
  </div>
</body>
</html>
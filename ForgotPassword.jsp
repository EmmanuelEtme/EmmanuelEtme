<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
    <style type="text/css">
    h2 {
    text-align: center;
    font-size: 30px;
    }
    input {
    height:20px;
    width: 270px;
    border-radius: 5px;
    }
    button {
    padding: 10px 20px;
    width: 150px;
    hieght: 2px;
    color: white;
    margin-left: 45%;
    background-color: blue;
    margin-top: 10px;
    border-radius: 5px;
    }
    label {
    margin-left:30%;
    font-size: 25px;
    }
    </style>
</head>
<body>
    <h2>Forgot Your Password?</h2>
    <form action="request-password-reset" method="post">
        <label for="email">Enter your email:</label>
        <input type="email" id="email" name="email" required><br>
        <button type="submit">Request Password Reset</button>
    </form>
</body>
</html>

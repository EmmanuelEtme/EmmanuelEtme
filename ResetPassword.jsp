<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
    <style type="text/css">
    h2 {
    font-size: 30px;
    text-align: center;
    }
    label {
    margin-left: 32%;
    font-size: 20px;
    }
    input {
    width:300px;
    height: 20px;
    border-radius: 5px;
    }
    button {
    padding: 10px 20px;
    text-align: center;
    margin-left: 45%;
    color: white;
    background-color: Green;
    border-radius: 10px;
    }
    </style>
</head>
<body>
    <h2>Reset Your Password</h2>
    <form action="reset-password" method="post">
        <label for="token">Enter your reset token:</label>
        <input type="text" id="token" name="token" required><br><br>
        
        <label for="newPassword">Enter your new password:</label>
        <input type="password" id="newPassword" name="newPassword" required><br><br>
        
        <button type="submit">Reset Password</button>
    </form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticketing Application</title>
<style type="text/css">
body {
   background-image: url('images (1).jpeg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100%;
    background-blend-mode: multiply;
}
h1 {
    font-size: 40px;
    text-align: center;
    font-style: normal;
    margin-top: 30px;
}
p {
    font-family: Arial, Helvetica, sans-serif;
    text-align: justify;
    margin-left: 22%;
    font-size: 20px;
}
p1 {
    font-family: Arial, Helvetica, sans-serif;
    text-align: center;
    font-size: 20px;
    margin-left: 20%;
}
.container1 {
    max-width: 600px;
    border-radius: 20px;
    padding: 40px; /* Added padding for better layout */
    margin-left: 25%;
    background-color:white ;

  }
.btn-success {
    background-color: green;
    padding: 10px 20px;
    color: white;
    border-radius: 30px;
    cursor: pointer;
    margin-top: 40px;
    width: 100px;
    text-align: center;
}
.btn-info {
    background-color: green;
    padding: 10px 20px;
    color: white;
    border-radius: 30px;
    cursor: pointer;
    margin-top: 40px;
    width: 100px;
    text-align: center;
}
.btn-primary {
    background-color: white;
    padding: 10px 20px;
    color: blue;
    cursor: pointer;
    text-align: center;
    border: transparent;
    color: white;
}
.btn-edit {
    background-color: Gold;
}
input {
    width: 100%;
    border-radius: 5px;
}
label {
    font-size: 150%;
}
.SignUp {
    max-width: 600px;
    border-radius: 20px;
    border-color: blue;
    width: 40%;
    height: 400px;
    background-color: white;
    color: black;
    box-shadow: 10px;
    margin-top: 3%;
    text-align: center;
    margin-left: 20%;
}
.btn-login {
    padding: 10px 20px;
    background-color: white;
    color: blue;
    text-align: center;
    border-color: transparent;
}
@media screen and (max-width: 768px) {
    .container {
      max-width: 100%; /* Allow full width on*/
    }}
</style>
</head>
<body>
<div class="container">
        <h1 class="d-flex justify-content-center"><b>Sign Up</b></h1>
        <p>Fill in your details to sign up into Norbus Technology ticketing application</p>
        <div class="container1">
            <form action="SignUpServlet" method="post" id="signUpForm">
                <input type="hidden" id="userIndex" value="-1">
                <label><b>Username:</b></label><br>
                <input type="text" id="username" placeholder="Please enter your Username" name="username"/><br>
                <label><b>Full Name</b></label><br>
                <input type="text" id="fullname" placeholder="Please enter your Full Name" name="fullname"/><br>
                <label><b>Email</b></label><br>
                <input type="email" id="email" placeholder="Please enter your Email" name="email"/><br>
                <label><b>Phone</b></label><br>
                <input type="text" id="phone" placeholder="Please enter your Phone Number" name="phone"/><br>
                <label><b>Password</b></label><br>
                <input type="password" id="password" placeholder="Please enter your Password" name="password"/><br>
                <label><b>Confirm Password</b></label><br>
                <input type="password" id="confirmPassword" placeholder="Please confirm your Password" name="confirmPassword"/><br>
                <div class="d-flex justify-content-center"><br>
                    <button type="button" id="signUpBtn" class="btn btn-success"><a href="Succes.jsp"><b>Sign Up</b></a></button>
                    <button type="button" id="updateBtn" class="btn btn-warning" style="display: none;"><b>Update</b></button>
                <p>Already have an account?<button type="button" id="Login" class="btn btn-login"><a href="Login.jsp">Login</a></button>
                </div>
            </form>
        </div>
    </div>

      <!-- JavaScript to handle form submission, view users, update, and delete users -->
    <script>
        let selectedUserIndex = -1;

        document.getElementById('signUpBtn').addEventListener('click', function() {
            const username = document.getElementById('username').value;
            const fullname = document.getElementById('fullname').value;
            const email = document.getElementById('email').value;
            const phone = document.getElementById('phone').value;
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirmPassword').value;

            if (password !== confirmPassword) {
                alert('Passwords do not match!');
                return;
            }

            // Save user data to localStorage
            let users = JSON.parse(localStorage.getItem('users')) || [];
            const user = { username, fullname, email, phone, password };

            if (selectedUserIndex === -1) {
                // New user, add to the list
                users.push(user);
            } else {
                // Update existing user
                users[selectedUserIndex] = user;
                selectedUserIndex = -1;
                document.getElementById('updateBtn').style.display = 'none'; // Hide the Update button
                document.getElementById('signUpBtn').style.display = 'inline'; // Show the Sign Up button
            }

            localStorage.setItem('users', JSON.stringify(users));

            // Clear the form
            document.getElementById('signUpForm').reset();
        });

        document.getElementById('viewUsersBtn').addEventListener('click', function() {
            // Fetch users from localStorage
            const users = JSON.parse(localStorage.getItem('users')) || [];
            const tableBody = document.getElementById('modalUserTableBody');

            // Clear the current table body content
            tableBody.innerHTML = '';

            // Populate the modal table with user data
            users.forEach((user, index) => {
                const row = `<tr>
                    <td>${index + 1}</td>
                    <td>${user.username}</td>
                    <td>${user.fullname}</td>
                    <td>${user.email}</td>
                    <td>${user.phone}</td>
                    <td>
                        <button type="button" class="btn btn-edit" onclick="editUser(${index})">Edit</button>
                        <button type="button" class="btn btn-danger" onclick="deleteUser(${index})">Delete</button>
                    </td>
                </tr>`;
                tableBody.innerHTML += row;
            });
        });

        function editUser(index) {
            // Fetch users from localStorage
            const users = JSON.parse(localStorage.getItem('users')) || [];
            const user = users[index];

            // Populate the form with the user's details
            document.getElementById('username').value = user.username;
            document.getElementById('fullname').value = user.fullname;
            document.getElementById('email').value = user.email;
            document.getElementById('phone').value = user.phone;
            document.getElementById('password').value = user.password;
            document.getElementById('confirmPassword').value = user.password;

            // Set the selected user index for updating
            selectedUserIndex = index;

            // Hide the Sign Up button and show the Update button
            document.getElementById('signUpBtn').style.display = 'none';
            document.getElementById('updateBtn').style.display = 'inline';

            // Close the modal
            $('#viewUsersModal').modal('hide');
        }

        function deleteUser(index) {
            // Fetch users from localStorage
            let users = JSON.parse(localStorage.getItem('users')) || [];

            // Remove the selected user
            users.splice(index, 1);

            // Save the updated users list back to localStorage
            localStorage.setItem('users', JSON.stringify(users));

            // Refresh the user list view
            document.getElementById('viewUsersBtn').click();
        }

        document.getElementById('updateBtn').addEventListener('click', function() {
            document.getElementById('signUpBtn').click();
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
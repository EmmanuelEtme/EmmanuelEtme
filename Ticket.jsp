<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ticket</title>
    <link rel="stylesheet" href="Ticket.css">
    <style>
    body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: rgb(144, 193, 236);
}
h1 {
    font-size: 300%;
    color: black;
    text-align: center;
    text-decoration: solid;
    text-wrap-mode: 10px;
}
label {
    margin-left: 15%;
    margin-top: 60px;
   
}
.btn-success {
    background-color: green;
    padding: 10px 20px;
    color: white;
    border-radius: 10px;
    cursor: pointer;
    margin-left: 15%;
    margin-top: 5%;
}
.btn-blue {
    background-color: blue;
    padding: 10px 20px;
    color: white;
    border-radius: 10px;
    cursor: pointer;
    margin-top: 5%;
    margin-left: 10px;
}
.btn-warning {
    padding: 10px 20px;
    margin-top: 30px;
    width: 100px;
    text-align: center;
    cursor: pointer;
    color: White;
    background-color:gold;
    border-radius: 10px;
}
.btn-danger {
    padding: 10px 20px;
    margin-top: 30px;
    width: 100px;
    text-align: center;
    cursor: pointer;
    color: White;
    background-color:red;
    border-radius: 10px;
}
.btn-home {
    padding: 10px 20px;
    margin-top: 30%;
    width: 100px;
    text-align: center;
    cursor: pointer;
    color: white;
    background-color:blue;
    border-radius: 10px;
}
textarea {
    margin-left: 15%;
    border-radius: 10px;
    width: 60%;
    height: 200px;
}
input {
    margin-left: 15%;
    border-radius: 5px;
    width: 60%;
    height: 30px;
}
.container {
    max-width: 800px;
    border-radius: 20px;
    background-color: white;
    padding: 40px; /* Added padding for better layout */
    margin-left: 23%;
    margin-top: 3%;
    margin-bottom: 3%;
}
.dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-button {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 4px;
            margin-left: 120px;
        }

        /* Dropdown content (hidden by default) */
        .dropdown-content {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: #444;
            min-width: 100%;
            list-style-type: none;
            padding: 0;
            margin: 0;
            border-radius: 4px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        /* Dropdown items */
        .dropdown-content li {
            padding: 10px 20px;
            color: black;
            cursor: pointer;
        }

        .dropdown-content li:hover {
            background-color: white;
        }
    </style>
</head>
<body>
   <a href="Index.jsp" class="btn-home"><b>Home</b></a>
    <div class="container">
     <h1><b>Enter Ticket</b></h1>
        <label><b>Ticket Title</b></label><br>
        <input type="text" id="title" placeholder="What's the ticket title?" required><br><br>
        <div class="dropdown">
    <!-- Dropdown button with initial text as "Priority" -->
    <button class="dropdown-button" id="dropdownButton">Priority</button>

    <!-- Dropdown menu items -->
    <ul class="dropdown-content" id="dropdownContent">
        <li onclick="selectPriority('High')">High</li>
        <li onclick="selectPriority('Medium')">Medium</li>
        <li onclick="selectPriority('Low')">Low</li>
    </ul>
</div><br><br>
        <label><b>Description</b></label><br>
        <textarea id="description" placeholder="Enter your message" required ></textarea><br><br>
        <button type="button" id="submit" class="btn-success" name="submit"><b>Submit</b></button>
        </div>

    <!-- JavaScript -->
    <script>
    // Toggle the dropdown display on button click
    document.getElementById('dropdownButton').addEventListener('click', function() {
        const dropdownContent = document.getElementById('dropdownContent');
        dropdownContent.style.display = dropdownContent.style.display === 'block' ? 'none' : 'block';
    });

    // Function to handle selection and update button text
    function selectPriority(priority) {
        document.getElementById('dropdownButton').textContent = priority; // Update button text
        document.getElementById('dropdownContent').style.display = 'none'; // Close dropdown
    }

    // Close the dropdown if the user clicks outside of it
    window.addEventListener('click', function(event) {
        const dropdown = document.querySelector('.dropdown');
        if (!dropdown.contains(event.target)) {
            document.getElementById('dropdownContent').style.display = 'none';
        }
    });
        let selectedTicketIndex = -1;

        // Submit button event listener
        document.getElementById('submit').addEventListener('click', function() {

            const title = document.getElementById('title').value;
            const priority = document.getElementById('priority').value;
            const description = document.getElementById('description').value;

            if (!userId || !title || !priority || !description) {
                alert("Please fill in all fields");
                return;
            }

            // Create a ticket object
            const ticket = { title, priority, description };

            // Get tickets from localStorage or initialize an empty array
            let tickets = JSON.parse(localStorage.getItem('tickets')) || [];

            if (selectedTicketIndex === -1) {
                // Add new ticket
                tickets.push(ticket);
            } else {
                // Update existing ticket
                tickets[selectedTicketIndex] = ticket;
                selectedTicketIndex = -1; // Reset after updating
            }

            // Save updated tickets to localStorage
            localStorage.setItem('tickets', JSON.stringify(tickets));

            // Clear the form
            document.getElementById('title').value = '';
            document.getElementById('priority').value = '';
            document.getElementById('description').value = '';
        });

        // View button event listener
        document.getElementById('view').addEventListener('click', function() {
            // Fetch tickets from localStorage
            const tickets = JSON.parse(localStorage.getItem('tickets')) || [];
            const tableBody = document.getElementById('ticketTableBody');

            // Clear previous table content
            tableBody.innerHTML = '';

            // Populate the table with ticket data
            tickets.forEach((ticket, index) => {
                const row = `<tr>
                    <td>${index + 1}</td>
                    <td>${ticket.userId}</td>
                    <td>${ticket.title}</td>
                    <td>${ticket.priority}</td>
                    <td>${ticket.description}</td>
                    <td>
                        <button class="btn-warning" onclick="editTicket(${index})">Edit</button>
                        <button class="btn-danger" onclick="deleteTicket(${index})">Delete</button>
                    </td>
                </tr>`;
                tableBody.innerHTML += row;
            });

            // Show the table container
            document.querySelector('.table-container').style.display = 'block';
        });

        // Edit a ticket
        function editTicket(index) {
            // Fetch tickets from localStorage
            const tickets = JSON.parse(localStorage.getItem('tickets')) || [];
            const ticket = tickets[index];

            // Populate the form with the ticket data
            document.getElementById('userId').value = ticket.userId;
            document.getElementById('title').value = ticket.title;
            document.getElementById('priority').value = ticket.priority;
            document.getElementById('description').value = ticket.description;

            // Set the selected ticket index for updating
            selectedTicketIndex = index;
        }

        // Delete a ticket
        function deleteTicket(index) {
            // Fetch tickets from localStorage
            let tickets = JSON.parse(localStorage.getItem('tickets')) || [];

            // Remove the selected ticket
            tickets.splice(index, 1);

            // Save updated tickets back to localStorage
            localStorage.setItem('tickets', JSON.stringify(tickets));

            // Refresh the ticket table view
            document.getElementById('view').click();
        }
        /* When the user clicks on the button,
        toggle between hiding and showing the dropdown content */
        function myFunction() {
          document.getElementById("myDropdown").classList.toggle("show");
        }

        // Close the dropdown menu if the user clicks outside of it
        window.onclick = function(event) {
          if (!event.target.matches('.dropbtn')) {
            var dropdowns = document.getElementsByClassName("dropdown-content");
            var i;
            for (i = 0; i < dropdowns.length; i++) {
              var openDropdown = dropdowns[i];
              if (openDropdown.classList.contains('show')) {
                openDropdown.classList.remove('show');
              }
            }
          }
        }
        
    </script>
</body>
</html>

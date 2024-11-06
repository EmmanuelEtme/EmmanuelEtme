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
    margin-left: 30%;
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
    margin-top: 3%;
    width: 100px;
    text-align: center;
    cursor: pointer;
    color: white;
    background-color: yellow;
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
        .container {
            padding: 20px;
        }
        .table-container {
            display: none; /* Initially hidden */
            margin-top: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <button type="button" id="Home" class="btn-home" name="Home"><a href="Index.jsp"><b>Home</b></a></button>
    <div class="container">
        <h1><b>Enter Ticket</b></h1>
        <label><b>User ID</b></label><br>
        <input type="text" id="userId" placeholder="Enter your id"><br><br>
        <label><b>Ticket Title</b></label><br>
        <input type="text" id="title" placeholder="What's the ticket title?"><br><br>
        <label><b>Ticket Priority</b></label><br>
        <input type="text" id="priority" placeholder="e.g Urgent, High, Medium or Low"><br><br>
        <label><b>Description</b></label><br>
        <textarea id="description" placeholder="Enter your message"></textarea><br><br>
        <button type="button" id="submit" class="btn-success" name="submit"><b>Submit</b></button>
        <button type="button" id="view" class="btn-blue" name="view"><b>View</b></button>
    </div>

    <!-- Table for viewing tickets -->
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>User ID</th>
                    <th>Title</th>
                    <th>Priority</th>
                    <th>Description</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="ticketTableBody">
                <!-- Tickets will be displayed here -->
            </tbody>
        </table>
    </div>

    <!-- JavaScript -->
    <script>
        let selectedTicketIndex = -1;

        // Submit button event listener
        document.getElementById('submit').addEventListener('click', function() {
            const userId = document.getElementById('userId').value;
            const title = document.getElementById('title').value;
            const priority = document.getElementById('priority').value;
            const description = document.getElementById('description').value;

            if (!userId || !title || !priority || !description) {
                alert("Please fill in all fields");
                return;
            }

            // Create a ticket object
            const ticket = { userId, title, priority, description };

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
            document.getElementById('userId').value = '';
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
    </script>
</body>
</html>

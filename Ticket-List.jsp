<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket-List</title>
<style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .btn-addTicket {
        background-color: green;
        padding: 10px 20px;
        color: white;
        border-radius: 10px;
        cursor: pointer;
        margin-left: 90%;
        margin-top: 20%;
        text-align: center;
        }
    </style>
</head>
<body>
<a href="Ticket.jsp" id="addTicket" class="btn btn-addTicket">Add Ticket</a>
	<h2>Ticket Table</h2>

<table>
    <thead>
        <tr>
            <th>Title</th>
            <th>Priority</th>
            <th>Description</th>
            <th>Action</th>
        </tr>
    </thead>
</table>
	
</body>
</html>
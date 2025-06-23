<%-- 
    Document   : reservation
    Created on : Dec 11, 2024, 1:52:39 PM
    Author     : udr
--%>
<%@page import="java.sql.*"%>
<%
    String url = "jdbc:mysql://localhost:3306/FuelReservationDB";
    String username = "root"; // Replace with your MySQL username
    String password = "1234"; // Replace with your MySQL password

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, username, password);
        out.println("Connected to the database successfully!");
        conn.close();
    } catch (Exception e) {
        out.println("Database connection failed: " + e.getMessage());
    }
%>

<% String errorMessage = (String) request.getAttribute("errorMessage"); %>
<% String confirmationMessage = (String) request.getAttribute("confirmationMessage"); %>

<% if (errorMessage != null) { %>
    <div class="alert alert-danger"><%= errorMessage %></div>
<% } %>
<% if (confirmationMessage != null) { %>
    <div class="alert alert-success"><%= confirmationMessage %></div>
<% } %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation - Fuel Reservation Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <!-- QR Code Library -->
    <script src="https://cdn.jsdelivr.net/npm/qrcode/build/qrcode.min.js"></script>

    <!-- External CSS -->
    <link rel="stylesheet" href="./style.css">
    <style>.container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        /* Headings */
        .container h1 {
            color: #007bff;
            text-align: center;
            margin-bottom: 20px;
        }
        
        /* Reservation list styling */
        ul.list-group {
            list-style-type: none;
            padding: 0;
        }
        
        ul.list-group li {
            padding: 10px;
            border: 1px solid #ddd;
            margin-bottom: 10px;
            border-radius: 5px;
            background-color: #f9f9f9;
            transition: background-color 0.3s ease;
        }
        
        ul.list-group li:hover {
            background-color: #f1f1f1;
        }
        
        /* Footer */
        footer {
            text-align: center;
            background-color: #343a40;
            color: #fff;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
            font-size: 14px;
        }</style>
</head>
<body>
    <div id="qrcodeContainer"></div>

    <!-- Navigation Bar -->
    <nav>
        <div class="logo">
            <i class="fas fa-gas-pump fa-3x text-primary mb-3 animate"></i>
            <span>Fuel Queue Manager</span>
        </div>
        <ul class="nav-links">
            <li><a href="indeex.jsp">Home</a></li>
            <li><a href="reservation.jsp">Reservation</a></li>
            <li><a href="history.jsp">Reservation History</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </nav>
            </div>
        </div>
    </nav>

    <!-- Reservation Form Section -->
    <div class="container my-5">
        <form id="reservation-form" class="card my-4 p-4 shadow-sm">
            <h2 class="text-center mb-4">Reservation Panel</h2>
            <div class="mb-3">
                <label for="firstName" class="form-label">First Name:</label>
                <input type="text" id="firstName" class="form-control" placeholder="Enter your first name">
            </div>
            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name:</label>
                <input type="text" id="lastName" class="form-control" placeholder="Enter your last name">
            </div>
            <div class="mb-3">
                <label for="vehicleNumber" class="form-label">Vehicle Number:</label>
                <input type="text" id="vehicleNumber" class="form-control" placeholder="Enter your vehicle number">
            </div>
            <div class="mb-3">
                <label for="noOfLiters" class="form-label">Number of Liters:</label>
                <input type="number" id="noOfLiters" class="form-control" placeholder="Enter the number of liters">
            </div>
            <div class="mb-3">
                <label for="station" class="form-label">Station:</label>
                <select id="station" class="form-select">
                    <option value="Station A">Station A</option>
                    <option value="Station B">Station B</option>
                    <option value="Station C">Station C</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="date" class="form-label">Date:</label>
                <input type="date" id="date" class="form-control">
            </div>
            <div class="mb-3">
                <label for="time" class="form-label">Time:</label>
                <input type="time" id="time" class="form-control">
            </div>
            <button type="button" id="reserveButton" class="btn btn-primary w-100">Reserve</button>
        </form>
        <!-- QR Code Display -->
        <div id="qrcode" class="text-center mt-4"></div>
    </div>

    <!-- JavaScript to Generate QR Code -->
    <script>
        document.getElementById('reserveButton').addEventListener('click', function () {
            // Get form values
            const firstName = document.getElementById('firstName').value;
            const lastName = document.getElementById('lastName').value;
            const vehicleNumber = document.getElementById('vehicleNumber').value;
            const noOfLiters = document.getElementById('noOfLiters').value;
            const station = document.getElementById('station').value;
            const date = document.getElementById('date').value;
            const time = document.getElementById('time').value;

            // Validate form fields
            if (!firstName || !lastName || !vehicleNumber || !noOfLiters || !station || !date || !time) {
                alert('Please fill out all fields.');
                return;
            }


            // Create reservation details as a string
            const reservationDetails = JSON.stringify({
                firstName,
                lastName,
                vehicleNumber,
                noOfLiters,
                station,
                date,
                time
            });

            // Generate QR Code
          document.getElementById('reserveButton').addEventListener('click', function () {
    const qrCodeContainer = document.getElementById('qrcodeContainer');
    qrCodeContainer.innerHTML = ''; // Clear previous QR code

    const firstName = document.getElementById('firstName').value;
    const lastName = document.getElementById('lastName').value;
    const vehicleNumber = document.getElementById('vehicleNumber').value;
    const noOfLiters = document.getElementById('noOfLiters').value;
    const station = document.getElementById('station').value;
    const date = document.getElementById('date').value;
    const time = document.getElementById('time').value;

    if (!firstName || !lastName || !vehicleNumber || !noOfLiters || !station || !date || !time) {
        alert('Please fill out all fields.');
        return;
    }

    const reservationDetails = JSON.stringify({
        firstName,
        lastName,
        vehicleNumber,
        noOfLiters,
        station,
        date,
        time,
    });

    QRCode.toCanvas(reservationDetails, function (error, canvas) {
        if (error) {
            console.error(error);
            alert('Error generating QR code.');
            return;
        }
        qrCodeContainer.appendChild(canvas);
    });
});


});

        });
    </script>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


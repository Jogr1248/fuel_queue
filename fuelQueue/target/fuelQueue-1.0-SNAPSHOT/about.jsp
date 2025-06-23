<%-- 
    Document   : about
    Created on : Dec 11, 2024, 1:55:50 PM
    Author     : udr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About - Fuel Reservation Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome for icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
 <style>/* General body styling */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
    color: #333;
}

/* Navigation bar */
nav {
    background-color: #f8f9fa;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
    border-bottom: 1px solid #ddd;
}

nav .logo {
    display: flex;
    align-items: center;
    font-size: 24px;
    font-weight: bold;
}

nav .logo i {
    margin-right: 10px;
}

nav .nav-links {
    list-style: none;
    display: flex;
    gap: 20px;
}

nav .nav-links li {
    display: inline;
}

nav .nav-links a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
    transition: color 0.3s ease;
}

nav .nav-links a:hover {
    color: #007bff;
}

/* About section container */
.container {
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

.container p {
    line-height: 1.8;
    margin-bottom: 20px;
}

.container ul {
    margin-left: 20px;
    list-style-type: disc;
    color: #555;
}

.container ul li {
    margin-bottom: 10px;
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
}
</style>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="style.css">
</head>
<body>
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
    <div class="container my-5">
        <h1>About Us</h1>
        <p>Welcome to Fuel Queue Manager, your reliable partner in managing fuel reservations efficiently. Our system is designed to reduce wait times and enhance convenience for customers and fuel stations alike.</p>
        <p>With our platform, you can:</p>
        <ul>
            <li>Reserve fuel slots at your preferred station.</li>
            <li>Check fuel availability in real-time.</li>
            <li>Make payments securely and efficiently.</li>
        </ul>
        <p>Thank you for choosing Fuel Queue Manager!</p>
    </div>
    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<%-- 
    Document   : contact
    Created on : Dec 11, 2024, 1:55:12 PM
    Author     : udr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Fuel Reservation Management</title>

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

/* Contact section container */
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

/* Form Styling */
form .form-label {
    font-weight: bold;
    color: #555;
}

form .form-control {
    border-radius: 5px;
    border: 1px solid #ddd;
    padding: 10px;
    margin-bottom: 15px;
    transition: border-color 0.3s ease;
}

form .form-control:focus {
    border-color: #007bff;
    outline: none;
}

form button {
    display: block;
    width: 100%;
    padding: 12px;
    font-size: 16px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

form button:hover {
    background-color: #0056b3;
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
    <link rel="stylesheet" href="./style.css">
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
        <h1>Contact Us</h1>
        <form>
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" id="name" class="form-control" placeholder="Enter your name">
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" id="email" class="form-control" placeholder="Enter your email">
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Message:</label>
                <textarea id="message" class="form-control" rows="5" placeholder="Enter your message"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

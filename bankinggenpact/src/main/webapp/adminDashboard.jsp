<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif; /* Font for the entire page */
            background-color: #7FFFD4; /* Light grey background for the page */
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Full viewport height */
        }
        .container {
            background-color: #fff; /* White background for the content */
            border-radius: 8px; /* Rounded corners for the container */
            padding: 50px; /* Increased padding inside the container */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            width: 500px; /* Increased width for the container */
            text-align: center; /* Center align text inside the container */
        }
        h2 {
            margin-bottom: 30px; /* Increased margin below the title */
            color: #333; /* Darker text color for the header */
            text-transform: uppercase; /* Capitalize text */
            display: flex; /* Use flexbox to align items */
            align-items: center; /* Center items vertically */
            justify-content: center; /* Center items horizontally */
            font-size: 24px; /* Increased font size */
        }
        .icon {
            width: 32px; /* Set width of the icon */
            height: 32px; /* Set height of the icon */
            margin-right: 10px; /* Space between icon and text */
        }
        button {
            display: block; /* Make buttons block-level for stacking */
            width: 100%; /* Full width of the container */
            padding: 15px; /* Increased padding inside buttons */
            margin-bottom: 15px; /* Space between buttons */
            border: none;
            border-radius: 4px; /* Rounded corners for buttons */
            color: white; /* White text color */
            font-size: 16px; /* Font size for buttons */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s ease; /* Smooth background color transition */
        }
        .btn-register {
            background-color: #28a745; /* Green background for Register Customer */
        }
        .btn-view {
            background-color: #007bff; /* Blue background for View Customers */
        }
        .btn-logout {
            background-color: #dc3545; /* Red background for Logout */
        }
        .btn-register:hover {
            background-color: #218838; /* Darker green on hover */
        }
        .btn-view:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        .btn-logout:hover {
            background-color: #c82333; /* Darker red on hover */
        }
        .disclaimer {
            margin-top: 20px; /* Margin above the disclaimer */
            color: #555; /* Slightly lighter text color */
            font-size: 14px; /* Font size for disclaimer */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>
            <svg class="icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                <!-- Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc. -->
                <path d="M240.1 4.2c9.8-5.6 21.9-5.6 31.8 0l171.8 98.1L448 104l0 .9 47.9 27.4c12.6 7.2 18.8 22 15.1 36s-16.4 23.8-30.9 23.8L32 192c-14.5 0-27.2-9.8-30.9-23.8s2.5-28.8 15.1-36L64 104.9l0-.9 4.4-1.6L240.1 4.2zM64 224l64 0 0 192 40 0 0-192 64 0 0 192 48 0 0-192 64 0 0 192 40 0 0-192 64 0 0 196.3c.6 .3 1.2 .7 1.8 1.1l48 32c11.7 7.8 17 22.4 12.9 35.9S494.1 512 480 512L32 512c-14.1 0-26.5-9.2-30.6-22.7s1.1-28.1 12.9-35.9l48-32c.6-.4 1.2-.7 1.8-1.1L64 224z"/>
            </svg>
            WELCOME <%= session.getAttribute("username") %>
        </h2>
        <button class="btn-register" onclick="location.href='registerCustomer.jsp'">Register Customer</button>
        <button class="btn-view" onclick="location.href='viewCustomer.jsp'">View Customers</button>
        <button class="btn-logout" onclick="location.href='logout.jsp'">Logout</button>
        <div class="disclaimer">
            <p>Disclaimer: This page is only for admin usage.Only admins are permitted to perform these actions.</p>
        </div>
    </div>
</body>
</html>

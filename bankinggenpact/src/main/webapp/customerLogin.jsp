<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Login</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <!-- Include Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #B0E0E6; /* Light cyan background */
            font-family: Arial, sans-serif;
            margin: 0;
            height: 100vh; /* Full viewport height */
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px; /* Padding around container */
            background-color: white;
            border-radius: 8px; /* Rounded corners for container */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }
        h2 {
            color: #333; /* Darker text color for the title */
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 0 10px 0; /* Margin below title */
            text-transform: uppercase; /* Capitalize text */
        }
        h2 i {
            margin-right: 10px; /* Space between icon and text */
            font-size: 24px; /* Adjust icon size */
        }
        .welcome-text {
            margin-bottom: 25px; /* Space between welcome text and form */
            color: #555; /* Slightly lighter text color */
        }
        form {
            width: 400px; /* Adjust width for form */
            padding: 30px; /* Padding inside form */
            border: 1px solid #ddd; /* Light border */
            border-radius: 5px; /* Rounded corners for form */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }
        label {
            display: block;
            margin-bottom: 8px; /* Margin below labels */
            color: #333; /* Darker text color for labels */
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px; /* Padding inside inputs */
            margin-bottom: 10px; /* Space between inputs */
            border: 1px solid #ccc; /* Light border */
            border-radius: 4px; /* Rounded corners for inputs */
        }
        input[type="submit"] {
            width: auto; /* Button width auto-adjusts to content */
            padding: 8px 16px; /* Padding inside button */
            background-color: #4CAF50; /* Green background color */
            border: none;
            border-radius: 4px; /* Rounded corners for button */
            color: white; /* White text color */
            font-size: 14px; /* Standard font size */
            cursor: pointer; /* Pointer cursor on hover */
            margin-top: 10px; /* Margin above button */
            transition: background-color 0.3s ease; /* Smooth background color transition */
        }
        input[type="submit"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2><i class="fas fa-user"></i>Customer Login</h2>
        <p class="welcome-text">WELCOME! Enter your login credentials</p>
        <form action="CustomerLoginServlet" method="post">
            <label for="account_no">Account No:</label>
            <input type="text" id="account_no" name="account_no"><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password"><br>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>

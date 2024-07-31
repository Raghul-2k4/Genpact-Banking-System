<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Customer</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif; /* Font for the entire page */
            background-color: #e5e7e9; /* Light grey background */
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Full viewport height */
            box-sizing: border-box; /* Include padding and border in element's total width and height */
        }
        .container {
            background-color:  #fbfcfc; /* White background for the container */
            border-radius: 8px; /* Rounded corners for the container */
            padding: 30px; /* Padding inside the container */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            max-width: 50vw; /* Max width relative to viewport width */
            max-height: 90vh; /* Max height relative to viewport height */
            overflow-y: auto; /* Add vertical scrollbar if needed */
            text-align: center; /* Center align text inside the container */
            box-sizing: border-box; /* Include padding and border in element's total width and height */
        }
        h2 {
            margin-bottom: 20px; /* Margin below the title */
            color: #333; /* Darker text color for the title */
            text-transform: uppercase; /* Capitalize text */
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: stretch; /* Ensure form elements stretch to fill container width */
        }
        label {
            display: block;
            margin-bottom: 8px; /* Margin below labels */
            color: #333; /* Darker text color for labels */
            text-align: left; /* Align text to left for labels */
        }
        input[type="text"],
        textarea,
        select,
        input[type="date"] {
            width: 80%; /* Full width of the container */
            padding: 10px; /* Padding inside inputs and textarea */
            margin-bottom: 15px; /* Space between inputs and textarea */
            border: 1px solid #ccc; /* Light border */
            border-radius: 4px; /* Rounded corners for inputs and textarea */
            box-sizing: border-box; /* Include padding and border in element's total width and height */
        }
        input[type="submit"] {
            width: 30%; /* Full width of the container */
            padding: 10px; /* Padding inside button */
            background-color: #4CAF50; /* Green background color */
            border: none;
            border-radius: 4px; /* Rounded corners for button */
            color: white; /* White text color */
            font-size: 16px; /* Standard font size */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s ease; /* Smooth background color transition */
            margin-top: 10px; /* Margin above button */
        }
        input[type="submit"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }
        .disclaimer {
            margin-top: 20px; /* Margin above the disclaimer */
            color: red; /* Slightly lighter text color */
            font-size: 20px; /* Font size for disclaimer */
            text-align: center; /* Center align text inside the disclaimer */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register Customer</h2>
        <form action="RegisterCustomerServlet" method="post">
            <label for="full_name">Full Name:</label>
            <input type="text" id="full_name" name="full_name"><br>
            <label for="address">Address:</label>
            <textarea id="address" name="address"></textarea><br>
            <label for="mobile_no">Mobile No:</label>
            <input type="text" id="mobile_no" name="mobile_no"><br>
            <label for="email_id">Email ID:</label>
            <input type="text" id="email_id" name="email_id"><br>
            <label for="account_type">Account Type:</label>
            <select id="account_type" name="account_type">
                <option value="Saving">Saving</option>
                <option value="Current">Current</option>
            </select><br>
            <label for="initial_balance">Initial Balance:</label>
            <input type="text" id="initial_balance" name="initial_balance"><br>
            <label for="date_of_birth">Date of Birth:</label>
            <input type="date" id="date_of_birth" name="date_of_birth"><br>
            <label for="id_proof">ID Proof:</label>
            <input type="text" id="id_proof" name="id_proof"><br>
            
            <input type="submit" value="Register">
        </form>
        <div class="disclaimer">
            <p> Disclaimer: Please fill the above details correctly and verify them before submission. After submission, the details cannot be updated.</p>
        </div>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Withdraw</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- Font Awesome CDN -->
    <style>
        body {
            font-family: Arial, sans-serif; /* Font for the entire page */
            background: #abebc6; /* Light green background for a professional look */
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Full viewport height */
        }
        .container {
            background-color: #fff; /* White background for the container */
            border-radius: 8px; /* Rounded corners for the container */
            padding: 50px; /* Padding inside the container */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            width: 500px; /* Fixed width for the container */
            text-align: center; /* Center align text inside the container */
        }
        h2 {
            margin-bottom: 20px; /* Margin below the title */
            color: #333; /* Darker text color for the title */
            display: flex;
            align-items: center;
            justify-content: center;
        }
        h2 i {
            margin-right: 10px; /* Space between icon and text */
            font-size: 30px; /* Font size of the icon */
            color: black; /* Color of the icon */
        }
        .description {
            margin-bottom: 20px; /* Margin below the description */
            font-size: 20px; /* Font size for description */
            color: #666; /* Gray text color for the description */
            text-align: center; /* Center align text */
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        label {
            margin-bottom: 8px; /* Margin below label */
            font-size: 16px; /* Font size for labels */
        }
        input[type="text"] {
            width: 100%;
            padding: 10px; /* Padding inside text input */
            margin-bottom: 20px; /* Space between input and submit button */
            border: 1px solid #ccc; /* Border for input field */
            border-radius: 4px; /* Rounded corners for input field */
        }
        input[type="submit"] {
            width: auto; /* Button width auto-adjusts to content */
            padding: 10px 20px; /* Padding inside button */
            background-color: #27ae60; /* Green background color */
            border: none;
            border-radius: 4px; /* Rounded corners for button */
            color: white; /* White text color */
            font-size: 16px; /* Font size for button */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s ease; /* Smooth background color transition */
        }
        input[type="submit"]:hover {
            background-color: #2ecc71; /* Slightly darker green on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>
            <i class="fas fa-wallet"></i> <!-- Font Awesome wallet icon -->
            Withdraw Amount
        </h2>
        <div class="description">
            <h3>Description</h3>
            <p>Please enter the amount you wish to withdraw and ensure all details are correct before submission.</p>
        </div>
        <form action="WithdrawServlet" method="post">
            <label for="amount">Amount:</label>
            <input type="text" id="amount" name="amount" placeholder="Enter amount">
            <input type="submit" value="Withdraw">
        </form>
    </div>
</body>
</html>

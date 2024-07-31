<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Close Account</title>
    <style>
        body {
            font-family: Arial, sans-serif; /* Font for the entire page */
            background-color: #FF0080; /* Light grey background for the page */
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Full viewport height */
        }
        .form-container {
            background-color: #fff; /* White background for the form */
            border-radius: 8px; /* Rounded corners for the form */
            padding: 50px; /* Padding inside the form */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            width: 500px; /* Fixed width for the form */
            text-align: center; /* Center align text inside the form */
        }
        h2 {
            margin-bottom: 20px; /* Margin below the title */
            color: #333; /* Darker text color for the title */
            text-transform: uppercase; /* Capitalize text */
        }
        label {
            display: block; /* Block level to center align */
            margin-bottom: 20px; /* Space below the label */
            color: #333; /* Dark text color for the label */
        }
        input[type="submit"], a.button {
            display: inline-block; /* Inline block to keep buttons side by side */
            padding: 10px 20px; /* Padding inside buttons */
            border: none;
            border-radius: 4px; /* Rounded corners for buttons */
            color: white; /* White text color */
            font-size: 16px; /* Font size for buttons */
            text-decoration: none; /* Remove underline from link */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s ease; /* Smooth background color transition */
            margin: 5px; /* Space between buttons */
        }
        .yes-button {
            background-color: #dc3545; /* Red background for Yes button */
        }
        .yes-button:hover {
            background-color: #c82333; /* Darker red on hover */
        }
        .no-button {
            background-color: #28a745; /* Green background for No button */
        }
        .no-button:hover {
            background-color: #218838; /* Darker green on hover */
        }
        .warning-message {
            color: #dc3545; /* Red color for warning message */
            font-size: 15px; /* Font size for the warning message */
            margin-top: 20px; /* Space above the warning message */
            text-align: center; /* Center align text inside the warning message */
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Close Account</h2>
        <form action="CloseAccountServlet" method="post">
            <label for="confirm">Are you sure you want to close your account?<br>The action is irreversible.</label><br>
            <a href="customerLogin.jsp" class="button yes-button">Yes</a>
            <a href="customerDashboard.jsp" class="button no-button">No</a>
            <div class="warning-message">
                <h3>WARNING</h3>
                <p>This action will permanently remove your account.<br>This action will permanently remove your access permission.<br>If applicable, your subscription will be cancelled.</p>
            </div>
        </form>
    </div>
</body>
</html>

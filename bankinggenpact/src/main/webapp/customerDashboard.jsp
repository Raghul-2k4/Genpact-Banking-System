<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif; /* Font for the entire page */
            background-color: #B0E0E6; /* Light grey background for the page */
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
            margin: auto; /* Center horizontally if the width is fixed */
        }
        h2 {
            margin-bottom: 20px; /* Margin below the title */
            color: #333; /* Darker text color for the title */
            text-transform: uppercase; /* Capitalize text */
            display: flex;
            align-items: center;
            justify-content: center;
        }
        h2 svg {
            margin-right: 10px; /* Space between SVG icon and text */
            width: 24px; /* Width of the SVG icon */
            height: 24px; /* Height of the SVG icon */
            fill: #333; /* Color of the SVG icon */
        }
        .btn {
            display: block; /* Make buttons block-level for stacking */
            width: calc(100% - 20px); /* Full width of the container minus padding */
            padding: 10px 0; /* Padding inside buttons */
            margin: 10px 0; /* Space between buttons */
            border: none;
            border-radius: 4px; /* Rounded corners for buttons */
            color: #000; /* Black text color */
            font-size: 16px; /* Font size for buttons */
            text-decoration: none; /* Remove underline from links */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s ease, transform 0.2s ease; /* Smooth background color and transform transition */
        }
        .btn-primary {
            background-color: #2ecc71; /* Green background color */
        }
        .btn-primary:hover {
            background-color: #27ae60; /* Darker green on hover */
        }
        .btn-primary:active {
            transform: scale(1.1); /* Enlarge button by 10% when pressed */
        }
        .btn-light-red {
            background-color: #FA8072; /* Light red background color */
        }
        .btn-light-red:hover {
            background-color: #f5c6cb; /* Slightly darker red on hover */
        }
        .btn-light-red:active {
            transform: scale(1.1); /* Enlarge button by 10% when pressed */
        }
        .scope {
            margin-top: 20px; /* Margin above the SCOPE section */
            font-size: 18px; /* Font size for the SCOPE section */
            color: black; /* Black text color for the SCOPE section */
            text-align: center; /* Center align text inside the SCOPE section */
        }
        .scope h3 {
            margin: 15px 0; /* Margin above and below the SCOPE title */
            color: #333; /* Darker text color for the SCOPE title */
            text-transform: uppercase; /* Capitalize text */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M240.1 4.2c9.8-5.6 21.9-5.6 31.8 0l171.8 98.1L448 104l0 .9 47.9 27.4c12.6 7.2 18.8 22 15.1 36s-16.4 23.8-30.9 23.8L32 192c-14.5 0-27.2-9.8-30.9-23.8s2.5-28.8 15.1-36L64 104.9l0-.9 4.4-1.6L240.1 4.2zM64 224l64 0 0 192 40 0 0-192 64 0 0 192 48 0 0-192 64 0 0 192 40 0 0-192 64 0 0 196.3c.6 .3 1.2 .7 1.8 1.1l48 32c11.7 7.8 17 22.4 12.9 35.9S494.1 512 480 512L32 512c-14.1 0-26.5-9.2-30.6-22.7s1.1-28.1 12.9-35.9l48-32c.6-.4 1.2-.7 1.8-1.1L64 224z"/></svg>
            Welcome Customer
        </h2>
        <%
            String accountNo = (String) session.getAttribute("account_no");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "Raghul@11");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Customer WHERE account_no=?");
            ps.setString(1, accountNo);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                out.print("Account No: " + rs.getString("account_no") + "<br>");
                out.print("Balance: " + rs.getDouble("initial_balance") + "<br>");
            }
        %>
        <a href="viewTransactions.jsp" class="btn btn-primary">View Transactions</a>
        <a href="deposit.jsp" class="btn btn-primary">Deposit</a>
        <a href="withdraw.jsp" class="btn btn-primary">Withdraw</a>
        <a href="closeAccount.jsp" class="btn btn-light-red">Close Account</a>
        <a href="logout.jsp" class="btn btn-light-red">Logout</a>
        
        <!-- SCOPE Section -->
        <div class="scope">
            <p> Disclaimer: This page is only for customer usage</p>
        </div>
    </div>
</body>
</html>

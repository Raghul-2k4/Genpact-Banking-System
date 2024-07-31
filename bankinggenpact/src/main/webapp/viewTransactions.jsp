<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Transactions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #DAF7A6; /* Lighter background color */
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }
        .container {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            width: 80%;
            max-width: 800px; /* Max width for larger screens */
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            text-align: center; /* Center-align text and elements inside */
        }
        .transaction {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin: 10px 0;
            padding: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            text-align: left; /* Align text inside transaction to the left */
        }
        .transaction:nth-child(even) {
            background-color: #fff;
        }
        .transaction p {
            margin: 5px 0;
        }
        .download-info {
            margin-top: 20px;
            font-size: 18px;
            color: #333;
        }
        .button {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            padding: 15px 20px; /* Increased padding for better appearance */
            border-radius: 5px;
            transition: background-color 0.3s ease;
            width: 80%;
            max-width: 400px; /* Ensure buttons have a max width */
            text-align: center; /* Center-align text inside the button */
            overflow: hidden; /* Handle overflow of text */
            white-space: nowrap; /* Prevent text from wrapping to the next line */
            text-overflow: ellipsis; /* Show ellipsis if text overflows */
            margin: 10px auto;
        }
        .download-link {
            background-color: #008CBA;
        }
        .download-link:hover {
            background-color: #007B9E;
        }
        .back-link {
            background-color: #4CAF50;
            font-size: 20px; /* Larger font size for the back link */
        }
        .back-link:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            String accountNo = (String) session.getAttribute("account_no");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "Raghul@11");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM transactions WHERE customer_id=(SELECT customer_id FROM customer WHERE account_no=?) ORDER BY transaction_date DESC LIMIT 10");
            ps.setString(1, accountNo);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
        %>
            <div class="transaction">
                <p><strong>Date:</strong> <%= rs.getTimestamp("transaction_date") %></p>
                <p><strong>Amount:</strong> <%= rs.getDouble("amount") %></p>
                <p><strong>Type:</strong> <%= rs.getString("type") %></p>
            </div>
        <%
            }
        %>
        <div class="download-info">
            Click here to download your last 10 transactions as a PDF file 
        </div>
        <a href="DownloadPDFServlet" class="button download-link">Download Transactions as PDF</a>
        <a href="viewCustomer.jsp" class="button back-link">Back to Dashboard</a>
    </div>
</body>
</html>

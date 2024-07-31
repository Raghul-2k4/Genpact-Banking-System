<%@ page import="java.util.*, java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Customers</title>
    <style>
        body {
            font-family: Arial, sans-serif; /* Font for the entire page */
            background-color: #fff; /* Light grey background */
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Full viewport height */
            box-sizing: border-box; /* Include padding and border in element's total width and height */
        }
        table {
            width: 90%; /* Table width relative to viewport width */
            max-width: 1200px; /* Maximum width of the table */
            border-collapse: collapse; /* Collapse table borders */
            margin-bottom: 20px; /* Space below the table */
        }
        th, td {
            border: 3px solid black; /* Light border for table cells */
            padding: 8px; /* Padding inside table cells */
            text-align: left; /* Left-align text inside table cells */
        }
        th {
            background-color: #fff; /* Light grey background for headers */
            color: black; /* Darker text color for headers */
        }
        .disclaimer {
            margin-top: 20px; /* Margin above the disclaimer */
            color: red; /* Slightly lighter text color */
            font-size: 20px; /* Font size for disclaimer */
            text-align: center; /* Center-align text inside the disclaimer */
        }
    </style>
</head>
<body>
    <h2>CUSTOMER LIST</h2>
    <table>
        <tr>
            <th>Customer ID</th>
            <th>Full Name</th>
            <th>Address</th>
            <th>Mobile No</th>
            <th>Email ID</th>
            <th>Account Type</th>
            <th>Initial Balance</th>
            <th>Date of Birth</th>
            <th>Account No</th>
            <th>Password</th>
        </tr>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingSystem", "root", "Raghul@11");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM Customer");
                
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getInt("customer_id") + "</td>");
                    out.println("<td>" + rs.getString("full_name") + "</td>");
                    out.println("<td>" + rs.getString("address") + "</td>");
                    out.println("<td>" + rs.getString("mobile_no") + "</td>");
                    out.println("<td>" + rs.getString("email_id") + "</td>");
                    out.println("<td>" + rs.getString("account_type") + "</td>");
                    out.println("<td>" + rs.getDouble("initial_balance") + "</td>");
                    out.println("<td>" + rs.getDate("date_of_birth") + "</td>");
                    out.println("<td>" + rs.getString("account_no") + "</td>");
                    out.println("<td>" + rs.getString("password") + "</td>");
                    out.println("</tr>");
                }
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
    <a href="adminDashboard.jsp">Back to Dashboard</a>
    <div class="disclaimer">
        <p>Disclaimer: This page is only for admin use. Performance of actions is also permitted to admin only.</p>
    </div>
</body>
</html>

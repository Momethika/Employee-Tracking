<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return; // Prevent further processing if the user is not logged in
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>View My Charts</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h2 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        ul {
            list-style-type: none;
            padding: 0;
            text-align: center;
        }

        li {
            margin: 10px 0;
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-size: 18px;
            padding: 10px 15px;
            display: inline-block;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        a:hover {
            background-color: #007bff;
            color: white;
        }

        a:visited {
            color: #0056b3;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .back-link {
            display: block;
            margin-top: 20px;
            text-align: center;
            font-size: 16px;
            color: #007bff;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>My Charts</h2>
        <ul>
            <li><a href="dailyChart.jsp">View Daily Chart</a></li>
            <li><a href="weeklyChart.jsp">View Weekly Chart</a></li>
            <li><a href="monthlyChart.jsp">View Monthly Chart</a></li>
        </ul>
        <a class="back-link" href="dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>

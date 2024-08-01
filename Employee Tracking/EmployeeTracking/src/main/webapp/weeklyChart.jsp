<%@page import="jakarta.servlet.http.HttpSession"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    // HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    } else {
        String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Weekly Tasks/Hours Bar Chart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2 {
            color: #333;
            margin-top: 20px;
        }

        .container {
            max-width: 800px;
            width: 90%;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin-top: 20px;
        }

        canvas {
            max-width: 100%;
            height: auto;
            max-height: 300px; /* Reduced chart height */
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-size: 16px;
            margin-top: 20px;
            display: block;
            transition: color 0.3s;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="container">
        <h2>Weekly Tasks/Hours Bar Chart for <%= username %></h2>
        <canvas id="weeklyChart" width="400" height="300"></canvas> <!-- Reduced chart width and height -->
        <script>
            fetch('WeeklyChartServlet')
            .then(response => response.json())
            .then(data => {
                const ctx = document.getElementById('weeklyChart').getContext('2d');
                new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: data.labels,
                        datasets: [{
                            label: 'Tasks/Hours',
                            data: data.data,
                            backgroundColor: 'rgba(54, 162, 235, 0.2)',
                            borderColor: 'rgba(54, 162, 235, 1)',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        }
                    }
                });
            });
        </script>
        <a href="dashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
<%
    }
%>

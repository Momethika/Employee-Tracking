<%@page import="jakarta.servlet.http.HttpServletRequest"%>
<%@page import="jakarta.servlet.http.HttpServletResponse"%>
<%
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    } else {
        String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #e3f2fd; /* Very light pastel blue background */
        margin: 0;
        padding: 0;
        text-align: center;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh; /* Full viewport height */
    }
    .container {
        background-color: #ffffff; /* White background for the container */
        border-radius: 15px;
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1); /* Slight shadow for depth */
        padding: 30px;
        text-align: center;
        max-width: 500px; /* Restrict width to a max of 500px */
        width: 100%;
        margin: 20px; /* Margin around the container */
        box-sizing: border-box; /* Ensure padding and border are included in the element's total width and height */
    }
    h2 {
        color: #4a90e2; /* Brighter pastel blue for the heading */
        font-size: 2.5em;
        margin-bottom: 20px;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2), 0 0 25px rgba(74, 144, 226, 0.3); /* Subtle shadow for depth */
    }
    .links {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 15px; /* Space between buttons */
    }
    .links a {
        text-decoration: none;
        color: #ffffff;
        background-color: #7abaff; /* Pastel blue for buttons */
        padding: 14px 25px; /* Increased padding for a bolder appearance */
        border-radius: 8px;
        font-size: 1.2em; /* Increased font size for better readability */
        font-weight: bold; /* Bold font for emphasis */
        transition: background-color 0.3s ease, transform 0.2s;
        width: 100%; /* Make buttons full-width within container */
        max-width: 400px; /* Ensure buttons don't get too wide */
    }
    .links a:hover {
        background-color: #5a8ed9; /* Slightly darker pastel blue on hover */
    }
    .links a:active {
        transform: scale(0.98); /* Slight shrink on click */
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Welcome, <%= session.getAttribute("username") %></h2>
        <div class="links">
            <%
                if ("Admin".equals(role)) {
            %>
            <a href="adminPage.jsp">Admin Page</a>
            <%
                } else {
            %>
            <a href="taskPage.jsp">Task Management</a>
            <a href="associaterPage.jsp">View Associater</a>
            <%
                }
            %>
            <a href="LogoutServlet">Logout</a>
        </div>
    </div>
</body>
</html>
<%
    }
%>

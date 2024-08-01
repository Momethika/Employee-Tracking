<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    //HttpSession session = request.getSession(false);
    ResultSet task = (ResultSet) request.getAttribute("task");
    if (task != null) {
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Task</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 500px; /* Reduced width */
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }
        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"],
        input[type="date"],
        input[type="time"],
        textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        textarea {
            resize: vertical;
            height: 80px; /* Reduced height */
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #28a745;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        a {
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit Task</h2>
        <form action="EditTaskServlet" method="post">
            <input type="hidden" name="taskId" value="<%= task.getInt("task_id") %>">
            <label for="project">Project:</label>
            <input type="text" id="project" name="project" value="<%= task.getString("project") %>"><br>
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" value="<%= task.getDate("date") %>"><br>
            <label for="startTime">Start Time:</label>
            <input type="time" id="startTime" name="startTime" value="<%= task.getTime("start_time") %>"><br>
            <label for="endTime">End Time:</label>
            <input type="time" id="endTime" name="endTime" value="<%= task.getTime("end_time") %>"><br>
            <label for="category">Category:</label>
            <input type="text" id="category" name="category" value="<%= task.getString("category") %>"><br>
            <label for="description">Description:</label>
            <textarea id="description" name="description"><%= task.getString("description") %></textarea><br>
            <input type="submit" value="Update Task">
        </form>
        <a href="taskPage.jsp">Back to Task Management</a>
    </div>
</body>
</html>
<%
    }
%>

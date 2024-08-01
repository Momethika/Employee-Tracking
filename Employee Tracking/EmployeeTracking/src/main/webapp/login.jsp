<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e0f7fa; /* Light pastel cyan background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #333;
        }
        .container {
            background-color: #ffffff; /* White background for the form */
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            border: 1px solid #e0e0e0;
        }
        h2 {
            color: #444;
            margin-bottom: 1.5rem;
            text-align: center;
            font-size: 1.5rem;
        }
        .form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }
        label {
            display: flex;
            align-items: center;
            margin-bottom: 0.5rem;
            color: #555;
            font-size: 0.9rem;
            position: relative;
        }
        .form-group i {
            color: #888;
            margin-right: 0.75rem;
        }
        input[type="text"],
        input[type="password"] {
            width: 91%; /* Changed to 100% for better alignment */
            padding: 0.75rem 1rem;
            border: 1px solid #ddd;
            border-radius: 10px;
            outline: none;
            font-size: 1rem;
            transition: border-color 0.3s, box-shadow 0.3s;
        }
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #b2dff7; /* Light pastel blue border on focus */
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.3);
        }
        input::placeholder {
            color: #aaa; /* Placeholder color */
            opacity: 1; /* Ensure full opacity for the placeholder text */
        }
        .btn-submit {
            width: 100%;
            padding: 1rem;
            background-color: #6cb2eb; /* Pastel blue button */
            border: none;
            border-radius: 10px;
            color: #fff;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }
        .btn-submit:hover {
            background-color: #5a9bd1; /* Slightly darker blue on hover */
            transform: translateY(-2px); /* Subtle lift effect */
        }
        .btn-submit:active {
            transform: translateY(0); /* Cancel lift effect on click */
        }
    </style>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="LoginServlet" method="post">
            <div class="form-group">
                <label for="username">
                    <i class="fas fa-user"></i> Username
                </label>
                <input type="text" id="username" name="username" placeholder="Enter your username" required>
            </div>
            <div class="form-group">
                <label for="password">
                    <i class="fas fa-lock"></i> Password
                </label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <input type="submit" value="Login" class="btn-submit">
        </form>
    </div>
</body>
</html>

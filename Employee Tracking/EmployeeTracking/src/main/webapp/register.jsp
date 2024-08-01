<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e0f2f1; /* Light pastel teal background */
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
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            border: 1px solid #cfd8dc;
            box-sizing: border-box; /* Ensures padding and border are included in element's total width and height */
        }
        h2 {
            color: #00796b; /* Professional teal color for the heading */
            margin-bottom: 1.5rem;
            text-align: center;
            font-size: 1.75rem; /* Slightly larger font size for the heading */
        }
        .form-group {
            margin-bottom: 1.5rem;
        }
        label {
            display: block;
            margin-bottom: 0.5rem;
            color: #555;
            font-size: 1rem;
        }
        input[type="text"],
        input[type="password"],
        select {
            width: 100%;
            padding: 0.75rem 1rem;
            border: 1px solid #b0bec5;
            border-radius: 8px;
            outline: none;
            font-size: 1rem;
            transition: border-color 0.3s, box-shadow 0.3s;
            box-sizing: border-box; /* Ensures padding and border are included in element's total width and height */
        }
        input[type="text"]:focus,
        input[type="password"]:focus,
        select:focus {
            border-color: #00796b; /* Darker teal border on focus */
            box-shadow: 0 0 4px rgba(0, 121, 107, 0.3);
        }
        .btn-submit {
            width: 100%;
            padding: 1rem;
            background-color: #00796b; /* Professional teal button */
            border: none;
            border-radius: 8px;
            color: #fff;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            box-sizing: border-box; /* Ensures padding and border are included in element's total width and height */
        }
        .btn-submit:hover {
            background-color: #004d40; /* Slightly darker teal on hover */
            transform: translateY(-2px); /* Subtle lift effect */
        }
        .btn-submit:active {
            transform: translateY(0); /* Cancel lift effect on click */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register</h2>
        <form action="RegisterServlet" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="role">Role:</label>
                <select id="role" name="role" required>
                    <option value="Admin">Admin</option>
                    <option value="Associate">Associate</option>
                </select>
            </div>
            <input type="submit" value="Register" class="btn-submit">
        </form>
    </div>
</body>
</html>

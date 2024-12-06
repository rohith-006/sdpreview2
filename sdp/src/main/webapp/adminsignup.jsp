<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Signup</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            margin-top: 100px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
        }

        h1 {
            color: #4CAF50;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-control {
            border-radius: 5px;
            padding: 10px;
            width: 100%;
            font-size: 16px;
        }

        .btn {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .link-container {
            text-align: center;
            margin-top: 20px;
        }

        .link-container a {
            text-decoration: none;
            color: #4CAF50;
        }

        .link-container a:hover {
            color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Admin Signup</h1>
        <form action="/createadminsignup" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>

            <button type="submit" class="btn">Create Account</button>
        </form>

        <!-- Link to login page for existing users -->
        <div class="link-container">
            <p>Already have an account? <a href="/adminlogin">Log in</a></p>
        </div>
    </div>
</body>
</html>

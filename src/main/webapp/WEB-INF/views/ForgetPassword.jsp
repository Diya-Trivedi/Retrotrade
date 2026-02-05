<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forget Password</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #1cc88a, #4e73df);
            font-family: Arial, sans-serif;
        }

        .card {
            background: #ffffff;
            padding: 25px;
            width: 100%;
            max-width: 350px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #198754;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #157347;
        }

        .links {
            text-align: center;
            margin-top: 15px;
        }

        .links a {
            text-decoration: none;
            color: #0d6efd;
        }
    </style>
</head>

<body>

<div class="card">
    <h3>Forget Password</h3>

    <form action="ForgetPasswordAction.jsp" method="post">

        <label>Email</label>
        <input type="email" name="email"
               placeholder="Enter your registered email" required>

        <button type="submit">Send Reset Link</button>

        <div class="links">
            <span>Remember your password?</span>
            <a href="login">Login</a>
        </div>

    </form>
</div>

</body>
</html>

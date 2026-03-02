<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>

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
        padding: 30px;
        width: 100%;
        max-width: 380px;
        border-radius: 15px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    }

    h3 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    label {
        font-weight: bold;
        display: block;
        margin-top: 10px;
    }

    input {
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

    .error {
        color: red;
        text-align: center;
        margin-bottom: 10px;
    }

    .success {
        color: green;
        text-align: center;
        margin-bottom: 10px;
    }
</style>
</head>

<body>

<div class="card">
    <h3>Reset Password</h3>

    <!-- Messages -->
    <div class="error">${error}</div>
    <div class="success">${success}</div>

    <form action="update-password" method="post">

        <!-- Hidden Email -->
        <input type="hidden" name="email" value="${email}" />

        <label>Enter OTP</label>
        <input type="text" name="otp" placeholder="Enter OTP" required>

        <label>New Password</label>
        <input type="password" name="newPassword" 
               placeholder="Enter new password" required>

        <label>Confirm Password</label>
        <input type="password" name="confirmPassword" 
               placeholder="Confirm new password" required>

        <button type="submit">Update Password</button>

    </form>
</div>

</body>
</html>
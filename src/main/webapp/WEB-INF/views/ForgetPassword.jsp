<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    height: 100vh;

    /* SAME LOGIN GRADIENT */
    background: linear-gradient(to bottom right, #4e73df, #1c4ccf);

    display: flex;
    justify-content: center;
    align-items: center;
}

.card {
    background: #f8f9fc;
    padding: 40px;
    width: 380px;
    border-radius: 10px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.15);
    text-align: center;
}

.card h3 {
    margin-bottom: 25px;
    font-weight: normal;
    color: #333;
}

.input-field {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border-radius: 25px;
    border: 1px solid #ddd;
    outline: none;
    font-size: 14px;
}

.input-field:focus {
    border-color: #4e73df;
}

.btn {
    width: 100%;
    padding: 12px;
    border-radius: 25px;
    border: none;
    background: #4e73df;
    color: white;
    font-size: 15px;
    cursor: pointer;
    transition: 0.3s;
}

.btn:hover {
    background: #2e59d9;
}

.links {
    margin-top: 15px;
    font-size: 14px;
}

.links a {
    color: #4e73df;
    text-decoration: none;
}
</style>
</head>

<body>

<div class="card">
    <h3>Forget Password</h3>

    <form action="resetPassword" method="post">

        <input type="email"
               name="email"
               class="input-field"
               placeholder="Enter Email Address..."
               required>

        <button type="submit" class="btn">Send OTP</button>

        <div class="links">
            Remember your password?
            <a href="login">Login</a>
        </div>

    </form>
</div>

</body>
</html>
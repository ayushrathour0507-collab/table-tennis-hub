<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register | Table Tennis Hub</title>

    <link rel="stylesheet" href="css/style.css">

    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;600&family=Poppins&display=swap" rel="stylesheet">
</head>
<body>

    <div class="auth-container">
        <div class="auth-card">
            <h2>Register</h2>

            <form action="RegisterServlet" method="post">
                <input type="text" name="username" placeholder="Username" required>
                <input type="email" name="email" placeholder="Email" required>
                <input type="password" name="password" placeholder="Password" required>

                <button type="submit" class="gradient-btn">Register</button>
            </form>

            <p class="auth-text">
                Already have an account?
                <a href="login.jsp">Login</a>
            </p>
        </div>
    </div>

</body>
</html>

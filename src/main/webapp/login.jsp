<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login | Table Tennis Hub</title>

    <style>
        body{
            margin:0;
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            background:radial-gradient(circle at top,#111,#000);
            font-family:Arial, sans-serif;
            color:white;
        }

        .login-box{
            width:360px;
            background:rgba(255,255,255,0.08);
            padding:40px;
            border-radius:18px;
            box-shadow:0 10px 40px rgba(0,0,0,0.7);
            text-align:center;
        }

        .login-box h2{
            margin-bottom:25px;
            color:#FFFDD0;
        }

        .login-box input{
            width:100%;
            padding:12px;
            margin-bottom:15px;
            border:none;
            border-radius:8px;
            background:#1a1a1a;
            color:white;
            font-size:14px;
        }

        .login-box input::placeholder{
            color:#aaa;
        }

        .login-box button{
            width:100%;
            padding:12px;
            margin-top:10px;
            border:none;
            border-radius:30px;
            background:linear-gradient(135deg,#FFFDD0,#FFFDD0);
            color:white;
            font-size:15px;
            font-weight:bold;
            cursor:pointer;
        }

        .login-box button:hover{
            opacity:0.9;
        }

        .login-box p{
            margin-top:20px;
            font-size:14px;
        }

        .login-box a{
            color:#FFFDD0;
            text-decoration:none;
            font-weight:bold;
        }

        .error{
            margin-top:15px;
            color:#ff4d4d;
            font-size:14px;
        }
    </style>
</head>

<body>

    <style>
        .navbar a, .auth-text a, .login-footer a, .read-more { color: #FFFDD0 !important; }
        .login-btn-main { background: #FFFDD0 !important; color:#0a0a0a !important; box-shadow: 0 0 20px rgba(255,253,208,0.7) !important; }
    </style>
<div class="login-box">

    <h2>Login</h2>

    <!-- LOGIN FORM -->
    <form action="LoginServlet" method="post">
        <input 
            type="text" 
            name="username" 
            placeholder="Username or Email" 
            required>

        <input 
            type="password" 
            name="password" 
            placeholder="Password" 
            required>

        <button type="submit">Login</button>
    </form>

    <!-- ERROR MESSAGE -->
    <%
        if(request.getParameter("error") != null){
    %>
        <div class="error">
            Invalid username/email or password
        </div>
    <%
        }
    %>

    <p>
        Don’t have an account?
        <a href="register.jsp">Register</a>
    </p>

</div>

</body>
</html>

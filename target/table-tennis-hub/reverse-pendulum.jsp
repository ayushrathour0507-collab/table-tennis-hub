<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Reverse Pendulum | Table Tennis Hub</title>
    <style>
        body{font-family:Segoe UI, Tahoma, sans-serif;background:#0a0a0a;color:#e0e0e0;padding:40px}
        .container{max-width:900px;margin:auto}
        .back{color:#FFFDD0;text-decoration:none;margin-bottom:20px;display:inline-block}
        .hero{background:linear-gradient(135deg,#16213e,#0f3460);padding:30px;border-radius:10px}
        img{width:100%;border-radius:8px;margin-top:15px}
    </style>
</head>
<body>
<div class="container">
    <a class="back" href="learn.jsp">← Back to Learn</a>
    <style>
        .navbar a, .read-more { color: #FFFDD0 !important; }
        .hero .cta, .btn-primary { background: #FFFDD0 !important; color: #0a0a0a !important; box-shadow: 0 0 20px rgba(255,253,208,0.7) !important; }
    </style>
    <div class="hero">
        <h1>Reverse Pendulum</h1>
        <p>Reverse pendulum produces sidespin in the opposite direction; advanced serve used to surprise opponents.</p>
        <img src="https://source.unsplash.com/900x300/?table-tennis,reverse,serve" alt="Reverse Pendulum">
        <h3>How to perform</h3>
        <ul>
            <li>Adjust racket angle to reverse the spin direction compared to a normal pendulum.</li>
            <li>Practice wrist control to achieve consistent reverse spin.</li>
            <li>Use deception—mask the spin until contact.</li>
        </ul>
    </div>
</div>
</body>
</html>
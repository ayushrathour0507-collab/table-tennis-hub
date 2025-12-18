<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Float Serve | Table Tennis Hub</title>
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
        <h1>Float Serve</h1>
        <p>Float serves have very little spin—used to deceive opponents who expect heavy spin.</p>
        <img src="https://source.unsplash.com/900x300/?table-tennis,float,serve" alt="Float Serve">
        <h3>How to perform</h3>
        <ul>
            <li>Strike the ball with minimal brushing to reduce spin.</li>
            <li>Use speed and placement rather than spin to force errors.</li>
            <li>Mix with spin serves to increase unpredictability.</li>
        </ul>
        <h3>Step-by-step</h3>
        <ol>
            <li>Toss the ball straight and use a firm, flat contact to minimize spin.</li>
            <li>Use speed and directional control instead of spin.</li>
            <li>Aim to land the ball close to the net or at the opponent's elbow.</li>
        </ol>

        <h3>Drills</h3>
        <ul>
            <li>Speed Variation Drill: alternate fast float serves with slower spin serves to test receiver reactions.</li>
            <li>Placement Drill: practice landing floats wide, to the body, and short consistently.</li>
        </ul>

        <h3>Common Mistakes</h3>
        <ul>
            <li>Unintended spin — slight brushing turns floats into easy-to-attack balls.</li>
            <li>Poor placement — floats must be well-placed to be effective.</li>
        </ul>

        <h3>Pro Tips</h3>
        <ul>
            <li>Use float serves to break the opponent's rhythm after a sequence of spin serves.</li>
            <li>Practice disguising float vs spin using identical toss and arm motion.</li>
        </ul>
    </div>
</div>
</body>
</html>
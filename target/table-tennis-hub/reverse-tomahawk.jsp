<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Reverse Tomahawk | Table Tennis Hub</title>
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
        <h1>Reverse Tomahawk</h1>
        <p>Reverse tomahawk creates clockwise spin opposite to the tomahawk. It's rare and difficult but very deceptive.</p>
        <img src="https://source.unsplash.com/900x300/?table-tennis,reverse,tomahawk" alt="Reverse Tomahawk">
        <h3>How to perform</h3>
        <ul>
            <li>Mirror the tomahawk motion to impart clockwise spin.</li>
            <li>Requires precise wrist control and timing.</li>
            <li>Best used sparingly as a surprise tactic.</li>
        </ul>
        <h3>Step-by-step</h3>
        <ol>
            <li>Adopt a similar stance to the tomahawk, but reverse the wrist direction.</li>
            <li>Toss the ball and use a controlled wrist roll to create clockwise spin.</li>
            <li>Ensure a quick, compact contact to keep serve short and deceptive.</li>
        </ol>

        <h3>Drills</h3>
        <ul>
            <li>Slow-motion Wrist Drill: train the reversed wrist roll without a ball to build muscle memory.</li>
            <li>Short Serve Accuracy: aim for short angles to the opponent's corners.</li>
        </ul>

        <h3>Common Mistakes</h3>
        <ul>
            <li>Over-rotating — sending the ball long or with less spin.</li>
            <li>Poor disguise — telegraphing the reversed motion.</li>
        </ul>

        <h3>Pro Tips</h3>
        <ul>
            <li>Use this serve as a surprise element after several standard tomahawks.</li>
            <li>Vary placement wide to draw weak returns for third-ball attack.</li>
        </ul>
    </div>
</div>
</body>
</html>
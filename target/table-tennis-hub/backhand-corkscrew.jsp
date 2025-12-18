<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Backhand Corkscrew | Table Tennis Hub</title>
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
        <h1>Backhand / Corkscrew Serve</h1>
        <p>Backhand corkscrew produces anti-clockwise spin from the backhand side, useful for tactical variation.</p>
        <img src="https://source.unsplash.com/900x300/?table-tennis,backhand,player" alt="Backhand Corkscrew">
        <h3>How to perform</h3>
        <ul>
            <li>Use a sharp wrist rotation to create complex spin.</li>
            <li>Keep the serve short to maximize difficulty of return.</li>
            <li>Combine with placement to target opponent's weaker side.</li>
        </ul>
        <h3>Step-by-step</h3>
        <ol>
            <li>Stand balanced with weight slightly on the back foot.</li>
            <li>Toss the ball vertically and bring the backhand racket across the ball.</li>
            <li>Apply a quick wrist twist at contact to impart corkscrew-style spin.</li>
            <li>Keep the racket face slightly closed to control trajectory and length.</li>
        </ol>

        <h3>Drills</h3>
        <ul>
            <li>Wrist Snap Drill: repeat the motion slowly then speed up to develop wrist control.</li>
            <li>Short Serve Drill: aim to keep serves tight to the net, forcing weak pushes.</li>
            <li>Return Simulation: have a partner practice receiving to improve realistic placement.</li>
        </ul>

        <h3>Common Mistakes</h3>
        <ul>
            <li>Over-rotating the shoulder instead of the wrist—reduces spin quality.</li>
            <li>Serving too long—gives the opponent attack opportunities.</li>
            <li>Predictable placement—mix up placement to be effective.</li>
        </ul>

        <h3>Pro Tips</h3>
        <ul>
            <li>Disguise the spin using identical arm motion for different racket angles.</li>
            <li>Use small variations of backspin to set up third-ball attacks.</li>
        </ul>
    </div>
</div>
</body>
</html>
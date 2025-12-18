<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Tomahawk Serve | Table Tennis Hub</title>
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
        <h1>Tomahawk Serve</h1>
        <p>The tomahawk serve uses a chopping-like arm motion to impart anti-clockwise spin; effective when mixed with placement.</p>
        <img src="https://source.unsplash.com/900x300/?table-tennis,tomahawk,serve" alt="Tomahawk Serve">
        <h3>How to perform</h3>
        <ul>
            <li>Swing the racket in a tomahawk motion with wrist rotation.</li>
            <li>Vary the angle to create different spin profiles.</li>
            <li>Mix with short variations for surprise effect.</li>
        </ul>
        <h3>Step-by-step</h3>
        <ol>
            <li>Stand with feet shoulder-width; rotate torso slightly away from target.</li>
            <li>Toss the ball and perform a tomahawk-like chopping arc across the ball.</li>
            <li>Add wrist rotation at contact to increase anti-clockwise spin.</li>
            <li>Keep it short and low to maximize deception.</li>
        </ol>

        <h3>Drills</h3>
        <ul>
            <li>Arc Control: practice slow tomahawk swings focusing on consistent contact point.</li>
            <li>Short Serve Practice: aim to land the ball just over the net with low bounce.</li>
            <li>Mixing Serves: alternate tomahawk and short backspin serves to confuse receivers.</li>
        </ul>

        <h3>Common Mistakes</h3>
        <ul>
            <li>Mistiming the wrist — leads to flat contact or popped serve.</li>
            <li>Too large a toss — reduces control of length and spin.</li>
            <li>Predictable motion — fail to disguise similar motions for different spins.</li>
        </ul>

        <h3>Pro Tips</h3>
        <ul>
            <li>Practice the tomahawk motion without a ball to groove the wrist and arm path.</li>
            <li>Use small variations in racket angle to produce different spin outcomes with same swing.</li>
        </ul>
    </div>
</div>
</body>
</html>
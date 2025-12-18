<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Shovel Serve | Table Tennis Hub</title>
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
        <h1>Shovel Serve</h1>
        <p>The shovel serve is easier than reverse pendulum and produces anti-clockwise sidespin using an arm motion.</p>
        <img src="https://source.unsplash.com/900x300/?table-tennis,shovel,serve" alt="Shovel Serve">
        <h3>How to perform</h3>
        <ul>
            <li>Use a scooping action and open racket face to produce sidespin.</li>
            <li>Keep the serve short and low.</li>
            <li>Perfect for beginners to learn sidespin control.</li>
        </ul>
        <h3>Step-by-step</h3>
        <ol>
            <li>Stand slightly sideways with knees bent for stability.</li>
            <li>Toss the ball straight up and position the paddle under the ball.</li>
            <li>Use a scooping motion across the back half of the ball, brushing the side to produce sidespin.</li>
            <li>Keep the contact low and follow through slightly forward to keep the serve short.</li>
        </ol>

        <h3>Drills</h3>
        <ul>
            <li>Side-spin Consistency: repeat 30 shovel serves focusing on same contact point.</li>
            <li>Placement Drill: alternate serves to short forehand and short backhand targets.</li>
            <li>Variation Drill: change paddle angle while maintaining the scooping motion.</li>
        </ul>

        <h3>Common Mistakes</h3>
        <ul>
            <li>Pushing instead of scooping—results in low spin.</li>
            <li>Tossing unstable—causes timing errors.</li>
            <li>Using too big a motion—reduces control and disguise.</li>
        </ul>

        <h3>Pro Tips</h3>
        <ul>
            <li>Use small wrist flicks to fine tune spin; big wrist loops are easier to read.</li>
            <li>Mix shovel serves with short backspin serves to bait weak pushes.</li>
        </ul>
    </div>
</div>
</body>
</html>
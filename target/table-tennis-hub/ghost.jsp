<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Ghost Serve | Table Tennis Hub</title>
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
        <h1>Ghost Serve</h1>
        <p>Ghost serve uses heavy backspin that can make the ball float back toward the net—flashy but situational.</p>
        <img src="https://source.unsplash.com/900x300/?table-tennis,ghost,serve" alt="Ghost Serve">
        <h3>How to perform</h3>
        <ul>
            <li>Use a strong undercut to generate extreme backspin.</li>
            <li>Best used to surprise opponents; not always reliable in competition.</li>
            <li>Practice height and wrist angle for consistency.</li>
        </ul>
        <h3>Step-by-step</h3>
        <ol>
            <li>Toss the ball very slightly higher than normal and position paddle under the ball.</li>
            <li>Use a very strong downward brushing action to impart maximum backspin.</li>
            <li>Keep the contact low and the trajectory almost parallel to the net.</li>
        </ol>

        <h3>Drills</h3>
        <ul>
            <li>Backspin Depth Drill: practice achieving different backspin depths to see which produce net-hugging returns.</li>
            <li>Deception Drill: alternate ghost serves with similar motion but less spin to confuse opponents.</li>
        </ul>

        <h3>Common Mistakes</h3>
        <ul>
            <li>Not enough brushing — results in float serves instead of ghost serves.</li>
            <li>Too high toss — makes the serve easier to attack.</li>
        </ul>

        <h3>Pro Tips</h3>
        <ul>
            <li>Use the ghost serve occasionally as a surprise; overuse makes it predictable.</li>
            <li>Combine with strong short serves to force misreads by receivers.</li>
        </ul>
    </div>
</div>
</body>
</html>
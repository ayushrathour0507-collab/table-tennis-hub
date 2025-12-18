<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Backhand Tomahawk | Table Tennis Hub</title>
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
        <h1>Backhand Tomahawk</h1>
        <p>Backhand tomahawk delivers clockwise spin on the backhand side. Effective for angled short serves.</p>
        <img src="https://source.unsplash.com/900x300/?table-tennis,backhand,player" alt="Backhand Tomahawk">
        <h3>How to perform</h3>
        <ul>
            <li>Use a quick backhand tomahawk swing with wrist twist.</li>
            <li>Control placement to keep it short and wide.</li>
            <li>Use against opponents who struggle with backhand returns.</li>
        </ul>
        <h3>Step-by-step</h3>
        <ol>
            <li>Stand slightly sideways with the backhand shoulder toward the net.</li>
            <li>Toss the ball and perform a compact backhand tomahawk swing.</li>
            <li>Twist the wrist at contact to impart clockwise spin and keep the serve short.</li>
        </ol>

        <h3>Drills</h3>
        <ul>
            <li>Backhand Consistency: repeat 30 short backhand tomahawk serves focusing on control.</li>
            <li>Target Drill: aim for wide corners to exploit opponent's positioning.</li>
        </ul>

        <h3>Common Mistakes</h3>
        <ul>
            <li>Too big a swing—loses disguise and length control.</li>
            <li>Incorrect wrist angle—produces weak or long serves.</li>
        </ul>

        <h3>Pro Tips</h3>
        <ul>
            <li>Use subtle shoulder rotation to add extra disguise to the serve.</li>
            <li>Combine with short backhand pushes to create varied rally starts.</li>
        </ul>
    </div>
</div>
</body>
</html>
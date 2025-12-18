<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Pendulum Serve | Table Tennis Hub</title>
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
        <h1>Pendulum Serve</h1>
        <p>The pendulum serve is a classic sidespin serve that swings like a pendulum to generate deceptive spin.</p>
        <img src="https://source.unsplash.com/900x300/?table-tennis,serve,player" alt="Pendulum Serve">
        <h3>How to perform</h3>
        <ul>
            <li>Swing the racket from high to low across the ball to create sidespin.</li>
            <li>Use wrist snap to increase spin and disguise direction.</li>
            <li>Mix with short and long variations to confuse opponents.</li>
        </ul>

        <h3>Step-by-step</h3>
        <ol>
            <li>Stand behind the end line with knees slightly bent.</li>
            <li>Toss the ball vertically about 16–20 cm from your palm.</li>
            <li>Bring the racket in a pendulum arc, brushing the side of the ball with a strong wrist snap.</li>
            <li>Follow through low and toward your body to keep the serve short.</li>
        </ol>

        <h3>Drills</h3>
        <ul>
            <li>Short/Long Drill: alternate 10 short pendulum serves and 10 long serves to practice placement.</li>
            <li>Target Practice: place cones on the opponent's side and aim to land the serve within the target.</li>
            <li>Disguise Drill: practice hiding the contact point until the last moment to improve deception.</li>
        </ul>

        <h3>Common Mistakes</h3>
        <ul>
            <li>Tossing the ball too low — reduces legality and spin potential.</li>
            <li>Overusing wrist — causes inconsistent contact and timing errors.</li>
            <li>Not varying length — becomes predictable for opponents.</li>
        </ul>

        <h3>Pro Tips</h3>
        <ul>
            <li>Combine sidespin with slight backspin to force weak returns that can be attacked.</li>
            <li>Practice the same pendulum motion but change racket angle to create multiple spin variations.</li>
        </ul>
    </div>
</div>
</body>
</html>
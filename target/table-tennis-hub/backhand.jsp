<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String ctx = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Backhand Loop | Table Tennis Hub</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background:
                linear-gradient(rgba(0,0,0,0.75), rgba(0,0,0,0.75)),
                url("<%=ctx%>/images/backhand.jpg") no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
        }

        .container {
            max-width: 900px;
            margin: 80px auto;
            padding: 40px;
            background: rgba(0,0,0,0.6);
            border-radius: 18px;
        }

        h1 {
            color: #FFFDD0;
        }

        h2 {
            color: #ffd700;
            margin-top: 30px;
        }

        p, li {
            line-height: 1.7;
            font-size: 16px;
        }

        ul {
            margin-left: 20px;
        }

        .tip {
            margin-top: 25px;
            padding: 15px;
            background: rgba(255,253,208,0.15);
            border-left: 4px solid #FFFDD0;
            border-radius: 8px;
        }

        a {
            color: #FFFDD0;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>

<body>

    <style>
        .navbar a, .read-more { color: #FFFDD0 !important; }
        .hero .cta, .btn-primary { background: #FFFDD0 !important; color: #0a0a0a !important; box-shadow: 0 0 20px rgba(255,253,208,0.7) !important; }
    </style>
<div class="container">

    <h1>Backhand Loop in Table Tennis</h1>

    <p>
        The backhand loop is one of the most important attacking strokes in modern
        table tennis. It allows players to generate topspin while maintaining
        control during fast rallies.
    </p>

    <h2>What Is a Backhand Loop?</h2>
    <p>
        A backhand loop is an attacking shot played mainly against backspin or
        topspin balls. The upward brushing motion creates topspin, helping the
        ball dip quickly on the table.
    </p>

    <h2>How to Perform a Backhand Loop</h2>
    <ul>
        <li>Bend your knees and stay balanced</li>
        <li>Keep the racket slightly closed</li>
        <li>Brush the ball upward, not flat</li>
        <li>Use waist rotation for stability</li>
        <li>Finish the stroke smoothly</li>
    </ul>

    <h2>Common Mistakes</h2>
    <ul>
        <li>Hitting too hard without spin</li>
        <li>Late contact point</li>
        <li>No body movement</li>
    </ul>

    <div class="tip">
        💡 <b>Tip:</b> Focus on consistency first. Speed will come naturally once
        your topspin technique improves.
    </div>

    <br>
    <a href="<%=ctx%>/learn.jsp">← Back to Learning</a>

</div>

</body>
</html>

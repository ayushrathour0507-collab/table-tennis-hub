<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String ctx = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Forehand Loop | Table Tennis Hub</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background:
                linear-gradient(rgba(0,0,0,0.75), rgba(0,0,0,0.75)),
                url("<%=ctx%>/images/forehand.jpg") no-repeat center center fixed;
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
            background: rgba(255,215,0,0.15);
            border-left: 4px solid #ffd700;
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

    <h1>Forehand Loop in Table Tennis</h1>

    <p>
        The forehand loop is the most powerful and commonly used attacking stroke
        in table tennis. It forms the foundation of aggressive play.
    </p>

    <h2>What Is a Forehand Loop?</h2>
    <p>
        A forehand loop uses topspin to control speed and placement.
        It is effective against backspin, topspin, and no-spin balls.
    </p>

    <h2>How to Perform a Forehand Loop</h2>
    <ul>
        <li>Rotate hips and shoulders during backswing</li>
        <li>Transfer weight from back foot to front foot</li>
        <li>Use a low-to-high swing motion</li>
        <li>Brush the ball for heavy topspin</li>
        <li>Finish the stroke above eye level</li>
    </ul>

    <h2>Why It Is Important</h2>
    <p>
        A strong forehand loop allows players to dominate rallies,
        create pressure, and score consistently.
    </p>

    <div class="tip">
        💡 <b>Tip:</b> Timing matters more than power. Focus on clean contact first.
    </div>

    <br>
    <a href="<%=ctx%>/learn.jsp">← Back to Learning</a>

</div>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String ctx = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Chop Technique | Table Tennis Hub</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background:
                linear-gradient(rgba(0,0,0,0.8), rgba(0,0,0,0.8)),
                url("<%=ctx%>/images/chop.jpg") no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
        }

        .container {
            max-width: 900px;
            margin: 80px auto;
            padding: 40px;
            background: rgba(0,0,0,0.6);
            border-radius: 18px;
            box-shadow: 0 0 40px rgba(0,0,0,0.6);
        }

        h1 {
            color: #FFFDD0;
            margin-bottom: 10px;
        }

        h2 {
            color: #ffd700;
            margin-top: 30px;
        }

        p, li {
            line-height: 1.8;
            font-size: 16px;
        }

        ul {
            margin-left: 20px;
        }

        .tip {
            margin-top: 30px;
            padding: 18px;
            background: rgba(255, 80, 80, 0.18);
            border-left: 5px solid #ff4d4d;
            border-radius: 10px;
        }

        a {
            color: #FFFDD0;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <style>
        .navbar a, .read-more { color: #FFFDD0 !important; }
        .hero .cta, .btn-primary { background: #FFFDD0 !important; color:#0a0a0a !important; box-shadow: 0 0 20px rgba(255,253,208,0.7) !important; }
    </style>
<div class="container">

    <h1>Chop Technique in Table Tennis</h1>

    <p>
        The chop is one of the most effective defensive strokes in table tennis.
        It is mainly used to return fast attacking shots with heavy backspin,
        forcing opponents to make mistakes.
    </p>

    <h2>What Is a Chop?</h2>
    <p>
        A chop is a defensive stroke played with an open racket angle and a
        downward brushing motion. This action creates strong backspin,
        making it difficult for attackers to loop consistently.
    </p>

    <h2>When to Use the Chop</h2>
    <ul>
        <li>Against strong forehand or backhand loops</li>
        <li>When playing far from the table</li>
        <li>To slow down the rally and regain control</li>
        <li>To force errors from aggressive opponents</li>
    </ul>

    <h2>How to Perform a Chop</h2>
    <ul>
        <li>Open the racket face slightly</li>
        <li>Contact the ball at its highest point</li>
        <li>Brush downward and forward</li>
        <li>Use relaxed wrist movement</li>
        <li>Maintain good footwork and balance</li>
    </ul>

    <h2>Common Mistakes</h2>
    <ul>
        <li>Closing the racket too much</li>
        <li>Hitting flat instead of brushing</li>
        <li>Poor footwork causing late contact</li>
    </ul>

    <div class="tip">
        💡 <b>Pro Tip:</b> Vary the amount of backspin on your chops.
        Mixing heavy and light spin makes it very hard for opponents to attack confidently.
    </div>

    <br>
    <a href="<%=ctx%>/learn.jsp">← Back to Learning</a>

</div>

</body>
</html>

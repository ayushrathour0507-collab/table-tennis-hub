<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Table Tennis Rules</title>

    <style>
        body {
            margin: 0;
            font-family: 'Poppins', Arial, sans-serif;
            background: url("images/rules.jpg") no-repeat center center fixed;
            background-size: cover;
            color: #ffffff;
        }

        .overlay {
            background: rgba(0,0,0,0.2); /* 🔥 ONLY 20% */
            min-height: 100vh;
            padding-bottom: 70px;
        }

        .navbar {
            padding: 15px 40px;
            background: rgba(0,0,0,0.6);
            position: sticky;
            top: 0;
        }

        .navbar a {
            color: #ffffff;
            margin-right: 25px;
            text-decoration: none;
            font-weight: 600;
        }

        .container {
            max-width: 1050px;
            margin: 70px auto;
            padding: 35px;
            background: rgba(0,0,0,0.45);
            border-radius: 18px;
            backdrop-filter: blur(4px);
        }

        h1 {
            text-align: center;
            font-size: 46px;
            margin-bottom: 25px;
        }

        h2 {
            margin-top: 35px;
            color: #00e1ff;
        }

        p, li {
            line-height: 1.9;
            font-size: 17px;
        }

        ul {
            margin-left: 22px;
        }
    </style>
</head>
<body>

<div class="overlay">

    <div class="navbar">
        <a href="index.jsp">Home</a>
        <a href="learn.jsp">Learn</a>
        <a href="rules.jsp">Rules</a>
        <a href="history.jsp">History</a>
    </div>

    <div class="container">
        <h1>Important Table Tennis Rules</h1>

        <p>
            Table tennis is governed by international rules defined by the
            International Table Tennis Federation (ITTF). Whether you are a beginner
            or an advanced player, understanding these rules is essential for fair play.
        </p>

        <h2>1. Table & Playing Area</h2>
        <ul>
            <li>Table length: 2.74 meters</li>
            <li>Table width: 1.525 meters</li>
            <li>Table height: 76 cm from the floor</li>
            <li>Net height: 15.25 cm</li>
        </ul>

        <h2>2. Ball & Racket</h2>
        <ul>
            <li>Ball diameter: 40 mm</li>
            <li>Ball weight: 2.7 grams</li>
            <li>Ball color: white or orange</li>
            <li>Racket can be any shape, size, or weight</li>
        </ul>

        <h2>3. Service Rules</h2>
        <ul>
            <li>Ball must rest freely on an open palm</li>
            <li>Ball must be tossed vertically at least 16 cm</li>
            <li>Serve must be visible to the opponent at all times</li>
            <li>Ball must bounce once on server’s side and once on receiver’s side</li>
        </ul>

        <h2>4. Scoring System</h2>
        <ul>
            <li>Each game is played to 11 points</li>
            <li>A player must win by at least 2 points</li>
            <li>Service changes every 2 points</li>
        </ul>

        <h2>5. Let & Fault</h2>
        <ul>
            <li>A let is called when a serve touches the net but lands correctly</li>
            <li>A fault occurs when rules are violated</li>
        </ul>

        <h2>6. Singles vs Doubles</h2>
        <ul>
            <li>Singles: serve anywhere on the table</li>
            <li>Doubles: serve diagonally only</li>
            <li>Doubles players must alternate shots</li>
        </ul>
    </div>

</div>

</body>
</html>

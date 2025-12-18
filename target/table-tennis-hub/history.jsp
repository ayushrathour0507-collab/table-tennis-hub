<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>History of Table Tennis</title>

    <style>
        body {
            margin: 0;
            font-family: 'Poppins', Arial, sans-serif;
            background: url("images/history.jpg") no-repeat center center fixed;
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
        }

        h2 {
            margin-top: 35px;
            color: #ffd700;
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
        <h1>History of Table Tennis</h1>

        <h2>Victorian Origins (Late 1800s)</h2>
        <p>
            Table tennis originated in England during the Victorian era.
            It was initially played by the upper class as an indoor after-dinner game.
        </p>

        <h2>Early Equipment</h2>
        <p>
            Early players used book covers as bats and cork balls.
            Nets were improvised using stacks of books.
        </p>

        <h2>Formation of ITTF</h2>
        <p>
            In 1926, the International Table Tennis Federation (ITTF) was formed,
            establishing standardized rules and global competitions.
        </p>

        <h2>World Championships</h2>
        <p>
            The first World Table Tennis Championships were held in London in 1926,
            marking the sport’s transition into professional competition.
        </p>

        <h2>Olympic Recognition</h2>
        <p>
            Table tennis became an Olympic sport in 1988 at the Seoul Olympic Games,
            bringing worldwide recognition and massive growth.
        </p>

        <h2>Modern Dominance</h2>
        <p>
            In modern times, Asian countries—especially China—have dominated the sport,
            producing legendary champions and advanced playing techniques.
        </p>

        <h2>Legendary Players</h2>
        <ul>
            <li>Jan-Ove Waldner (Sweden)</li>
            <li>Ma Long (China)</li>
            <li>Deng Yaping (China)</li>
            <li>Zhang Jike (China)</li>
            <li>Timo Boll (Germany)</li>
        </ul>
    </div>

</div>

</body>
</html>

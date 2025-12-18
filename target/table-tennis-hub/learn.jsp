<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String ctx = request.getContextPath();
    String username = (String) session.getAttribute("username");

    if (username == null) {
        response.sendRedirect(ctx + "/login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Learn Table Tennis | Table Tennis Hub</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0a0a0a, #1a1a2e, #16213e);
            color: #e0e0e0;
            min-height: 100vh;
        }

        /* NAVBAR */
        .navbar {
            background: #1a1a2e;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid #FFFDD0;
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
            color: #FFFDD0;
        }

        .navbar-links a {
            margin-left: 20px;
            color: #FFFDD0;
            text-decoration: none;
            font-weight: 500;
        }

        .logout-btn {
            background: #FFFDD0;
            color: #000 !important;
            padding: 8px 16px;
            border-radius: 20px;
            margin-left: 20px;
        }

        /* HERO */
        .hero {
            text-align: center;
            padding: 70px 20px;
        }

        .hero h1 {
            font-size: 42px;
            color: #FFFDD0;
            margin-bottom: 10px;
        }

        .hero p {
            color: #b0b0b0;
            font-size: 18px;
        }

        /* TECHNIQUES */
        .techniques-section {
            max-width: 1200px;
            margin: auto;
            padding: 60px 20px;
        }

        .techniques-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
        }

        .technique-card {
            background: #1a1a2e;
            border-radius: 15px;
            overflow: hidden;
            border: 2px solid #16213e;
            text-decoration: none;
            color: inherit;
            transition: 0.3s;
            cursor: pointer;
        }

        .technique-card:hover {
            transform: translateY(-10px);
            border-color: #FFFDD0;
        }

        .technique-image img {
            width: 100%;
            height: 220px;
            object-fit: cover;
        }

        .technique-content {
            padding: 20px;
        }

        .technique-name {
            font-size: 18px;
            color: #FFFDD0;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .technique-description {
            color: #b0b0b0;
            font-size: 14px;
        }

        .read-more {
            display: inline-block;
            margin-top: 10px;
            color: #FFFDD0;
            font-weight: bold;
        }

        /* FOOTER */
        .footer {
            text-align: center;
            padding: 25px;
            background: #1a1a2e;
            border-top: 2px solid #FFFDD0;
            margin-top: 60px;
            color: #FFFDD0;
        }
    </style>

    <!-- ✅ JAVASCRIPT MOVED TO PROPER PLACE -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            document.querySelectorAll(".technique-card").forEach(function (card) {
                card.addEventListener("click", function () {
                    window.location.href = card.getAttribute("href");
                });
            });
        });
    </script>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="navbar-brand">🏓 Table Tennis Hub</div>
    <div class="navbar-links">
        <a href="index.jsp">Home</a>
        <a href="learn.jsp">Learn</a>
        <a href="rules.jsp">Rules</a>
        <a href="history.jsp">History</a>
        <a href="store.jsp">Store</a>
        <span style="color:#FFFDD0;">Welcome, <%=username%></span>
        <a href="LogoutServlet" class="logout-btn">Logout</a>
    </div>
</div>

<!-- HERO -->
<div class="hero">
    <h1>Learn Table Tennis Techniques</h1>
    <p>Master the most important strokes used by professional players</p>
</div>

<!-- TECHNIQUES -->
<div class="techniques-section">
    <div class="techniques-grid">

        <a href="forehand.jsp" class="technique-card">
            <div class="technique-image">
                <img src="<%=ctx%>/images/forehand.jpg" alt="Forehand Loop">
            </div>
            <div class="technique-content">
                <div class="technique-name">Forehand Loop</div>
                <p class="technique-description">Powerful attacking stroke with topspin used to dominate rallies.</p>
                <span class="read-more">Read More →</span>
            </div>
        </a>

        <a href="backhand.jsp" class="technique-card">
            <div class="technique-image">
                <img src="<%=ctx%>/images/backhand.jpg" alt="Backhand Loop">
            </div>
            <div class="technique-content">
                <div class="technique-name">Backhand Loop</div>
                <p class="technique-description">Fast, compact attacking stroke used close to the table.</p>
                <span class="read-more">Read More →</span>
            </div>
        </a>

        <a href="chop.jsp" class="technique-card">
            <div class="technique-image">
                <img src="<%=ctx%>/images/chop.jpg" alt="Defensive Chop">
            </div>
            <div class="technique-content">
                <div class="technique-name">Defensive Chop</div>
                <p class="technique-description">Heavy backspin defensive shot to force opponent mistakes.</p>
                <span class="read-more">Read More →</span>
            </div>
        </a>

    </div>
</div>

<!-- FOOTER -->
<div class="footer">
    © 2025 Table Tennis Hub — Master Your Game
</div>

</body>
</html>

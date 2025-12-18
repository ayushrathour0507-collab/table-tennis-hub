<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String ctx = request.getContextPath();
    String username = (String) session.getAttribute("username");
    
    // Check if user is logged in - redirect to login if not
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
    // Make serve cards clickable based on data-page attribute
    document.addEventListener('DOMContentLoaded', function(){
        document.querySelectorAll('.serve-card').forEach(function(card){
            var page = card.getAttribute('data-page');
            if(page){
                card.style.cursor = 'pointer';
                card.addEventListener('click', function(){
                    window.location.href = page;
                });
            }
        });
    });
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0a0a0a 0%, #1a1a2e 50%, #16213e 100%);
            color: #e0e0e0;
            line-height: 1.6;
            min-height: 100vh;
        }

        /* NAVBAR */
        .navbar {
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 4px 20px rgba(255, 253, 208, 0.2);
            border-bottom: 2px solid #FFFDD0;
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
            background: linear-gradient(135deg, #FFFDD0 0%, #FFFDD0 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .navbar-links {
            display: flex;
            gap: 30px;
            align-items: center;
        }

        .navbar a {
            color: #FFFDD0;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #FFFDD0;
            text-shadow: 0 0 10px rgba(0, 198, 255, 0.5);
        }

        .logout-btn {
            background: linear-gradient(135deg, #FFFDD0, #FFFDD0);
            padding: 10px 20px;
            border-radius: 25px;
            transition: transform 0.3s ease;
            color: #000 !important;
            font-weight: bold;
            text-decoration: none;
            display: inline-block;
        }

        .logout-btn:hover {
            transform: scale(1.05);
            box-shadow: 0 0 15px rgba(255, 253, 208, 0.8);
        }

        /* HERO SECTION */
        .hero {
            text-align: center;
            padding: 80px 40px 60px;
            background: linear-gradient(135deg, rgba(0, 198, 255, 0.1) 0%, rgba(0, 153, 255, 0.1) 100%);
        }

        .hero h1 {
            font-size: 48px;
            background: linear-gradient(135deg, #FFFDD0 0%, #FFFDD0 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 15px;
            text-shadow: 0 0 20px rgba(255, 253, 208, 0.3);
        }

        .hero p {
            font-size: 18px;
            color: #b0b0b0;
            max-width: 700px;
            margin: auto;
        }

        /* SERVES GRID */
        .serves-section {
            padding: 60px 40px;
            max-width: 1400px;
            margin: auto;
        }

        .section-title {
            font-size: 36px;
            background: linear-gradient(135deg, #FFFDD0 0%, #FFFDD0 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 10px;
            text-align: center;
        }

        .section-subtitle {
            text-align: center;
            color: #888888;
            margin-bottom: 50px;
            font-size: 16px;
        }

        .serves-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-bottom: 80px;
        }

        .serve-card {
            background: #1a1a2e;
            border-radius: 15px;
            overflow: hidden;
            transition: all 0.3s ease;
            border: 2px solid #16213e;
            cursor: pointer;
            box-shadow: 0 4px 15px rgba(0, 198, 255, 0.1);
        }

        .serve-card:hover {
            transform: translateY(-12px);
            box-shadow: 0 15px 35px rgba(0, 198, 255, 0.3);
            border: 2px solid #FFFDD0;
        }

        .serve-image {
            width: 100%;
            height: 220px;
            background: linear-gradient(135deg, #16213e 0%, #0f3460 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 100px;
            color: rgba(0, 198, 255, 0.2);
            overflow: hidden;
            position: relative;
        }

        .serve-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.9;
        }

        .serve-image-placeholder {
            font-size: 100px;
            position: absolute;
            animation: float 3s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
        }

        .serve-content {
            padding: 25px;
        }

        .serve-name {
            font-size: 18px;
            font-weight: bold;
            color: #FFFDD0;
            margin-bottom: 10px;
        }

        .serve-description {
            font-size: 14px;
            color: #b0b0b0;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .serve-badge {
            display: inline-block;
            background: rgba(255, 253, 208, 0.12);
            color: #FFFDD0;
            padding: 5px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: bold;
            border: 1px solid #FFFDD0;
        }

        /* PRO TIPS SECTION */
        .pro-tips {
            background: linear-gradient(135deg, rgba(22, 33, 62, 0.8) 0%, rgba(15, 52, 96, 0.8) 100%);
            padding: 60px 40px;
            border-radius: 15px;
            margin-bottom: 60px;
            max-width: 1400px;
            margin-left: auto;
            margin-right: auto;
            margin-top: -40px;
            border: 2px solid #FFFDD0;
            box-shadow: 0 0 20px rgba(255, 253, 208, 0.15);
        }

        .pro-tips-title {
            font-size: 32px;
            background: linear-gradient(135deg, #FFFDD0 0%, #FFFDD0 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 40px;
            text-align: center;
        }

        .tips-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .tip-card {
            background: #0f3460;
            padding: 30px;
            border-radius: 12px;
            border-left: 4px solid #FFFDD0;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(255, 253, 208, 0.1);
        }

        .tip-card:hover {
            background: #16213e;
            box-shadow: 0 10px 25px rgba(0, 198, 255, 0.25);
            transform: translateY(-5px);
        }

        .tip-number {
            background: linear-gradient(135deg, #FFFDD0, #FFFDD0);
            color: #0a0a0a;
            width: 45px;
            height: 45px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            font-size: 20px;
            margin-bottom: 15px;
        }

        .tip-title {
            font-size: 16px;
            font-weight: bold;
            color: #FFFDD0;
            margin-bottom: 10px;
        }

        .tip-description {
            font-size: 14px;
            color: #b0b0b0;
            line-height: 1.7;
        }

        /* RULES SECTION */
        .rules-section {
            background: #1a1a2e;
            padding: 60px 40px;
            border-radius: 15px;
            margin: 60px auto;
            border: 2px solid #FFFDD0;
            max-width: 1400px;
            box-shadow: 0 4px 15px rgba(255, 253, 208, 0.15);
        }

        .rules-title {
            font-size: 32px;
            background: linear-gradient(135deg, #FFFDD0 0%, #FFFDD0 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 30px;
            text-align: center;
        }

        .rules-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
        }

        .rule-item {
            background: #0f3460;
            padding: 20px;
            border-radius: 10px;
            border-left: 3px solid #FFFDD0;
            display: flex;
            gap: 15px;
        }

        .rule-icon {
            font-size: 24px;
            color: #FFFDD0;
            flex-shrink: 0;
        }

        .rule-text {
            font-size: 14px;
            color: #b0b0b0;
            line-height: 1.6;
        }

        /* TECHNIQUES SECTION */
        .techniques-section {
            padding: 60px 40px 100px;
            max-width: 1400px;
            margin: auto;
        }

        .techniques-title {
            font-size: 36px;
            background: linear-gradient(135deg, #FFFDD0 0%, #FFFDD0 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 10px;
            text-align: center;
        }

        .techniques-subtitle {
            text-align: center;
            color: #888888;
            margin-bottom: 50px;
            font-size: 16px;
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
            transition: all 0.3s ease;
            border: 2px solid #16213e;
            text-decoration: none;
            color: inherit;
            box-shadow: 0 4px 15px rgba(0, 198, 255, 0.1);
        }

        .technique-card:hover {
            transform: translateY(-12px);
            box-shadow: 0 15px 35px rgba(0, 198, 255, 0.3);
            border: 2px solid #FFFDD0;
        }

        .technique-image {
            width: 100%;
            height: 220px;
            background: linear-gradient(135deg, #16213e 0%, #0f3460 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 100px;
            color: rgba(0, 198, 255, 0.2);
        }

        .technique-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.9;
        }

        .technique-content {
            padding: 25px;
        }

        .technique-name {
            font-size: 18px;
            font-weight: bold;
            color: #FFFDD0;
            margin-bottom: 10px;
        }

        .technique-description {
            font-size: 14px;
            color: #b0b0b0;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .read-more {
            color: #FFFDD0;
            font-weight: bold;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .read-more:hover {
            color: #FFFDD0;
            text-shadow: 0 0 10px rgba(0, 198, 255, 0.5);
        }

        /* FOOTER */
        .footer {
            background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
            padding: 30px 40px;
            text-align: center;
            color: #FFFDD0;
            font-size: 14px;
            border-top: 2px solid #FFFDD0;
        }

        @media (max-width: 768px) {
            .hero h1 {
                font-size: 32px;
            }

            .section-title {
                font-size: 28px;
            }

            .serves-grid {
                grid-template-columns: 1fr;
            }

            .navbar {
                flex-direction: column;
                gap: 15px;
            }

            .navbar-links {
                flex-direction: column;
                gap: 15px;
            }
        }
    </style>
</head>

<body>

    <style>
        /* Override navbar and small link accents to cream; avoid styling all anchors */
        .navbar a, .auth-text a, .login-footer a, .read-more { color: #FFFDD0 !important; }
        .btn-primary, .login-btn-main, .filter.active, .hero .cta { background: #FFFDD0 !important; color: #0a0a0a !important; background-image: none !important; box-shadow: 0 0 20px rgba(255,253,208,0.7) !important; }
        .card .tag { background: rgba(255,253,208,0.15) !important; color: #FFFDD0 !important; }
    </style>
<!-- NAVBAR -->
<div class="navbar">
    <div class="navbar-brand">🏓 Table Tennis Hub</div>
    <div class="navbar-links">
        <a href="index.jsp">Home</a>
        <a href="learn.jsp">Learn</a>
        <a href="rules.jsp">Rules</a>
        <a href="history.jsp">History</a>
        <a href="store.jsp">Store</a>
        <%
            if (username != null) {
        %>
            <span style="color:#FFFDD0; font-weight:bold;">Welcome, <%=username%></span>
            <a href="LogoutServlet" class="logout-btn" style="color: #000 !important;">Logout</a>
        <%
            } else {
        %>
            <a href="login.jsp" class="logout-btn" style="color: #000 !important;">Login</a>
        <%
            }
        %>
    </div>
</div>

<!-- HERO SECTION -->
<div class="hero">
    <h1>Master Every Ping Pong Serve</h1>
    <p>Learn all 10 essential serves used by professional table tennis players. Perfect your technique and dominate the game!</p>
</div>

<!-- SERVES SECTION -->
<div class="serves-section">
    <h2 class="section-title">🎾 Learn Table Tennis Techniques</h2>
    <p class="section-subtitle">Explore advanced techniques to improve your game</p>

    <div class="serves-grid">
    </div>
</div>

<!-- PRO TIPS SECTION -->
<div class="pro-tips">
    <h2 class="pro-tips-title">⭐ How to Serve Like a Pro</h2>
    
    <div class="tips-grid">
        <div class="tip-card">
            <div class="tip-number">1</div>
            <div class="tip-title">Loose Grip</div>
            <p class="tip-description">Have a loose grip to generate maximum spin. A stiff grip prevents quality brushing motion.</p>
        </div>

        <div class="tip-card">
            <div class="tip-number">2</div>
            <div class="tip-title">Fast & Faint Contact</div>
            <p class="tip-description">Strike the ball with fast, fluid motion and faint contact. Visualize throwing a frisbee for spin.</p>
        </div>

        <div class="tip-card">
            <div class="tip-number">3</div>
            <div class="tip-title">Vary Spin</div>
            <p class="tip-description">Mix pure sidespin with side-top and side-back combinations to keep opponents guessing.</p>
        </div>

        <div class="tip-card">
            <div class="tip-number">4</div>
            <div class="tip-title">Vary Placement</div>
            <p class="tip-description">Don't always serve short. Mix up your placement to prevent opponents from establishing rhythm.</p>
        </div>

        <div class="tip-card">
            <div class="tip-number">5</div>
            <div class="tip-title">Exploit Weaknesses</div>
            <p class="tip-description">Analyze your opponent and choose serves that target their specific weaknesses.</p>
        </div>
    </div>
</div>

<!-- RULES SECTION -->
<div class="rules-section">
    <h2 class="rules-title">📋 Official ITTF Serving Rules</h2>
    
    <div class="rules-list">
        <div class="rule-item">
            <div class="rule-icon">✋</div>
            <div class="rule-text"><strong>Open Palm Toss:</strong> Throw the ball from your open palm to start the serve.</div>
        </div>

        <div class="rule-item">
            <div class="rule-icon">📏</div>
            <div class="rule-text"><strong>Minimum Height:</strong> Throw the ball near vertically to at least 16 cm height.</div>
        </div>

        <div class="rule-item">
            <div class="rule-icon">⬇️</div>
            <div class="rule-text"><strong>Descending Ball:</strong> Strike as the ball descends, bouncing once on each side of table.</div>
        </div>

        <div class="rule-item">
            <div class="rule-icon">👀</div>
            <div class="rule-text"><strong>Visibility:</strong> Ball must be fully visible to opponent and umpire at all times.</div>
        </div>

        <div class="rule-item">
            <div class="rule-icon">🔢</div>
            <div class="rule-text"><strong>Consecutive Serves:</strong> Each player gets 2 consecutive serves (1 serve at 10-10).</div>
        </div>
    </div>
</div>

<!-- TECHNIQUES SECTION -->
<div class="techniques-section">
    <h2 class="techniques-title">🎯 Learn Core Techniques</h2>
    <p class="techniques-subtitle">Master the fundamental strokes that form the foundation of your game</p>

    <div class="techniques-grid">
        <!-- FOREHAND LOOP -->
        <a href="forehand.jsp" class="technique-card">
            <div class="technique-image">
                <img src="<%=ctx%>/images/forehand.jpg" alt="Forehand Loop">
            </div>
            <div class="technique-content">
                <div class="technique-name">Forehand Loop</div>
                <p class="technique-description">The most popular offensive stroke in modern table tennis, used to attack with speed and heavy topspin.</p>
                <span class="read-more">Read More →</span>
            </div>
        </a>

        <!-- BACKHAND LOOP -->
        <a href="backhand.jsp" class="technique-card">
            <div class="technique-image">
                <img src="<%=ctx%>/images/backhand.jpg" alt="Backhand Loop">
            </div>
            <div class="technique-content">
                <div class="technique-name">Backhand Loop</div>
                <p class="technique-description">One of the most versatile attacking shots. Generates topspin, controls rallies, and pressures opponents.</p>
                <span class="read-more">Read More →</span>
            </div>
        </a>

        <!-- CHOP TECHNIQUE -->
        <a href="chop.jsp" class="technique-card">
            <div class="technique-image">
                <img src="<%=ctx%>/images/chop.jpg" alt="Defensive Chop">
            </div>
            <div class="technique-content">
                <div class="technique-name">Defensive Chop</div>
                <p class="technique-description">A defensive stroke used to return attacking shots with heavy backspin and force errors from opponents.</p>
                <span class="read-more">Read More →</span>
            </div>
        </a>
    </div>
</div>

<!-- FOOTER -->
<div class="footer">
    © 2025 Table Tennis Hub. Master your game. All rights reserved.
</div>

</body>
</html>

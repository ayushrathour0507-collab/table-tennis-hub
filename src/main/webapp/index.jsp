<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String ctx = request.getContextPath();
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
<title>Table Tennis Hub</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html,body{
    height:100%;
    font-family:Arial, sans-serif;
    color:white;
    scroll-behavior:smooth;   /* 1️⃣ Smooth scroll */
}

/* 2️⃣ PARALLAX BACKGROUND */
body{
    background:
        linear-gradient(rgba(0,0,0,0.1), rgba(0,0,0,0.1)),
        url("<%=ctx%>/images/home-bg.jpg") no-repeat center center fixed;
    background-size:cover;
}

/* NAVBAR */
.navbar{
    position:fixed;
    top:0;
    width:100%;
    padding:15px 40px;
    background:rgba(0,0,0,0.85);
    display:flex;
    justify-content:space-between;
    align-items:center;
    z-index:1000;
}

.navbar a{
    color:white;
    margin-left:18px;
    text-decoration:none;
    font-weight:500;
}

.navbar a:hover{
    color:#FFFDD0;
}

.login-btn{
    background:#ff4d4d;
    padding:8px 18px;
    border-radius:20px;
    color: #fff !important;
    text-decoration: none;
}

/* HERO */
.hero{
    min-height:100vh;
    display:flex;
    align-items:center;
    justify-content:center;
    padding-top:90px;
}

.hero-box{
    background:rgba(0,0,0,0.45);
    padding:50px;
    border-radius:20px;
    text-align:center;
    max-width:780px;

    /* 1️⃣ Animation */
    animation:fadeUp 1.2s ease;
}

.hero-box h1{
    font-size:46px;
    margin-bottom:15px;
}

.hero-box p{
    font-size:18px;
    line-height:1.6;
    margin-bottom:30px;
    color:#e6e6e6;
}

.hero-box a{
    display:inline-block;
    padding:14px 36px;
    background:#FFFDD0;
    color:black;
    border-radius:30px;
    text-decoration:none;
    font-weight:bold;
}

/* WHY SECTION */
.why{
    padding:100px 40px;
    background:rgba(0,0,0,0.6);
    text-align:center;
}

.why h2{
    font-size:34px;
    margin-bottom:50px;
}

.why-grid{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
    gap:30px;
    max-width:1100px;
    margin:auto;
}

.why-card{
    background:rgba(0,0,0,0.65);
    padding:30px;
    border-radius:18px;
    box-shadow:0 0 30px rgba(0,0,0,0.6);

    /* 1️⃣ Animation */
    animation:fadeUp 1.2s ease;
}

.why-card h3{
    color:#FFFDD0;
    margin-bottom:12px;
}

.why-card p{
    font-size:14px;
    color:#d0d0d0;
    line-height:1.6;
}

/* FOOTER */
.footer{
    background:rgba(0,0,0,0.9);
    padding:25px;
    text-align:center;
    font-size:14px;
    color:#aaa;
}

/* 1️⃣ ANIMATION KEYFRAMES */
@keyframes fadeUp{
    from{
        opacity:0;
        transform:translateY(40px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

/* 3️⃣ MOBILE RESPONSIVE */
@media(max-width:768px){

    .navbar{
        flex-direction:column;
        gap:10px;
        padding:12px;
    }

    .hero-box{
        padding:35px 25px;
    }

    .hero-box h1{
        font-size:32px;
    }

    .hero-box p{
        font-size:16px;
    }
}
</style>
</head>

<body>

    <style>
        /* Override only navbar and small link accents to cream */
        .navbar a, .auth-text a, .login-footer a, .read-more { color: #FFFDD0 !important; }
        .btn-primary, .login-btn-main, .filter.active, .hero .cta { background: #FFFDD0 !important; color: #0a0a0a !important; background-image: none !important; box-shadow: 0 0 20px rgba(255,253,208,0.7) !important; }
        .login-btn-main:hover, .btn-primary:hover { box-shadow: 0 0 25px rgba(255,253,208,0.9) !important; }
        /* Home page option buttons */
        .home-options { margin-top:18px; display:flex; gap:12px; justify-content:center; flex-wrap:wrap; }
        .option-btn { padding:10px 18px; border-radius:24px; background:#FFFDD0; color:#0a0a0a; text-decoration:none; font-weight:600; box-shadow:0 6px 18px rgba(0,0,0,0.35); }
        .option-btn:hover { transform:translateY(-4px); box-shadow:0 10px 28px rgba(0,0,0,0.45); }
    </style>
<!-- NAVBAR -->
<div class="navbar">
    <div style="font-size:20px;font-weight:bold;">Table Tennis Hub</div>
    <div>
        <a href="index.jsp">Home</a>
        <a href="learn.jsp">Learn</a>
        <a href="rules.jsp">Rules</a>
        <a href="history.jsp">History</a>
        <a href="store.jsp">Store</a>
        <%
            if (username != null) {
        %>
                <span style="color:#FFFDD0; margin-left:18px;">Welcome, <%=username%></span>
                <a href="LogoutServlet" class="login-btn">Logout</a>
        <%
            } else {
        %>
                <a href="login.jsp" class="login-btn">Login</a>
        <%
            }
        %>
    </div>
</div>

<!-- HERO -->
<section class="hero">
    <div class="hero-box">
        <h1>Train Like a Champion</h1>
        <p>
            Learn table tennis with structured techniques, official rules,
            and professional-level guidance — all in one place.
        </p>
        <a href="learn.jsp">Start Learning</a>
        <div class="home-options">
            <a href="rules.jsp" class="option-btn">Rules</a>
            <a href="history.jsp" class="option-btn">History</a>
            <a href="store.jsp" class="option-btn">Store</a>
        </div>
    </div>
</section>

<!-- WHY -->
<section class="why">
    <h2>Why Table Tennis Hub?</h2>

    <div class="why-grid">
        <div class="why-card">
            <h3>Improve Skills</h3>
            <p>Learn step-by-step techniques used by professional players.</p>
        </div>

        <div class="why-card">
            <h3>Official Rules</h3>
            <p>Understand ITTF rules explained in simple language.</p>
        </div>

        <div class="why-card">
            <h3>Structured Learning</h3>
            <p>Beginner to advanced techniques organised clearly.</p>
        </div>

        <div class="why-card">
            <h3>Track Growth</h3>
            <p>Set goals and monitor your improvement over time.</p>
        </div>
    </div>
</section>

<!-- FOOTER -->
<div class="footer">
    © 2025 Table Tennis Hub. All rights reserved.
</div>

</body>
</html>

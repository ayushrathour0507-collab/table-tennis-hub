<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>

<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<title>Store | Table Tennis Hub</title>
<style>
body{
    margin:0;
    font-family: 'Segoe UI', sans-serif;
    background: radial-gradient(circle at top, #111, #000);
    color:#fff;
}

.navbar{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:20px 40px;
    background:rgba(0,0,0,0.8);
    backdrop-filter: blur(10px);
}

.navbar a{
    color:white;
    text-decoration:none;
    margin-left:20px;
    font-weight:500;
}

.container{
    padding:60px;
}

h1{
    text-align:center;
    margin-bottom:40px;
}

.products{
    display:grid;
    grid-template-columns: repeat(auto-fit,minmax(260px,1fr));
    gap:30px;
}

.card{
    background:rgba(255,255,255,0.08);
    border-radius:18px;
    padding:25px;
    box-shadow:0 10px 30px rgba(0,0,0,0.6);
    transition: transform 0.3s;
}

.card:hover{
    transform:translateY(-8px);
}

.card h3{
    margin-top:0;
}

.price{
    color:#00bfff;
    font-size:20px;
    margin:15px 0;
}

.btn{
    display:inline-block;
    padding:12px 22px;
    border-radius:30px;
    background:linear-gradient(135deg,#FFFDD0,#FFFDD0);
    color:white;
    text-decoration:none;
    font-weight:600;
}

.btn:hover{
    opacity:0.9;
}
</style>
</head>

<body>

    <style>
        .navbar a, .read-more { color: #FFFDD0 !important; }
        .btn-primary, .card .tag { background: #FFFDD0 !important; color: #000 !important; }
    </style>
<div class="navbar">
    <div><strong>Table Tennis Hub</strong></div>
    <div>
        <a href="index.jsp">Home</a>
        <a href="learn.jsp">Learn</a>
        <a href="rules.jsp">Rules</a>
        <a href="history.jsp">History</a>
        <a href="profile.jsp"><%= session.getAttribute("username") %></a>
    </div>
</div>

<div class="container">
<h1>🏓 Table Tennis Store</h1>

<div class="products">

<div class="card">
    <h3>Professional Table Tennis Bat</h3>
    <p>High grip rubber, carbon blade for advanced control.</p>
    <div class="price">₹2,499</div>
    <a class="btn" href="payment.jsp">Buy Now</a>
</div>

<div class="card">
    <h3>ITTF Approved Balls (Pack of 6)</h3>
    <p>Seamless, tournament-quality table tennis balls.</p>
    <div class="price">₹699</div>
    <a class="btn" href="payment.jsp">Buy Now</a>
</div>

<div class="card">
    <h3>Foldable Table Tennis Net</h3>
    <p>Easy installation, durable clamp system.</p>
    <div class="price">₹899</div>
    <a class="btn" href="payment.jsp">Buy Now</a>
</div>

<div class="card">
    <h3>Beginner Training Kit</h3>
    <p>Bat + balls + guidebook for beginners.</p>
    <div class="price">₹1,599</div>
    <a class="btn" href="payment.jsp">Buy Now</a>
</div>

</div>
</div>

</body>
</html>

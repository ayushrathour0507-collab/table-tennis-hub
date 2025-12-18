<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard | Table Tennis Hub</title>

    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;600&family=Poppins&display=swap" rel="stylesheet">
</head>
<body>

<%
    String user = (String) session.getAttribute("username");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return; 
    }
%>

<div class="dashboard-page">

    <!-- DASHBOARD CARD --> 
    <div class="dashboard-card">
        <h1>Welcome, <%= user %></h1>
        <p class="dashboard-subtitle">
            Manage your training, goals, and explore the Table Tennis Hub
        </p>

        <div class="dashboard-grid">
            <a href="index.jsp" class="dash-box">
                <h3>Home</h3>
                <p>Go back to main site</p>
            </a>

            <a href="store.jsp" class="dash-box">
                <h3>Store</h3>
                <p>Buy table tennis equipment</p>
            </a>

            <a href="goal.jsp" class="dash-box">
                <h3>Set Goal</h3>
                <p>Define your training goals</p>
            </a>

            <a href="LogoutServlet" class="dash-box logout-box">
                <h3>Logout</h3>
                <p>Sign out securely</p>
            </a>
        </div>
    </div>

</div>

</body>
</html>

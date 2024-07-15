<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign In</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/signin.css">
</head>
<body>
    <div class="container">
        <div class="signin-form">
            <h2>Sign In</h2>
            <form action="SigninServlet" method="post">
                <input type="text" name="username" placeholder="Username" required><br>
                <input type="password" name="password" placeholder="Password" required><br>
                <button type="submit">Sign In</button>
            </form>
            <% if (request.getParameter("error") != null) { %>
            <p class="error"><%= request.getParameter("error") %></p>
        <% } %>
        <p>Not registered? <a href="signup.jsp">Create a new account</a></p>
        </div>
    </div>
</body>
</html>

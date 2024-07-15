<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.beautyparlor.DatabaseConnection, com.beautyparlor.Service" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Beauty Parlor</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
    </head>
    <body>
        <div class="container">
            <header>
                <img src="images/logo3.jpeg" alt="Logo" class="logo">
                <h1>Beauty Parlor</h1>
                <input type="text" placeholder="Search..." class="search">
                <a href="signin.jsp" class="sign-in">Sign In</a>


            </header>
            <nav>
                <ul>
                    <li><a href="Home.jsp">Home</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="services.jsp">Services</a></li>
                    <li><a href="pricing.jsp">Pricing</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                </ul>
            </nav>
            <div class="main-image">
                <img src="images/main.jpeg" alt="main.jpeg">
            </div>
            <div class="services">
                <h2>Our Services</h2>
                <div class="service-list">
                    <%
                        List<Service> services = DatabaseConnection.getServices();
                        for (Service service : services) {
                    %>
                    <div class="service">
                        <img src="<%= service.getImageUrl() %>" alt="<%= service.getName() %>">
                        <h3><%= service.getName() %></h3>
                        <p><%= service.getDescription() %></p>
                        <p>Duration: <%= service.getDuration() %></p>
                        <p>Price: Rs.<%= service.getPrice() %></p>
                        <a href="serviceDetails.jsp?service_id=<%= service.getId() %>">Read More</a>
                    </div>
                    <% } %>
                </div>
                <a href="services.jsp" class="all-services">All Services</a>
            </div>
            <footer>
                <p>&copy; Copyright 2024 All rights reserved</p>
                <div class="contact-icons">
                    <a href="#"><img src="images/whatsapp.jpeg" alt="WhatsApp"></a>
                    <a href="#"><img src="images/facebook.jpeg" alt="Facebook"></a>
                    <a href="#"><img src="images/linkedin.jpeg" alt="LinkedIn"></a>
                    <a href="#"><img src="images/insta.jpeg" alt="Instagram"></a>
                </div>
            </footer>
        </div>
    </body>
</html>

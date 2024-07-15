<%@page import="com.beautyparlor.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Service Details</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/serviceDetails.css">

    </head>
    <body>
        <header>
            <img src="images/logo3.jpeg" alt="Logo" class="logo">
            <h1>Beauty Parlor</h1>
            <a href="signin.jsp" class="sign-out">Sign Out</a>
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
        <div class="content">
            <h2>Service Details</h2>
            <%
                int serviceId = Integer.parseInt(request.getParameter("service_id"));
                Connection con = null;
                Statement stmt = null;
                ResultSet rs = null;
                try {
                    con = DatabaseConnection.getConnection();
                    stmt = con.createStatement();
                    rs = stmt.executeQuery("SELECT * FROM services WHERE service_id = " + serviceId);
                    if (rs.next()) {
            %>
            <div class="service-details">
                <img src="<%= rs.getString("image_url")%>" alt="Image cap">
                <div>
                    <h3><%= rs.getString("service_name")%></h3>
                    <p><strong>Duration:</strong> <%= rs.getString("duration")%></p>
                    <p><strong>Rate:</strong> <%= rs.getDouble("price")%></p>
                    <p><strong>Description:</strong> <%= rs.getString("description")%></p>
                    <a href="appointment.jsp"><button>Book Now</button></a>
                </div>
            </div>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) {
                        rs.close();
                    }
                    if (stmt != null) {
                        stmt.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                }
            %>

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
    </body>
</html>

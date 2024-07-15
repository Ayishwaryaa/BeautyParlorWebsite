<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Contact Us - Beauty Parlor</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet" type="text/css" href="css/contact.css">

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
            <h2>Contact Us</h2>
            <div class="contact-info">
                <div>
                    <h3>Call Us</h3>
                    <p>+91 91234 56789</p>
                    <p>+91 98765 43210</p>
                </div>
                <div>
                    <h3>Mail Us</h3>
                    <p>contact@beautyparlor.com</p>
                    <p>support@beautyparlor.com</p>
                </div>
                <div>
                    <h3>Location</h3>
                    <p>12 , Beauty Lane,<br>
                        Door no:6,<br>
                        Chennai City, <br>
                        India</p>
                </div>
            </div>

            <div class="query">
                <h2 align="center">Queries? Send a message</h2>
                <form method="post" action="contact.jsp">
                    <div>
                        <label>First name:</label>
                        <input type="text" name="first_name" required>
                    </div>
                    <div>
                        <label>Last name:</label>
                        <input type="text" name="last_name" required>
                    </div>
                    <div>
                        <label>Email:</label>
                        <input type="email" name="email" required>
                    </div>
                    <div>
                        <label>Your comments:</label>
                        <textarea name="comments" required></textarea>
                    </div>
                    <div>
                        <button type="submit" name="send_message">Send Message</button>
                    </div>
                </form>
                <%
                    if (request.getParameter("send_message") != null) {
                        String firstName = request.getParameter("first_name");
                        String lastName = request.getParameter("last_name");
                        String email = request.getParameter("email");
                        String comments = request.getParameter("comments");

                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlor_website", "root", "Ayishu@123");
                            PreparedStatement ps = con.prepareStatement("INSERT INTO contact (first_name, last_name, email, comments) VALUES (?, ?, ?, ?)");
                            ps.setString(1, firstName);
                            ps.setString(2, lastName);
                            ps.setString(3, email);
                            ps.setString(4, comments);
                            int i = ps.executeUpdate();
                            if (i > 0) {
                                out.println("<p>Message sent successfully!</p>");
                            } else {
                                out.println("<p>Error in sending message. Please try again.</p>");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            out.println("<p>Error in sending message. Please try again.</p>");
                        }
                    }
                %>
            </div>
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

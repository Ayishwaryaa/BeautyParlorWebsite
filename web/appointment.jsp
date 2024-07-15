<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Book Appointment </title>
        <link rel="stylesheet" type="text/css" href="styles.css">
        <link rel="stylesheet" type="text/css" href="css/appointment.css">
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
            <h2>Book Appointment</h2>
            <form method="post" action="appointment.jsp">
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
                    <label>Phone:</label>
                    <input type="text" name="phone" required>
                </div>
                <div>
                    <label>Address:</label>
                    <input type="text" name="address" required>
                </div>
                <div>
                    <label>City:</label>
                    <input type="text" name="city" required>
                </div>
                <div>
                    <label>Zip code:</label>
                    <input type="text" name="zip_code" required>
                </div>
                <div>
                    <label>Choose Service:</label>
                    <select name="service" required>
                        <option value="basic">Basic</option>
                        <option value="medium">Medium</option>
                        <option value="ultimate">Ultimate</option>
                    </select>
                </div>
                <div>
                    <label>Appointment date:</label>
                    <input type="date" name="appointment_date" required>
                </div>
                <div>
                    <label>Pick a time:</label>
                    <input type="time" name="appointment_time" required>
                </div>
                <div>
                    <button type="submit" name="submit">Submit</button>
                </div>
            </form>
            <%
                if (request.getParameter("submit") != null) {
                    String firstName = request.getParameter("first_name");
                    String lastName = request.getParameter("last_name");
                    String email = request.getParameter("email");
                    String phone = request.getParameter("phone");
                    String address = request.getParameter("address");
                    String city = request.getParameter("city");
                    String zipCode = request.getParameter("zip_code");
                    String service = request.getParameter("service");
                    String appointmentDate = request.getParameter("appointment_date");
                    String appointmentTime = request.getParameter("appointment_time");

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_parlor_website", "root", "Ayishu@123");
                        PreparedStatement ps = con.prepareStatement("INSERT INTO purchase (first_name, last_name, email, phone, address, city, zip_code, service, appointment_date, appointment_time) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
                        ps.setString(1, firstName);
                        ps.setString(2, lastName);
                        ps.setString(3, email);
                        ps.setString(4, phone);
                        ps.setString(5, address);
                        ps.setString(6, city);
                        ps.setString(7, zipCode);
                        ps.setString(8, service);
                        ps.setString(9, appointmentDate);
                        ps.setString(10, appointmentTime);
                        int i = ps.executeUpdate();
                        if (i > 0) {
                            out.println("<p>Booking successful!</p>");
                        } else {
                            out.println("<p>Error in booking. Please try again.</p>");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        out.println("<p>Error in booking. Please try again.</p>");
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

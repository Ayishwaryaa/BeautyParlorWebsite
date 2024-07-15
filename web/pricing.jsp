<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Pricing Plans - Beauty Parlor</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet" type="text/css" href="css/pricing.css">
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
            <h2>Pricing Plans</h2>
            <div class="pricing-plans">
                <div class="plan">
                    <h3>BASIC</h3>
                    <ul>
                        <li>Haircut</li>
                        <li>Manicure</li>
                        <li>Pedicure</li>
                        <li>Eyebrow Threading</li>
                        <li>Facial</li>
                    </ul>
                    <button onclick="window.location.href = 'appointment.jsp'">Book Now</button>
                </div>
                <div class="plan">
                    <h3>MEDIUM</h3>
                    <ul>
                        <li>Haircut and Styling</li>
                        <li>Gel Manicure </li>
                        <li>Spa Pedicure </li>
                        <li>Waxing </li>
                        <li>Advanced Facial</li>
                        <li>Hair Coloring </li>
                    </ul>

                    <button onclick="window.location.href = 'appointment.jsp'">Book Now</button>
                </div>
                <div class="plan">
                    <h3>ULTIMATE</h3>
                    <ul>
                        <li>Haircut and Advanced Styling</li>
                        <li>French Manicure </li>
                        <li>Luxury Pedicure</li>
                        <li>Full Body Massage</li>
                        <li>Gold Facial</li>
                        <li>Hair Treatments</li>
                        <li>Makeup</li>
                    </ul>
                    <button onclick="window.location.href = 'appointment.jsp'">Book Now</button>
                </div>
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

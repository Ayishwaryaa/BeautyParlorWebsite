<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>About Us</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/about.css">
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
            <h2>About Us</h2>
            <div class="about-section">
                <div class="about-video">
                    <video width="400" controls>
                        <source src="video.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="about-text">
                    <h3>Our History</h3>
                    <p>Established in 2000, Beauty Parlor has been a pioneer in providing exceptional beauty and wellness services. With a vision to promote holistic well-being and beauty, we began our journey in a small, cozy space in the heart of the city. Over the years, our commitment to excellence and customer satisfaction has helped us grow into a reputable and trusted name in the industry.</p>

                    <p>From our humble beginnings, we have continuously evolved by incorporating the latest trends and techniques in beauty and wellness. Our team of skilled and dedicated professionals is passionate about delivering personalized services that cater to the unique needs of each client.</p>

                    <p>We pride ourselves on using high-quality, natural products to ensure the best results while prioritizing the health and well-being of our clients. Our range of services has expanded to include specialized treatments such as Herbal Spa, Stone Massage, and Body Massage, making us a one-stop destination for all your beauty and relaxation needs.</p>

                    <p> Beauty Parlor is not just a place for beauty treatments; it is a sanctuary where you can escape the hustle and bustle of everyday life and rejuvenate your body, mind, and spirit. We look forward to continuing our journey with you and making every visit a memorable and delightful experience.  </p>   </div>
            </div>
            <div class="experts-section">
                <h3>Our Experts</h3>
                <div class="experts">
                    <div class="expert-card">
                        <img src="images/img1.jpeg" alt="Image cap">
                        <h4>Shruthi</h4>
                        <p>Hair Stylist</p>
                    </div>
                    <div class="expert-card">
                        <img src="images/img2.jpeg" alt="Image cap">
                        <h4>Ramya</h4>
                        <p>Bridal Makeup</p>
                    </div>
                    <div class="expert-card">
                        <img src="images/img3.jpeg" alt="Image cap">
                        <h4>Vanathi</h4>
                        <p>Hair stylist</p>
                    </div>
                    <div class="expert-card">
                        <img src="images/img4.jpeg" alt="Image cap">
                        <h4>Latha</h4>
                        <p>Facial Makeup</p>
                    </div>
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

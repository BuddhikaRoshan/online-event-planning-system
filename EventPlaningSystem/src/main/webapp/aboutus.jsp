<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style/About us.css">
        <script src="https://kit.fontawesome.com/fb70ce88c3.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap"
            rel="stylesheet">

        <style>
            body {
                font-family: 'Poppins', sans-serif;
                margin: 0;
                padding: 0;
                background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)), url('image/pexels-codioful-\(formerly-gradienta\)-7130540.jpg');
            }

            .header {
                min-height: 110vh;
                width: 100%;
                background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)),
                    url(image/beautiful-flowers-arrangement.jpg);
                background-position: top;
                background-size: cover;
                background-repeat: no-repeat;
                position: relative;
            }

            .text-box {
                width: 90%;
                color: black;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                text-align: center;
            }

            .text-box h1 {
                font-size: 40px;
                color: white;
            }

            h1 {
                color: white;
            }

            h2 {
                color: white;
            }

            p {
                color: white;
            }

            h3 {
                color: white;
            }

            .testimonial blockquote,
            .testimonial p {
                color: white;
            }

            .navbar {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px 20px;
            }

            .nav-links a {
                margin: 0 10px;
                text-decoration: none;
                color: #fff;
                font-weight: bold;
                transition: color 0.3s;
            }

            .nav-links a:hover {
                color: #ff7f50;
            }

            .logo img {
                width: 80px;
            }

            #about-us {
                background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)), url('image/pexels-codioful-\(formerly-gradienta\)-7130540.jpg');
                padding: 30px;
                background-position: top;
                background-size: cover;
                background-repeat: no-repeat;
                position: relative;
            }

            .leadership-list {
                list-style: none;
                display: flex;
                justify-content: space-around;
            }

            .leadership-list li {
                text-align: center;
                margin: 20px;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                width: 200px;
            }

            .leadership-list img {
                max-width: 200px;
                border-radius: 50%;
            }

            .leadership-list h3 {
                font-size: 18px;
                margin: 10px 0;
            }

            .leadership-list p {
                font-size: 14px;
            }

            .icon {
                text-align: center;
                padding: 20px;
            }

            .icon i {
                font-size: 20px;
                color: white;
                margin: 0 10px;
            }

            .icon p {
                font-size: 14px;
                color: white;
                margin: 10px 0;
            }

            .cta-button {
                display: inline-block;
                padding: 10px 20px;
                background-color: #ff7f50;
                color: #fff;
                text-decoration: none;
                border-radius: 5px;
                transition: background-color 0.3s;
            }

            .cta-button:hover {
                background-color: #ff5722;
            }



            section {
                background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)),
                    url('image/pexels-codioful-\(formerly-gradienta\)-7130540.jpg');
                background-position: top;
                background-size: cover;
                background-repeat: no-repeat;
                position: relative;
            }

            @media (max-width: 768px) {
                .nav-links {
                    flex-direction: column;
                    text-align: center;
                }

                .nav-links a {
                    margin: 10px 0;
                }
            }
        </style>

        <title>About us</title>
    </head>

    <body>
        <header class="header">
            <div class="navbar">
                <div class="logo">
                    <img src="image/pic1.jpg" alt="Logo">
                </div>
                <nav class="nav-links">
                    <a href="UserHomeView.jsp"><b>Home</b></a>
                    <a href="aboutus.jsp"><b>About</b></a>
                    <a href="payment.jsp"><b>Payment</b></a>
                    <a href="contact.jsp"><b>Contact</b></a>
                </nav>
            </div>
            <div class="text-box">
                <h1>Welcome to Rubik Event<br> where every event is a masterpiece waiting to be crafted. We are
                    passionate
                    about making your moments extraordinary and turning your visions into reality. <br>Join us on a
                    journey
                    to create unforgettable memories.</h1>
            </div>
        </header>

        <main>
            <section id="about-us">
                <h1>About Us</h1>
                <p>Welcome to Rubik Event, the epitome of event planning excellence,
                    where we bring unforgettable events to life. As a premier online
                    event planning company, Rubik Event specializes in crafting
                    extraordinary experiences for our clients, ensuring that every
                    moment is nothing short of exceptional. Whether it's a high-stakes
                    corporate gathering, a fairytale wedding, or a special occasion
                    close to your heart, we have the expertise and passion to turn your vision into reality.</p>
                <br><br><br><br>
                <h2>Our Story</h2>
                <p>Established in 1996, Rubik Event has steadily evolved from a
                    humble startup into a dynamic and innovative event management agency.
                    Our path has been illuminated by a profound passion for creativity and
                    an unwavering commitment to surpassing our clients' expectations.
                    Over the years, we've successfully orchestrated numerous events,
                    leaving behind a trail of elated clients and unforgettable moments.</p>
                <br><br><br><br>

                <h2>Meet Our Leadership:</h2>
                <ul class="leadership-list">
                    <li>
                        <img src="image/as.png" alt="Palitha Kumara">
                        <h3>Palitha Kumara</h3>
                        <p>(CEO)</p>
                    </li>
                    <li>
                        <img src="image/Daco_5511364.png" alt="Kasun Perera">
                        <h3>Kasun Perera</h3>
                        <p>(Administrator)</p>
                    </li>
                    <li>
                        <img src="image/kindpng_2532351.png" alt="Hasini Perera">
                        <h3>Hasini Perera</h3>
                        <p>(Manager)</p>
                    </li>
                </ul>
                <br><br><br><br>

                <h2>Our Approach</h2>
                <p>Our event planning process is a harmonious blend
                    of creative design, meticulous planning, efficient
                    execution, and comprehensive post-event analysis.
                    At Rubik Event, we relentlessly strive for
                    perfection in every facet of event management.
                    Our goal is to ensure that each event we
                    undertake offers a seamless and unforgettable
                    experience for our clients.</p>
                <br><br><br><br>
                <h2>Client Testimonials</h2>
                <div class="testimonial">
                    <blockquote>
                        "Rubik Event is the epitome of professionalism and creativity. They turned our corporate event
                        into
                        a grand success. Their attention to detail, from planning to execution, was flawless."
                    </blockquote>
                    <p>- Sarah Anderson, Corporate Client</p>
                </div>
                <div class="testimonial">
                    <blockquote>
                        "Choosing Rubik Event for my wedding was the best decision I made. They brought my fairytale
                        wedding
                        to life, and I couldn't have asked for a more dedicated team to make it all happen."
                    </blockquote>
                    <p>- Mark Davis, Newlywed</p>
                </div>
                <div class="testimonial">
                    <blockquote>
                        "Our annual conference was a great triumph, thanks to the Rubik Event team. Their expertise in
                        organizing seminars and conferences is commendable, and the feedback from our attendees was
                        overwhelmingly positive."
                    </blockquote>
                    <p>- Lisa Johnson, Conference Organizer</p>
                </div>
                <div class="testimonial">
                    <blockquote>
                        "Rubik Event's theme parties are nothing short of magical. They take creativity to a whole new
                        level
                        and ensure that each theme party is a unique and memorable experience. I look forward to every
                        event
                        they plan."
                    </blockquote>
                    <p>- Emily Richards, Theme Party Enthusiast</p>
                </div>
                <br><br><br><br>
                <h2>Why Choose Rubik Event</h2>
                <p>Our distinctiveness lies in our steadfast commitment to
                    delivering excellence in event planning. We take immense
                    pride in transforming ordinary events into extraordinary
                    memories. When you choose Rubik Event for your special
                    occasion, you're not just choosing an event planning
                    company; you're choosing a partner dedicated to making
                    your event unforgettable. Trust us with your vision, and
                    we'll turn it into a remarkable reality.</p>
                <a href="contact.jsp" class="cta-button">Contact Us</a>
            </section>

            <section>
                <div class="icon" align="center">
                    <hr>
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <p>Rubik Event (SE_OOP_2023_S2_MLB_WD_G335_Online Event Planning System) © 2023 - All Rights
                        Reserved</p>
                </div>
            </section>
        </main>

    </body>

    </html>
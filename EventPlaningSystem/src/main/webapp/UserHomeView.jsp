<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style/home.css">
        <script src="https://kit.fontawesome.com/fb70ce88c3.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap"
            rel="stylesheet">
        <style>
            * {
                margin: 0;
                padding: 0;
                font-family: 'Poppins', sans-serif;
            }

            /*header design*/
            .header {
                min-height: 110vh;
                width: 100%;
                background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)),
                    url('image/pexels-pixabay-414667.jpg');
                background-position: top;
                background-size: cover;
                background-repeat: no-repeat;
                position: relative;
            }

            .navbar {
                overflow: hidden;
                width: 90%;
                display: flex;
                align-items: center;
                justify-content: space-between;
                margin: auto;
            }

            p {
                color: white;
            }



            .navbar a {
                font-size: 18px;
                color: white;
                text-align: center;
                padding: 15px 30px;
                text-decoration: none;
            }

            h2 {
                color: white;
            }

            .navbar img {
                width: 100px;
                cursor: pointer;
                margin: 35px 0;
                padding-left: 10px;
                margin-right: 15px;
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
                font-size: 55px;
                color: white;
            }

            .text-box p {
                margin: 10px 0 30px;
                font-size: 14px;
                color: white;
            }

            .vist-btn {
                display: inline-block;
                text-decoration: none;
                color: white;
                border: 1px solid white;
                padding: 12px 34px;
                font-size: 13px;
                background: transparent;
                position: relative;
                cursor: pointer;
                margin-bottom: 5px;
            }

            /*latest deals section*/
            .deals {
                width: 100%;
                margin: auto;
                text-align: center;
                background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)), url('image/pexels-codioful-\(formerly-gradienta\)-7130540.jpg');
                background-position: top;
                background-size: cover;
                background-repeat: no-repeat;
                position: relative;
            }

            h3 {
                font-size: 36px;
                font-weight: 600;
            }

            .paragraph1 {
                color: black;
                font-size: 14px;
                font-weight: 300;
                line-height: 22px;
                padding: 10px;
            }

            .row {
                margin-top: 5px;
                display: flex;
                justify-content: space-between;
            }

            .deal-col {
                flex-basis: 31%;
                background: #fff3f3;
                border-radius: 10px;
                margin-bottom: 5%;
                margin-left: 5px;
                margin-right: 5px;
                box-sizing: border-box;
                border: black;
            }

            h3 {
                text-align: center;
                font-weight: 600;
                margin: 10px 0;
                font-size: 24px;
                color: black;
            }

            .deal-col:hover {
                box-shadow: 10px 10px 10px 10px rgba(0, 0, 0, 0.2);
            }

            .vist-btn1 {
                display: inline-block;
                text-decoration: none;
                color: white;
                border: 1px solid white;
                padding: 12px 34px;
                font-size: 13px;
                background: transparent;
                position: relative;
                cursor: pointer;
                margin-bottom: 5px;
            }

            /*video section*/
            .video-section {
                display: flex;
                justify-content: space-between;
                background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)), url('image/pexels-codioful-\(formerly-gradienta\)-7130540.jpg');
                background-position: top;
                background-size: cover;
                background-repeat: no-repeat;
                position: relative;
            }

            .video-container {
                width: 100%;
                margin: 10px;
                padding: 10px;
            }

            .video-container iframe {
                width: 100%;
                height: 300px;
            }



            /*contact us*/
            .Contact {
                margin: 100px auto;
                width: 80%;
                background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)), url('image/fg.jpg');
                background-position: center;
                background-size: cover;
                background-repeat: no-repeat;
                border-radius: 10px;
                text-align: center;
                padding: 100px 0;
            }

            .Contact p {
                color: white;
            }

            .Contact h2 {
                color: white;
            }

            .grid-container {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                grid-gap: 5px;
                padding-left: 10px;
                padding-right: 10px;
                padding-top: 10px;
                padding-bottom: 10px;
                color: white;
                background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)), url('image/pexels-codioful-\(formerly-gradienta\)-7130540.jpg');
                background-position: top;
                background-size: cover;
                background-repeat: no-repeat;
                position: relative;
            }

            .grid-container div {
                text-align: center;
            }

            .grid-container img {
                width: 80%;
                height: 50%;
            }

            .grid-container p {
                font-size: 16px;
                margin: 10px 0;
            }

            /*footer*/
            .footer {
                width: 100%;
                text-align: center;
                padding: 30px 0;
                background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)), url('image/pexels-codioful-\(formerly-gradienta\)-7130540.jpg');
                background-position: top;
                background-size: cover;
                background-repeat: no-repeat;
                position: relative;
            }

            .footer h4 {
                margin-bottom: 25px;
                margin-top: 20px;
                font-weight: 600;
            }

            .container {
                margin: 20px 40px;
                color: white;
            }

            .heading {
                font-size: 20px;
                color: white;
            }

            .heading span {
                font-style: italic;
                font-size: 30px;
            }

            .profiles {
                display: flex;
                justify-content: space-around;
                margin: 20px 80px;
            }

            .profile1 {
                flex-basis: 260px;
            }

            .profile1 .profile1-img {
                height: 260px;
                width: 260px;
                border-radius: 50%;
                filter: gryscale(100%);
                cursor: pointer;
                transition: 400ms;
            }

            .profile1:hover .profile1-img {
                filter: grayscale(0);
            }

            .position {
                font-size: 13px;
                font-weight: 1000;
                letter-spacing: 1px;
                color: #093d72;
            }

            .user-name {
                font-size: 18px;
                font-weight: 100;
                letter-spacing: 2px;
                color: white;
            }

            .profile1 p {
                font-size: 16px;
                margin-top: 20px;
                text-align: justify;
            }

            .icon .fa-brands {
                color: #f44336;
                margin: 0 13px;
                cursor: pointer;
                padding: 18px 0;
            }

            .line-container {
                width: 80%;
                text-align: center;

            }

            hr {
                width: 100%;
                height: 3px;
                background-color: black;
                margin: 0 auto;

            }
        </style>
        <title>Home</title>
    </head>

    <body>
        <header class="header">
            <div class="navbar">
                <div class="logo">
                    <img src="image/pic1.jpg" alt="Logo">
                </div>
                <nav class="nav-links">
                    <a href="UserHomeView"><b>Home</b></a>

                    <a href="aboutus.jsp"><b>About</b></a>

                    <a href="Payment.jsp"><b>Payment</b></a>

                    <a href="contact.jsp"><b>Contact</b></a>


                    <a href="SignupView.jsp"><i class="fa fa-fw fa-user"></i>Login</a>


                </nav>
            </div>
            <div class="text-box">
                <br> <br> <br> <br> <br> <br> <br> <br>
                <h1>"Seamless Event Planning <br>at Your Fingertips."</h1>

                <p>"Welcome to our Event Management Hub! Discover a seamless and convenient way to plan
                    your next event with us. Whether you're organizing a corporate conference or a personal
                    celebration, our user-friendly platform allows you to create, coordinate, and manage
                    events with ease. Explore a wide range of event types and find the perfect solutions
                    to suit your needs and budget. With our streamlined planning process and competitive prices,
                    you can save time and resources while ensuring a successful event. Get ready to embark on
                    your next event planning journey and let us take care of the details. Start your event
                    today and elevate your gatherings to new heights with our event management services."</p>

                <a href="#" class="vist-btn">visit us to know more</a>

            </div>
        </header>

        <section class="deals">


            <hr>


            <h2>Latest deals</h2>
            <br> <br>
            <p>"Plan extraordinary events with unbeatable offers! Create memorable experiences
                at incredible prices and bring your event dreams to life. Explore our latest
                event packages and embark on unforgettable gatherings. Don't miss out on these
                exclusive deals â start planning your event today and let us make it extraordinary!"</p>
            <br> <br><br> <br>
            <div class="row">
                <div class="deal-col">
                    <h3>Plan Now, Pay Later for Unforgettable Gatherings.</h3>
                    <p class="paragraph1">"Unlock the joy of hosting unforgettable events without the financial burden
                        â
                        with our exclusive offer, you can start planning your dream gatherings today and pay for them
                        later. Our unique event planning platform offers you the flexibility to enjoy three months of
                        interest-free installment payments, ensuring you don't have to worry about upfront costs.
                        Simply select our hassle-free payment option during the booking process and spread the cost
                        of your event planning over time. This incredible opportunity allows you to explore your
                        creativity and host remarkable occasions without straining your budget. Get ready to embark
                        on your next event planning adventure and let the excitement begin!"</p>
                </div>
                <div class="deal-col">
                    <h3>"Celebrate Student Life with Special Fares and Exclusive Perks"</h3>
                    <p class="paragraph1">"Experience the thrill of hosting unforgettable events without
                        the financial burden. Our exclusive offer empowers you to kickstart your dream
                        gatherings today and pay at your convenience. With our innovative event planning
                        platform, you can savor the flexibility of a three-month interest-free installment
                        plan, eliminating any concerns about upfront costs. Simply opt for our hassle-free
                        payment option during booking and effortlessly spread the expenses of your event
                        planning over time. This incredible opportunity fuels your creativity and enables
                        you to host extraordinary occasions without straining your budget. Prepare to embark
                        on your next event planning adventure and let the excitement unfold!"</p>
                </div>
                <div class="deal-col">
                    <h3>"Celebrate Together with Enhanced Event Management"</h3>
                    <p class="paragraph1">"Experience the joy of hosting memorable events without the financial strain
                        â
                        with our exclusive My Event feature, you can begin planning your dream gatherings today and
                        defer
                        the payments. Our unique event management platform offers the flexibility to enjoy three months
                        of interest-free installment payments, eliminating worries about upfront costs. Simply opt for
                        our convenient payment option during the booking process and distribute the expenses of your
                        event
                        management over time. This incredible opportunity allows you to explore your creativity and host
                        remarkable occasions without breaking the bank. Get ready to embark on your next event
                        management
                        adventure and let the excitement begin, together!"</p>
                </div>
                <div class="deal-col">
                    <h3>Event Planner's Rewards</h3>
                    <p class="paragraph1">Discover the Event Planner's Rewards program and open the door to a world of
                        benefits!
                        With this exclusive offer, you can earn points while you organize, coordinate, and execute
                        events.
                        Whether you're planning corporate functions, weddings, or special occasions, every event is an
                        opportunity to accumulate points. Simply utilize your Event Planner's membership while managing
                        your events, and witness your points grow. Start optimizing your event management routine and
                        turn
                        it into an opportunity to earn points for extraordinary event experiences, upgrades, and more.
                        Join the Event Planner's Rewards program and watch your event planning achievements soar!</p>

                </div>
                <div class="deal-col">
                    <h3>Unlock Up to 100,000 Event Points</h3>
                    <p class="paragraph1">"Supercharge your event planning with the Event Organizer Loyalty Program!
                        Enroll
                        today
                        and seize the opportunity to earn up to 100,000 event points. This exclusive offer is tailored
                        to
                        enhance your event management experiences and reward your dedication. With the Event Organizer
                        Loyalty Program, every successful event you plan brings you closer to fantastic rewards. Earn
                        bonus
                        points for program registration, your first event, and achieving certain milestones. Visualize
                        the
                        potential as you accumulate event points towards complimentary services, venue upgrades, and
                        more.
                        Don't miss this remarkable chance to elevate your event management rewards. Enroll in the Event
                        Organizer Loyalty Program today and embark on a journey towards unforgettable events!"</p>

                </div>
            </div>
            <a href="#" class="vist-btn1">visit us to know more</a>
            <br>
            <br>

            <hr>

        </section>

        <section class="video-section">
            <div class="video-container">
                <iframe src="image/Wedding Planner Behind The Scenes Soha Lavin CountDown Events.mp4"
                    allowfullscreen></iframe>
            </div>
            <div class="video-container">
                <iframe src="image/Dubai Diamond Conference 2022 - Event Highlights.mp4" allowfullscreen></iframe>
            </div>
        </section>
        <hr>




        <div class="grid-container">
            <h1>Featured Event Destinations</h1>
            <br>
            <p>This section highlights six event destinations offering diverse experiences for your gatherings, from
                stunning venues to vibrant cities and breathtaking landscapes. Explore the captivating images and
                descriptions
                to inspire your event planning. Click on the "Learn More" links to discover insider tips and must-visit
                attractions.</p>

            <div>
                <img src="image/pexels-thibault-trillet-167478 (1).jpg" alt="Image 1">
                <p>Conference in Milan<br>
                    Ideal for Business Events<br>
                    <a href="learn_more_milan.html"><button>Learn more</button></a>
                </p>
            </div>
            <div>
                <img src="image/pexels-trung-nguyen-2959192 (1).jpg" alt="Image 2">
                <p>Wedding in Swiss Alps<br>
                    A Dream Wedding Destination<br>
                    <a href="learn_more_switzerland.html"><button>Learn More</button></a>
                </p>
            </div>
            <div>
                <img src="image/conference.png" alt="Image 3">
                <p>London Seminar<br>
                    Perfect for Professional Gatherings<br>
                    <a href="learn_more_london.html"><button>Learn More</button></a>
                </p>
            </div>
            <div>
                <img src="image/Shangri-La-ballroom-gala-dinner-A.jpg" alt="Image 4">
                <p>Paris Gala Dinner<br>
                    Elegance in the City of Love<br>
                    <a href="learn_more_paris.html"><button>Learn More</button></a>
                </p>
            </div>
            <div>
                <img src="image/meeting1.webp" alt="Image 5">
                <p>Toronto Expo<br>
                    Connecting Innovators<br>
                    <a href="learn_more_toronto.html">
                        <button>Learn More</button>
                    </a>
                </p>
            </div>

            <div>
                <img src="image/mahamaya-2013-ltx.jpg" alt="Image 6">
                <p>School get to gatherings<br>
                    Unleash Your Potential<br>
                    <a href="learn_more_dubai.html"><button>Learn More</button></a>
                </p>
            </div>
        </div>
        <hr>





        <section class="footer">
            <section class="Contact">
                <h2>Have a question or need assistance with your event planning? </h2><br>
                <h2>"Reach out to our dedicated team of experts who are here to provide you with exceptional support and
                    ensure your event journey is seamless from start to finish."</h2>
                <br>
                <p>We are here to assist you with any inquiries or assistance you may need regarding our event
                    management
                    services. Whether you have questions about event planning,
                    registration, venue selection, or any other event-related concerns, our dedicated support team is
                    ready
                    to help. We value your feedback, and your satisfaction is
                    our top priority.<br>

                    You can reach out to us through multiple channels for your convenience. If you prefer direct
                    communication, our customer service representatives are available
                    via phone during business hours. You can also send us an email with your query, and we will respond
                    promptly to provide the information you need.<br>

                    For your convenience, we have an online contact form where you can submit your questions or
                    concerns.
                    Simply fill out the required fields, and we will
                    get back to you as soon as possible.<br>

                    At our event management service, we strive to deliver exceptional customer service and ensure a
                    seamless
                    event planning experience for our valued clients.
                    We understand that every event is unique, and we are committed to tailoring our services to meet
                    your
                    specific needs. Your satisfaction and peace of mind
                    are of utmost importance to us.<br>

                    Feel free to get in touch with us today. We look forward to assisting you and making your event
                    planning
                    experience truly enjoyable.</p>
                <br><br><br>
                <a href="contact.html" class="vist-btn">Contact us</a>
                <Br>
            </section>


            <div class="container">
                <h1 class="heading">Message</h1>
                <br><br>
                <div class="profiles">
                    <div class="profile1">
                        <img src="image/as.png" class="profile1-img">
                        <h3 class="user-name">Palitha Kumara</h3>
                        <h5 class="position">CEO</h5>
                        <p><em>"RUBIK EVENT is a dedicated event planning company that aims to provide
                                an exceptional experience for organizing corporate conferences, weddings,
                                and charity galas. Their passion lies in turning visions into reality,
                                creating lasting moments, and crafting events that exceed expectations.
                                They appreciate choosing RUBIK EVENT as their trusted partner and are dedicated
                                to your satisfaction and success. Their website offers a range of
                                tools and services to help you create memorable and extraordinary events."</em><br><br>
                            Warm regards,,<br>
                            Kapila Perera,<br> CEO</p>
                    </div>
                    <div class="profile1">
                        <img src="image/Daco_5511364.png" class="profile1-img">
                        <h3 class="user-name">Kasun Perera</h3>
                        <h5 class="position">Administrator</h5>
                        <p><em>"As the Administrator of RUBIK EVENT, I want to extend my heartfelt gratitude
                                for choosing us as your event planning partner. Our top priority is to ensure that
                                your event planning experience is as seamless and stress-free as possible.
                                From the moment you start exploring our platform to the successful execution
                                of your event, our dedicated team is here to support you every step of the way.
                                Thank you for choosing RUBIK EVENT. We are honoured to be part of your event planning
                                journey and look forward to making your events truly extraordinary.</em><br><br>
                            Best regards,<br>
                            Kasun Chaminda, <br>Administrator</p>
                    </div>
                    <div class="profile1">
                        <img src="image/kindpng_2532351.png" class="profile1-img">
                        <h3 class="user-name">Hasini perera</h3>
                        <h5 class="position">Manager</h5>
                        <p><em>Welcome to RUBIK EVENT!It is both an honour and a privilege to have you with us.
                                As the Manager of our esteemed company,I am dedicated to
                                ensuring that your event planning experience is exceptional.
                                Our team, with their dedication and expertise, works tirelessly
                                to make sure your event planning journey is smooth, enjoyable,
                                and successful. We are here to provide you with the best tools,
                                advice, and services because your satisfaction is our ultimate goal.
                                Thank you for choosing RUBIK EVENT We are eager to be part of your
                                event planning journey and are committed to helping you make
                                your events truly outstanding.</em><br><br>
                            Sincerely,<br>
                            Hasini Perera,<br> Manager</p>
                    </div>
                </div>
            </div>
            <section>
                <div class="icon" align="center">
                    <hr>
                    <a><i class="fa-brands fa-facebook"></i></a>
                    <a><i class="fa-brands fa-youtube"></i></a>
                    <a><i class="fa-brands fa-twitter"></i></a>
                    <a><i class="fa-brands fa-instagram"></i></a>
                    <p>Rubik Event(SE_OOP_2023_S2_MLB_WD_G335_Online Event Planning System) © 2023-All Right Reserved
                    </p>
                </div>
            </section>

        </section>
    </body>

    </html>
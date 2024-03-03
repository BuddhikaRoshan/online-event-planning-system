<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://kit.fontawesome.com/fb70ce88c3.js" crossorigin="anonymous"></script>
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body {
                font-family: 'Poppins', sans-serif;
                margin: 0;
                padding: 0;
                background-image: linear-gradient(rgba(4, 9, 30, 0.7), rgba(4, 9, 30, 0.7)), url('image/credit-card-payment-buy-sell-products-service.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center;
            }

            .header {
                background-color: transparent;
                color: #fff;
                padding: 20px;
                text-align: center;

            }

            h2 {
                text-align: center;
            }

            h3 {
                text-align: center;
                color: black;
            }

            .navbar {
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .logo img {
                width: 100px;
                height: auto;
            }

            .nav-links a {
                margin: 0 20px;
                text-decoration: none;
                color: #fff;
                font-weight: bold;
                font-size: 18px;
            }

            .nav-links a:hover {
                text-decoration: underline;
            }



            .container {
                background-color: #f2f2f2;
                padding: 20px;
                border-radius: 5px;
                text-align: center;
                max-width: 500px;
                margin: 0 auto;
            }

            .col-50 {
                display: inline-block;
                width: 45%;
                margin: 10px;
                vertical-align: top;
                text-align: left;
            }


            label {
                font-weight: bold;
                margin-bottom: 10px;
                color: black;
            }


            input[type="text"] {
                width: 100%;
                padding: 10px;
                margin: 5px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
            }


            .icon-container {
                text-align: center;
                margin: 5PX;
            }

            .icon-container i {
                font-size: 30px;
                margin-right: 10px;
            }


            .btn {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-weight: bold;
                display: block;
                margin: 10px auto;
            }

            .btn:hover {
                background-color: #45a049;
            }

            section {
                margin-top: 10%;

                bottom: 0;
                left: 0;
                width: 100%;
                background-color: transparent;
                color: #000000;
                text-align: center;

            }

            .icon {
                text-align: center;
            }

            .icon a {
                font-size: 20px;
                margin: 0 10px;
                color: #fff;
                text-decoration: none;
            }

            .icon p {
                font-size: 14px;
                margin-top: 10px;
                color: white;
            }
        </style>
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

            <h2>Payment Gateway</h2>
            <div class="row">
                <div class="col-75">
                    <div class="container">
                        <form action="PaymentServelet" method="post">
                            <div class="col-50">
                                <h3>Payment</h3>
                                <label for="acceptedCards">Accepted Cards</label>
                                <div class="icon-container">
                                    <i class="fa fa-cc-visa" style="color: navy;"></i>
                                    <i class="fa fa-cc-amex" style="color: blue;"></i>
                                    <i class="fa fa-cc-mastercard" style="color: red;"></i>
                                    <i class="fa fa-cc-discover" style="color: orange;"></i>
                                </div>
                                <label for="cardname">Name on Card</label>
                                <input type="text" id="cardname" name="cardname" placeholder="Cardholder's Name">
                                <label for="cardnumber">Credit card number</label>
                                <input type="text" id="cardnumber" name="cardnumber" placeholder="1111-2222-3333-4444">
                                <label for="expmonth">Exp Month</label>
                                <input type="text" id="expmonth" name="expmonth" placeholder="September">
                                <div class="row">
                                    <div class="col-50">
                                        <label for="expyear">Exp Year</label>
                                        <input type="text" id="expyear" name="expyear" placeholder="2023">
                                    </div>
                                    <div class="col-50">
                                        <label for="cvv">CVV</label>
                                        <input type="text" id="cvv" name="cvv" placeholder="123">
                                    </div>
                                </div>
                            </div>
                            <input type="submit" name="submit" value="PAY NOW" class="btn">
                        </form>

                    </div>
                </div>
            </div>
        </header>
        <section>
            <div class="icon">

                <hr>
                <br>
                <div class="icon" align="center">

                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <p>Rubik Event (SE_OOP_2023_S2_MLB_WD_G335_Online Event Planning System) 2023 - All Rights
                        Reserved</p>
                </div>
            </div>
        </section>

    </body>

    </html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Login Page</title>
        <script src="https://kit.fontawesome.com/fb70ce88c3.js" crossorigin="anonymous"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            .bg-dark {
                background-color: rgba(0, 0, 0, .075) !important;
            }

            body {
                background-image: url(image/9142209.jpg);
                background-size: cover;
                background-repeat: no-repeat;
            }

            .logo {
                width: 100px;
                height: 100px;
                text-align: center;
                padding: 10px;
            }


            .logo img {
                max-width: 100%;
                height: 100%;
                border-radius: 5px;
            }

            .navbar-dark .navbar-nav .nav-link {
                color: white;
            }

            section {
                margin-top: 13%;
            }

            .icon .fa-brands {
                color: white;
                margin: 0 13px;
                cursor: pointer;
                padding: 18px 0;
                border-top: 0%;

            }

            h6 {
                color: white;

            }

            .bg-primary {
                background-color: #191970 !important;
            }

            .btn-primary {
                color: #fff;
                background-color: #191970;
                border-color: #191970;
            }
        </style>
    </head>

    <body class="bg-light">

        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-primary text-white">
                            <h4 class="mb-0">Login</h4>
                        </div>
                        <div class="card-body">
                            <!-- Your login form goes here -->
                            <form action="LoginServlet" method="post">
                                <div class="form-group">
                                    <label for="email">Email:</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password:</label>
                                    <input type="password" class="form-control" id="password" name="password" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Login</button>
                            </form>
                        </div>
                        <div class="card-footer text-center">
                            <p class="mb-0">Don't have an account? <a href="SignupView.jsp">Sign up here</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section>
            <div class="icon" align="center">

                <a><i class="fa-brands fa-facebook"></i></a>
                <a><i class="fa-brands fa-youtube"></i></a>
                <a><i class="fa-brands fa-twitter"></i></a>
                <a><i class="fa-brands fa-instagram"></i></a>
                <h6>Rubik Event(SE_OOP_2023_S2_MLB_WD_G335_Online Event Planning System) © 2023-All Right Reserved</h6>
            </div>
        </section>

        <!-- Include Bootstrap JS and Popper.js -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>

    </body>

    </html>
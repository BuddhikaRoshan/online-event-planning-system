<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Admin Home</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://kit.fontawesome.com/fb70ce88c3.js" crossorigin="anonymous"></script>
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
                margin-top: 22%;
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
        </style>
    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">


            <h1><a class="navbar-brand" href="#">Admin Dashboard</a></h1>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/EventPlaningSystem/profile"><i class="fa fa-fw fa-user"></i>My
                            Profile</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container mt-4">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Event Management</h5>
                            <p class="card-text">Manage events - Create, Edit, Delete</p>
                            <a href="/EventPlaningSystem/event" class="btn btn-primary">Go to Event Management</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Reservation Management</h5>
                            <p class="card-text">Manage reservations</p>
                            <a href="/EventPlaningSystem/reservation" class="btn btn-primary">Go to Reservation
                                Management</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Package Management</h5>
                            <p class="card-text">Manage packages - Create, Edit, Delete</p>
                            <a href="/EventPlaningSystem/package" class="btn btn-primary">Go to Package Management</a>
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

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    </body>

    </html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>User Profile</title>
        <script src="https://kit.fontawesome.com/fb70ce88c3.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <style>
            body {
                background-image: url('image/5079835.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-color: rgba(255, 255, 255, 0.5);

            }

            label {

                color: white;
            }

            h2 {
                color: white;
            }

            .table {
                color: white;
            }

            section {
                margin-top: 10%;
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

        <div class="container mt-4">
            <h2>User Profile</h2>

            <form action="<%= request.getContextPath() %>/profile?action=edit" method="post">

                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" value="${user.name}" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" class="form-control" id="email" name="email" value="${user.email}" readonly>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" class="form-control" id="password" name="password" value="${user.password}"
                        required>
                </div>
                <button type="submit" class="btn btn-primary">Update Profile</button>
            </form>

            <form action="<%= request.getContextPath() %>/profile?action=delete" method="post">
                <input type="hidden" name="action" value="delete">
                <button type="submit" class="btn btn-danger mt-2">Delete Account</button>
            </form>
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="models.Reservation" %>
        <%@ page import="java.util.List" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Reservation Management</title>
                <script src="https://kit.fontawesome.com/fb70ce88c3.js" crossorigin="anonymous"></script>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

                <style>
                    body {
                        background-image: url('image/5079835.jpg');
                        background-size: cover;
                        background-repeat: no-repeat;
                        background-color: rgba(255, 255, 255, 0.5);

                    }

                    h2 {
                        color: white;
                    }

                    .table {
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

                <div class="container mt-4">
                    <h2>Reservation Management</h2>

                    <!-- Display success or error messages -->

                    <!-- Display all reservations -->
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Reservation ID</th>
                                <th>Date</th>
                                <th>User Name</th>
                                <th>User Email</th>
                                <th>Item ID</th>
                                <th>Item Name</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% List<Reservation> reservations = (List<Reservation>)
                                    request.getAttribute("reservations");
                                    if (reservations != null) {
                                    for (Reservation reservation : reservations) { %>
                                    <tr>
                                        <td>
                                            <%= reservation.getReservationId() %>
                                        </td>
                                        <td>
                                            <%= reservation.getReservationDate() %>
                                        </td>
                                        <td>
                                            <%= reservation.getUserName() %>
                                        </td>
                                        <td>
                                            <%= reservation.getUserEmail() %>
                                        </td>
                                        <td>
                                            <%= reservation.getReservationItemId() %>
                                        </td>
                                        <td>
                                            <%= reservation.getReservedItemName() %>
                                        </td>
                                        <td>
                                            <!-- Edit button with data-reservation-id attribute -->
                                            <a href="#" class="btn btn-primary editReservationLink"
                                                data-reservation-id="<%= reservation.getReservationId() %>">Edit</a>
                                            <!-- Delete button with data-reservation-id attribute -->
                                            <a href="#" class="btn btn-danger deleteReservationLink"
                                                data-reservation-id="<%= reservation.getReservationId() %>">Delete</a>
                                        </td>
                                    </tr>
                                    <%} } %>
                        </tbody>
                    </table>
                    <!-- Add a link to create a new reservation -->
                    <a href="#" id="addReservationLink" class="btn btn-success" data-action="create">Create New
                        Reservation</a>

                </div>

                <!-- Add Reservation Modal -->
                <div class="modal fade" id="addReservationModal" tabindex="-1" role="dialog"
                    aria-labelledby="addReservationModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="addReservationModalLabel">Add Reservation</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <!-- Add Reservation Form with client-side validation -->
                                <form action="<%= request.getContextPath() %>/reservation?action=create" method="post"
                                    id="addReservationForm">
                                    <div class="form-group">
                                        <label for="addUserName">User Name:</label>
                                        <input type="text" class="form-control" id="addUserName" name="userName"
                                            required>
                                    </div>
                                    <div class="form-group">
                                        <label for="addUserEmail">User Email:</label>
                                        <input type="email" class="form-control" id="addUserEmail" name="userEmail"
                                            required>
                                    </div>
                                    <div class="form-group">
                                        <label for="addReservationDate">Reservation Date:</label>
                                        <input type="date" class="form-control" id="addReservationDate"
                                            name="reservationDate" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="addReservationItemId">Reservation Item ID:</label>
                                        <input type="number" class="form-control" id="addReservationItemId"
                                            name="reservationItemId" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="addReservedItemName">Reserved Item Name:</label>
                                        <input type="text" class="form-control" id="addReservedItemName"
                                            name="reservedItemName" required>
                                    </div>
                                    <!-- Add other form fields as needed -->
                                    <button type="submit" class="btn btn-primary">Add Reservation</button>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- Edit Reservation Modal -->
                <div class="modal fade" id="editReservationModal" tabindex="-1" role="dialog"
                    aria-labelledby="editReservationModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="editReservationModalLabel">Edit Reservation</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <!-- Edit Reservation Form with client-side validation -->
                                <form action="<%= request.getContextPath() %>/reservation?action=update" method="post"
                                    id="editReservationForm">
                                    <div class="form-group">
                                        <label for="editUserName">User Name:</label>
                                        <input type="text" class="form-control" id="editUserName" name="userName"
                                            required>
                                    </div>
                                    <div class="form-group">
                                        <label for="editUserEmail">User Email:</label>
                                        <input type="email" class="form-control" id="editUserEmail" name="userEmail"
                                            required>
                                    </div>
                                    <div class="form-group">
                                        <label for="editReservationDate">Reservation Date:</label>
                                        <input type="date" class="form-control" id="editReservationDate"
                                            name="reservationDate" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="editReservationItemId">Reservation Item ID:</label>
                                        <input type="number" class="form-control" id="editReservationItemId"
                                            name="reservationItemId" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="editReservedItemName">Reserved Item Name:</label>
                                        <input type="text" class="form-control" id="editReservedItemName"
                                            name="reservedItemName" required>
                                    </div>
                                    <!-- Add other form fields as needed -->
                                    <button type="submit" class="btn btn-primary">Save Changes</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Delete Confirmation Modal -->
                <div class="modal fade" id="deleteConfirmationModal" tabindex="-1" role="dialog"
                    aria-labelledby="deleteConfirmationModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="deleteConfirmationModalLabel">Confirm Deletion</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Are you sure you want to delete this reservation?
                            </div>
                            <div class="modal-footer">
                                <a href="#" id="deleteReservationLink" class="btn btn-danger">Delete</a>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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
                        <h6>Rubik Event(SE_OOP_2023_S2_MLB_WD_G335_Online Event Planning System) © 2023-All Right
                            Reserved</h6>
                    </div>
                </section>

                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


                <script>
                    $(document).ready(function () {
                        // Show add reservation modal on click
                        $('#addReservationLink').click(function () {
                            $('#addReservationModal').modal('show');
                        });

                        // Show edit reservation modal on click
                        $('.editReservationLink').click(function () {
                            var reservationId = $(this).data('reservation-id');
                            // Load reservation data using AJAX and populate the edit modal
                            loadEditData(reservationId);
                        });

                        // Show delete confirmation modal on click
                        $('.deleteReservationLink').click(function () {
                            var reservationId = $(this).data('reservation-id');
                            // Set the delete link href dynamically based on reservationId
                            $('#deleteReservationLink').attr('href', '<%= request.getContextPath() %>/reservation?action=delete&id=' + reservationId);
                            $('#deleteConfirmationModal').modal('show');
                        });

                        // Client-side validation for Add Reservation Form
                        $('#addReservationForm').submit(function (event) {
                            var isValid = true;
                            // Example: Add validation logic for each field
                            if ($('#addUserName').val().trim() === '') {
                                alert('User Name is required.');
                                isValid = false;
                            }
                            // Add other validation rules as needed

                            if (!isValid) {
                                event.preventDefault(); // Prevent form submission
                            }
                        });

                        // Client-side validation for Edit Reservation Form
                        $('#editReservationForm').submit(function (event) {
                            var isValid = true;
                            // Example: Add validation logic for each field
                            if ($('#editUserName').val().trim() === '') {
                                alert('User Name is required.');
                                isValid = false;
                            }
                            // Add other validation rules as needed

                            if (!isValid) {
                                event.preventDefault(); // Prevent form submission
                            }
                        });

                        function loadEditData(reservationId) {
                            // Make an AJAX request to fetch data for the selected reservation
                            fetch('<%= request.getContextPath() %>/reservation?action=edit&id=' + reservationId, {
                                method: 'GET',
                                headers: {
                                    'Content-Type': 'application/json'
                                },
                            })
                                .then(response => response.json())
                                .then(data => {
                                    // Populate the fields in the edit modal with the fetched data
                                    $('#editUserName').val(data.userName);
                                    $('#editUserEmail').val(data.userEmail);
                                    $('#editReservationDate').val(data.reservationDate);
                                    $('#editReservationItemId').val(data.reservationItemId);
                                    $('#editReservedItemName').val(data.reservedItemName);

                                    // Show the edit modal
                                    $('#editReservationModal').modal('show');
                                })
                                .catch(error => {
                                    // Handle errors
                                    console.error('Failed to fetch data for reservation ID: ' + reservationId);
                                });

                        }
                    });
                </script>

            </body>

            </html>
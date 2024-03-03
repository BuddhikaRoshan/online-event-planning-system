<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.List" %>
        <%@ page import="models.Event" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Event Management</title>
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
                        margin-top: 20%;
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
                    <h2>Event Management</h2>

                    <!-- Display success or error messages -->

                    <!-- Display all events -->
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Event ID</th>
                                <th>Name</th>
                                <th>Date</th>
                                <th>Description</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                           <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tbody>
    <c:forEach var="event" items="${events}">
        <tr>
            <td>${event.id}</td>
            <td>${event.name}</td>
            <td>${event.eventDate}</td>
            <td>${event.description}</td>
            <td>
                <a href="#" class="btn btn-primary editEventLink" data-event-id="${event.id}">Edit</a>
                &nbsp;
                <a href="#" class="btn btn-danger deleteEventLink" data-event-id="${event.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</tbody>

                    </table>
                    <!-- Add a link to create a new event -->
                    <a href="#" id="addEventLink" class="btn btn-success" data-action="create">Create New Event</a>

                </div>

                <!-- Add Event Modal -->
                <div class="modal fade" id="addEventModal" tabindex="-1" role="dialog"
                    aria-labelledby="addEventModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="addEventModalLabel">Add Event</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <!-- Add Event Form with client-side validation -->
                                <form action="<%= request.getContextPath() %>/event?action=create" method="post"
                                    id="addEventForm">
                                    <div class="form-group">
                                        <label for="addEventName">Event Name:</label>
                                        <input type="text" class="form-control" id="addEventName" name="name" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="addEventDate">Event Date:</label>
                                        <input type="date" class="form-control" id="addEventDate" name="eventDate"
                                            required>
                                    </div>
                                    <div class="form-group">
                                        <label for="addEventDescription">Event Description:</label>
                                        <input type="text" class="form-control" id="addEventDescription"
                                            name="description" required>
                                    </div>
                                    <!-- Add other form fields as needed -->
                                    <button type="submit" class="btn btn-primary">Add Event</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Edit Event Modal -->
                <div class="modal fade" id="editEventModal" tabindex="-1" role="dialog"
                    aria-labelledby="editEventModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="editEventModalLabel">Edit Event</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <!-- Edit Event Form with client-side validation -->
                                <form action="<%= request.getContextPath() %>/event?action=update" method="post"
                                    id="editEventForm">
                                    <input type="hidden" id="editEventId" name="id">
                                    <div class="form-group">
                                        <label for="editEventName">Event Name:</label>
                                        <input type="text" class="form-control" id="editEventName" name="name" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="editEventDate">Event Date:</label>
                                        <input type="date" class="form-control" id="editEventDate" name="eventDate"
                                            required>
                                    </div>
                                    <div class="form-group">
                                        <label for="editEventDescription">Event Description:</label>
                                        <input type="text" class="form-control" id="editEventDescription"
                                            name="description" required>
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
                                Are you sure you want to delete this event?
                            </div>
                            <div class="modal-footer">
                                <a href="#" id="deleteEventLink" class="btn btn-danger">Delete</a>
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
                        // Show add event modal on click
                        $('#addEventLink').click(function () {
                            $('#addEventModal').modal('show');
                        });

                        // Show edit event modal on click
                        $('.editEventLink').click(function () {
                            var eventId = $(this).data('event-id');
                            // Load event data using AJAX and populate the edit modal
                            loadEditData(eventId);
                        });

                        // Show delete confirmation modal on click
                        $('.deleteEventLink').click(function () {
                            var eventId = $(this).data('event-id');
                            // Set the delete link href dynamically based on eventId
                            $('#deleteEventLink').attr('href', '<%= request.getContextPath() %>/event?action=delete&id=' + eventId);
                            $('#deleteConfirmationModal').modal('show');
                        });

                        // Client-side validation for Add Event Form
                        $('#addEventForm').submit(function (event) {
                            var isValid = true;
                            // Example: Add validation logic for each field
                            if ($('#addEventName').val().trim() === '') {
                                alert('Event Name is required.');
                                isValid = false;
                            }
                            // Add other validation rules as needed

                            if (!isValid) {
                                event.preventDefault(); // Prevent form submission
                            }
                        });

                        // Client-side validation for Edit Event Form
                        $('#editEventForm').submit(function (event) {
                            var isValid = true;
                            // Example: Add validation logic for each field
                            if ($('#editEventName').val().trim() === '') {
                                alert('Event Name is required.');
                                isValid = false;
                            }
                            // Add other validation rules as needed

                            if (!isValid) {
                                event.preventDefault(); // Prevent form submission
                            }
                        });

                        function loadEditData(eventId) {
                            // Make an AJAX request to fetch data for the selected event
                            fetch('<%= request.getContextPath() %>/event?action=edit&id=' + eventId, {
                                method: 'GET',
                                headers: {
                                    'Content-Type': 'application/json'
                                },
                            })
                                .then(response => response.json())
                                .then(data => {
                                    // Populate the fields in the edit modal with the fetched data
                                    $('#editEventId').val(eventId);
                                    $('#editEventName').val(data.name);
                                    $('#editEventDate').val(data.eventDate);
                                    $('#editEventDescription').val(data.description);

                                    // Show the edit modal
                                    $('#editEventModal').modal('show');
                                })
                                .catch(error => {
                                    // Handle errors
                                    console.error('Failed to fetch data for event ID: ' + eventId);
                                });
                        }
                    });
                </script>

            </body>

            </html>
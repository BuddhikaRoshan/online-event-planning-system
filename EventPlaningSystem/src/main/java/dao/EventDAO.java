package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Event;

public class EventDAO {
    private Connection connection;

    public EventDAO() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_plan_db", "root", "Rushan@123");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Event> getAllEvents() {
        List<Event> events = new ArrayList<>();

        try {
            String query = "SELECT * FROM events";
            try (PreparedStatement statement = connection.prepareStatement(query);
                 ResultSet resultSet = statement.executeQuery()) {

                while (resultSet.next()) {
                    Event event = new Event();
                    event.setId(resultSet.getInt("id"));
                    event.setName(resultSet.getString("name"));
                    event.setEventDate(resultSet.getDate("event_date"));
                    event.setDescription(resultSet.getString("description"));

                    events.add(event);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return events;
    }

    public Event getEventById(int eventId) {
        Event event = null;

        try {
            String query = "SELECT * FROM events WHERE id=?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setInt(1, eventId);

                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        event = new Event();
                        event.setId(resultSet.getInt("id"));
                        event.setName(resultSet.getString("name"));
                        event.setEventDate(resultSet.getDate("event_date"));
                        event.setDescription(resultSet.getString("description"));
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return event;
    }

    public boolean addEvent(Event event) {
        try {
            String query = "INSERT INTO events (name, event_date, description) VALUES (?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setString(1, event.getName());
                statement.setDate(2, new java.sql.Date(event.getEventDate().getTime()));
                statement.setString(3, event.getDescription());

                return statement.executeUpdate() > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateEvent(Event event) {
        try {
            String query = "UPDATE events SET name=?, event_date=?, description=? WHERE id=?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setString(1, event.getName());
                statement.setDate(2, new java.sql.Date(event.getEventDate().getTime()));
                statement.setString(3, event.getDescription());
                statement.setInt(4, event.getId());

                return statement.executeUpdate() > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteEvent(int eventId) {
        try {
            String query = "DELETE FROM events WHERE id=?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setInt(1, eventId);

                return statement.executeUpdate() > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}

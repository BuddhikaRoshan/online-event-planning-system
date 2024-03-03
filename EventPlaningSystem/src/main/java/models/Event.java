package models;

import java.util.Date;

public class Event {
    private int id;
    private String name;
    private Date eventDate;
    private String description;

    // Constructors, getters, and setters

    public Event() {
    }

    public Event(int id, String name, Date eventDate, String description) {
        this.id = id;
        this.name = name;
        this.eventDate = eventDate;
        this.description = description;
    }

    // Getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getEventDate() {
        return eventDate;
    }

    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Event{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", eventDate=" + eventDate +
                ", description='" + description + '\'' +
                '}';
    }
}

package services;

import java.util.List;

import dao.EventDAO;
import models.Event;

public class EventService {
    private EventDAO eventDAO = new EventDAO();

    public List<Event> getAllEvents() {
        return eventDAO.getAllEvents();
    }

    public Event getEventById(int eventId) {
        return eventDAO.getEventById(eventId);
    }

    public boolean addEvent(Event event) {
        return eventDAO.addEvent(event);
    }

    public boolean updateEvent(Event event) {
        return eventDAO.updateEvent(event);
    }

    public boolean deleteEvent(int eventId) {
        return eventDAO.deleteEvent(eventId);
    }
}

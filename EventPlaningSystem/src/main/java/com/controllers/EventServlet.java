package com.controllers;
 
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import jakarta.servlet.http.*;
import models.Event;
import services.EventService;

public class EventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<Event> events;
    private EventService eventService = new EventService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");

        try {
            if (action == null) {

                events = eventService.getAllEvents();
                System.out.println("events length " + events.size());
                request.setAttribute("events", events);
                try {
                    request.getRequestDispatcher("EventView.jsp").forward(request, response);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (action.equals("create")) {
                // Show form to create a new event
                request.getRequestDispatcher("createEvent.jsp").forward(request, response);
            } else if (action.equals("edit")) {
                int eventId = Integer.parseInt(request.getParameter("id"));

                Event event = eventService.getEventById(eventId);

                Map<String, Object> eventData = new HashMap<>();
                eventData.put("name", event.getName());
                eventData.put("eventDate", event.getEventDate().toString());
                eventData.put("description", event.getDescription());

                // Convert Map to JSON using simple string concatenation (you may want to use a library for this in production)
                String json = "{";
                for (Map.Entry<String, Object> entry : eventData.entrySet()) {
                    json += "\"" + entry.getKey() + "\":\"" + entry.getValue() + "\",";
                }
                json = json.substring(0, json.length() - 1) + "}"; // Remove the trailing comma and add the closing brace

                // Write JSON response
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(json);
            } else if (action.equals("delete")) {
                // Delete an existing event
                int eventId = Integer.parseInt(request.getParameter("id"));
                boolean success = eventService.deleteEvent(eventId);

                if (success) {
                    response.sendRedirect(request.getContextPath() + "/event");
                } else {
                    response.getWriter().println("Failed to delete event. Please try again.");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred. Please try again.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");
    
        try {
            if (action.equals("create")) {
                // Create a new event
                Event event = createEventFromRequest(request);

                boolean success = eventService.addEvent(event);

                if (success) {
                    response.sendRedirect(request.getContextPath() + "/event");
                } else {
                    response.getWriter().println("Failed to create event. Please try again.");
                }
            } else if (action.equals("update")) {
                // Update an existing event
                Event event = createEventFromRequest(request);
			
                boolean success = eventService.updateEvent(event);

                if (success) {
                    response.sendRedirect(request.getContextPath() + "/event");
                } else {
                    response.getWriter().println("Failed to update event. Please try again.");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred. Please try again.");
        }
    }

    // Helper method to create an Event object from the request parameters
    private Event createEventFromRequest(HttpServletRequest request) {
        Event event = new Event();
        if(request.getParameter("id")!=null) {
        	event.setId(Integer.parseInt(request.getParameter("id")));
        }
        // Assuming your Event class has setters for all these fields
        event.setName(request.getParameter("name"));
        
        // Convert the date string to java.util.Date
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date eventDate = dateFormat.parse(request.getParameter("eventDate"));
            event.setEventDate(eventDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        // Convert other fields accordingly
        event.setDescription(request.getParameter("description"));

        return event;
    }
}

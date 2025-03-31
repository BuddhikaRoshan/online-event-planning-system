# Event Planning System

## Overview
The **Event Planning System** is a Java-based web application designed using the **MVC (Model-View-Controller) architecture** to help users plan and manage events efficiently. It provides functionalities for user management, event management, package selection, and reservation management.

## Features
- **User Management:** Register, log in, update profile, and manage user roles.
- **Event Management:** Create, update, and delete events.
- **Package Management:** Browse and select event packages.
- **Reservation Management:** Book and manage event reservations.
- **Admin Panel:** Manage users, events, and reservations.

## Technologies Used
- **Frontend:** JSP, HTML, CSS, JavaScript
- **Backend:** Java (Servlets, JSP)
- **Framework:** Java MVC architecture
- **Database:** MySQL
- **Server:** Apache Tomcat

## Installation Guide
1. Clone the repository or download the source code.
2. Install and configure **Apache Tomcat** server.
3. Set up a **MySQL** database and import the provided `database.sql` file.
4. Configure database connection in `dbConfig.java`:
   ```java
   public class DBConfig {
       private static final String URL = "jdbc:mysql://localhost:3306/event_planning";
       private static final String USER = "root";
       private static final String PASSWORD = "";

       public static Connection getConnection() throws SQLException {
           return DriverManager.getConnection(URL, USER, PASSWORD);
       }
   }
   ```
5. Deploy the project on **Apache Tomcat** and start the server.
6. Access the application via `http://localhost:8080/event-planning/`.

## Usage
1. **User Registration/Login:** Create an account and log in.
2. **Browse Events & Packages:** View available events and packages.
3. **Make a Reservation:** Select an event package and book a reservation.
4. **Admin Management:** Manage users, events, and reservations from the admin panel.


## Future Enhancements
- Implement **payment integration** for online bookings.
- Add **email notifications** for reservations.
- Improve **UI/UX design** with a responsive layout.
- Introduce **event analytics and reporting**.

## License
This project is open-source and available for modification under the **MIT License**.

## Contact
For any inquiries or issues, feel free to contact:
- **Developer:** Buddhika
- **Email:** buddhikaroshanofficial@gmail.com



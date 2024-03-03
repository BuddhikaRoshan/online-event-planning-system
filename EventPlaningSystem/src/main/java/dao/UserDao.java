package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import models.UserModel;

public class UserDao {
    private Connection connection;

    public UserDao() {
        // Initialize your database connection (Assuming you have a ConnectionManager class)
        try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       try {
    	   System.out.println("herer");
		this.connection  = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/event_plan_db","root","Rushan@123");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    }

    public Map<String, String> validateUser(String email, String password) {
        // Logic to validate user for login
        String query = "SELECT * FROM users WHERE email = ? AND password = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()) {
            	String userEmail = resultSet.getString("email");
                String userRole = resultSet.getString("role");

                // Create a Map to hold the email and role
                Map<String, String> userMap = new HashMap<>();
                userMap.put("email", userEmail);
                userMap.put("role", userRole);
                return userMap; 
               
            }
            return null; // Returns true if user is found
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean createUser(UserModel user) {
        // Logic to create a new user
        String query = "INSERT INTO users (email, name, password) VALUES (?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getName());
            preparedStatement.setString(3, user.getPassword());
            return preparedStatement.executeUpdate() > 0; // Returns true if insertion is successful
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateUser(UserModel user) {
        // Logic to update user information
        String query = "UPDATE users SET name = ?, password = ? WHERE email = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getEmail());
            return preparedStatement.executeUpdate() > 0; // Returns true if update is successful
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteUser(String email) {
        // Logic to delete user
    	System.out.println("delete user callin email is "+email);
        String query = "DELETE FROM users WHERE email = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, email);
            return preparedStatement.executeUpdate() > 0; // Returns true if deletion is successful
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public UserModel getUserByEmail(String email) {
        // Logic to retrieve user by email
    	
        String query = "SELECT * FROM users WHERE email = ?";
        
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                String name = resultSet.getString("name");
                String password = resultSet.getString("password");
                return new UserModel(email, name, password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null; // Return null if user not found
    }
}

package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Payment {

	// Insert payment details into the database
	public static boolean insertCardDetails(String cardname, String cardnumber, String expmonth, String expyear, String cvv) {
		
		boolean isSuccess = false;
		
		try {
			// Load the MySQL JDBC driver and establish a database connection
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_plan_db", "root", "Rushan@123");
		
			// Create a statement for executing SQL queries
			Statement stmt = connection.createStatement();
			
			// Define the SQL query to insert payment details into the 'Payment' table
			String sql = "insert into Payment values ('0', '" + cardname + "', '" + cardnumber + "', '" + expmonth + "', '" + expyear + "', '" + cvv + "')";	
			
			// Execute the SQL query
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				// If the insertion is successful, set isSuccess to true
				isSuccess = true;
			} else {
				// If the insertion fails, set isSuccess to false
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

	// Update payment details in the database
	public static boolean updateCardDetails(String id, String cardname, String cardnumber, String expmonth, String expyear, String cvv) {
		boolean isSuccess = false;
	
		try {
			// Load the MySQL JDBC driver and establish a database connection
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_plan_db", "root", "Rushan@123");
		
			// Create a statement for executing SQL queries
			Statement stmt = connection.createStatement();
			
			// Define the SQL query to update payment details in the 'Payment' table
			String sql = "update Payment set cardname = '" + cardname + "', cardnumber = '" + cardnumber + "', expmonth = '" + expmonth + "', expyear = '" + expyear + "', cvv = '" + cvv + "' where id = '" + id + "' ";	
			
			// Execute the SQL query
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				// If the update is successful, set isSuccess to true
				isSuccess = true;
			} else {
				// If the update fails, set isSuccess to false
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}

package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Package;

public class PackagesDao {
    private Connection connection;

    public PackagesDao() {
    	 try {
             Class.forName("com.mysql.cj.jdbc.Driver");
         	this.connection  = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/event_plan_db","root","Rushan@123");
         } catch (ClassNotFoundException | SQLException e) {
             e.printStackTrace();
         }
    }

    public List<Package> getAllPackages() {
        List<Package> packages = new ArrayList<>();

        try {
            String query = "SELECT * FROM packages";
            try (PreparedStatement statement = connection.prepareStatement(query);
                 ResultSet resultSet = statement.executeQuery()) {

                while (resultSet.next()) {
                    Package pkg = new Package();
                    pkg.setId(resultSet.getInt("id"));
                    pkg.setName(resultSet.getString("name"));
                    pkg.setPrice(resultSet.getDouble("price"));

                    packages.add(pkg);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return packages;
    }

    public Package getPackageById(int id) {
        Package pkg = null;

        try {
            String query = "SELECT * FROM packages WHERE id=?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setInt(1, id);

                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        pkg = new Package();
                        pkg.setId(resultSet.getInt("id"));
                        pkg.setName(resultSet.getString("name"));
                        pkg.setPrice(resultSet.getDouble("price"));
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pkg;
    }

    public boolean addPackage(Package pkg) {
        try {
            String query = "INSERT INTO packages (name, price) VALUES (?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setString(1, pkg.getName());
                statement.setDouble(2, pkg.getPrice());

                return statement.executeUpdate() > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updatePackage(Package pkg) {
        try {
            String query = "UPDATE packages SET name=?, price=? WHERE id=?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setString(1, pkg.getName());
                statement.setDouble(2, pkg.getPrice());
                statement.setInt(3, pkg.getId());

                return statement.executeUpdate() > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deletePackage(int id) {
        try {
            String query = "DELETE FROM packages WHERE id=?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setInt(1, id);

                return statement.executeUpdate() > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}

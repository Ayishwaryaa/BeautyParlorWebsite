package com.beautyparlor;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DatabaseConnection {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/beauty_parlor_website";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "Ayishu@123";

    static {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
    }

    public static List<Service> getServices() {
        List<Service> services = new ArrayList<>();
        String query = "SELECT * FROM services";

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Service service = new Service();
                service.setId(resultSet.getInt("service_id"));
                service.setName(resultSet.getString("service_name"));
                service.setDescription(resultSet.getString("description"));
                service.setDuration(resultSet.getString("duration"));
                service.setPrice(resultSet.getDouble("price"));
                service.setImageUrl(resultSet.getString("image_url"));
                services.add(service);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return services;
    }
}

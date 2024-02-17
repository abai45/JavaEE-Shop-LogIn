package Classes;

import java.sql.*;
import java.util.ArrayList;

public class DBManagerShop {
    private static Connection connection;
    static {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "1234");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static ArrayList<Items> getItems() {
        ArrayList<Items> items = new ArrayList<>();
        try {
            PreparedStatement stmt = connection.prepareStatement("SELECT * FROM items");
            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()) {
                Items item = new Items();
                item.setId(resultSet.getLong("id"));
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));
                items.add(item);
            }
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return items;
    }

}

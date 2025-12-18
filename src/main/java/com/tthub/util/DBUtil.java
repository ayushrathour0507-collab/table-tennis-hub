package com.tthub.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            return DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/table_tennis_hub?useSSL=false&serverTimezone=UTC",
                "root",
                "Ayush@12"
            );

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

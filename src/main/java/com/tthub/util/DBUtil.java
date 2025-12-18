package com.tthub.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {

    public static Connection getConnection() {
        try {
            Class.forName("org.postgresql.Driver");

            // Neon DB (Postgres) connection
            // URL derived from: postgresql://neondb_owner:***@ep-bold-morning-.../neondb?sslmode=require&channel_binding=require
            return DriverManager.getConnection(
                "jdbc:postgresql://ep-bold-morning-a4439zlt-pooler.us-east-1.aws.neon.tech:5432/neondb?sslmode=require&channel_binding=require",
                "neondb_owner",
                "npg_5j7WVEMJdxtl"
            );

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}

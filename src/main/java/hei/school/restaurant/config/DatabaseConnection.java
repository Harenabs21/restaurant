package hei.school.restaurant.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@Configuration
public class DatabaseConnection {
    private final static String DB_URL = System.getenv("DB_URL");
    private final static String DB_USERNAME = System.getenv("DB_USERNAME");
    private final static String DB_PASSWORD = System.getenv("DB_PASSWORD");

    @Bean
    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
    }
}

package com.company.servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class userDaoImpl implements userDao {

	@Override
	public boolean addUser(User user) {
		
		 String query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

	        try (Connection connection = DBUtil.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
	        	 
	            preparedStatement.setString(1, user.getUsername());
	            preparedStatement.setString(2, user.getEmail());
	            preparedStatement.setString(3, user.getPassword());

	            int rowsAffected = preparedStatement.executeUpdate();

	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	}
	}

	@Override
	public boolean isvaliduser(String email, String password) {
		 
		 String query = "SELECT * FROM users WHERE email = ? AND password = ?";
   	 try (Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(query)) {

           preparedStatement.setString(1, email);
           preparedStatement.setString(2, password);

           ResultSet resultSet = preparedStatement.executeQuery();

           return resultSet.next();
       } catch (SQLException e) {
           e.printStackTrace();
           return false;
       }
	}

}

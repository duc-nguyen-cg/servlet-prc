package com.codegym.dao;

import com.codegym.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO implements IUserDAO{

    private static final String SELECT_All_USERS = "select * from users;";
    public static final String SELECT_USER_BY_ID = "select * from users where id = ?;";
    public static final String INSERT_USER = "insert into users"+"(name,email,country) values"+"(?,?,?);";
    public static final String UPDATE_USER_BY_ID = "update users set name = ?, email = ?, country = ? where id = ?;";
    public static final String DELETE_USER_BY_ID = "delete from users where id = ?";

    @Override
    public List<User> selectAllUsers() {
        List<User> users = new ArrayList<>();
        //1.Connect
        Connection connection = SQLConnection.getConnection();
        try {
            //2.Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_All_USERS);
            System.out.println(preparedStatement);
            //3.Execute query
            ResultSet rs = preparedStatement.executeQuery();
            //4.Put ResultSet into ArrayList
            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                users.add(new User(id, name, email, country));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }


    @Override
    public User selectUser(int id) {
        User user = null;
        //1. Connect to MySQL
        Connection connection = SQLConnection.getConnection();
        try {
            //2. Create a statement
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);
            preparedStatement.setInt(1,id);
            System.out.println(preparedStatement);
            //3. Execute query
            ResultSet rs = preparedStatement.executeQuery();

            //4.Put ResultSet into an Object
            while( rs.next()){
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }


    @Override
    public void insertUser(User user){
        //1.Connect
        Connection connection = SQLConnection.getConnection();
        int rowInserted = 0;
        try {
            //2. Create a statement
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            System.out.println(preparedStatement);

            //3. Execute query
            rowInserted = preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        System.out.println(rowInserted +" row(s) were inserted");
    }


    @Override
    public boolean updateUser(User user) {
        int rowUpdated = 0;

        Connection connection = SQLConnection.getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER_BY_ID);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            preparedStatement.setInt(4, user.getId());

            rowUpdated = preparedStatement.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowUpdated > 0;
    }

    @Override
    public boolean deleteUser(int id) {
        int rowDeleted = 0;
        Connection connection = SQLConnection.getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER_BY_ID);
            preparedStatement.setInt(1, id);

            rowDeleted = preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowDeleted > 0;
    }
}

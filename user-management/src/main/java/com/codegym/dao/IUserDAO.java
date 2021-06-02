package com.codegym.dao;

import com.codegym.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    List<User> selectAllUsers();

    User selectUser(int id);

    void insertUser(User user);

    boolean updateUser(User user);

    boolean deleteUser(int id);

    List<User> sortById();

    List<User> sortByName();

    List<User> searchByCountry(String country);

}

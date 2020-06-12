/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techblock.dao;

import com.techblock.entities.Post;
import com.techblock.entities.User;
import com.techblock.helpers.myConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author princ
 */
public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

//    METHODS TO INSERT DATA
    public Boolean SaveUser(User user) {
        boolean result = false;
        try {
            String s = "insert into users(Name, Username, Email, User_PW, About) VALUES (?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(s);
            pst.setString(1, user.getName());
            pst.setString(2, user.getUsername());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getPassword());
            pst.setString(5, user.getAbout());
            pst.executeUpdate();
            result = true;
        } catch (Exception e) {
        }
        return result;
    }

    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        try {
            String s = "select * from users where email=? and User_PW =?";
            PreparedStatement pst = con.prepareStatement(s);
            pst.setString(1, email);
            pst.setString(2, password);
            ResultSet resultSet = pst.executeQuery();

            if (resultSet.next()) {

                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("Name"));
                user.setUsername(resultSet.getString("Username"));
                user.setPassword(resultSet.getString("User_PW"));
                user.setEmail(resultSet.getString("Email"));
                user.setAbout(resultSet.getString("About"));
                user.setTimestamp(resultSet.getTimestamp("Reg_Date"));
                user.setProfile(resultSet.getString("profile"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public boolean updateUser(User user) {
        boolean result = false;
        try {

            String s = "update users set name=?, username=?, email=?, user_pw=?, About=? where id=?";

            PreparedStatement pst = myConnection.getConnection().prepareStatement(s);
            pst.setString(1, user.getName());
            pst.setString(2, user.getUsername());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getPassword());
            pst.setString(5, user.getAbout());
//            pst.setString(6, user.getProfile());
            pst.setInt(6, user.getId());
            pst.executeUpdate();
            result = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public User getUserById(int id) {
        User user = null;
        try {
            String s = "select * from users where id=?";
            PreparedStatement pst = con.prepareStatement(s);
            pst.setInt(1, id);
            ResultSet resultSet = pst.executeQuery();

            if (resultSet.next()) {

                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("Name"));
                user.setUsername(resultSet.getString("Username"));
                user.setEmail(resultSet.getString("Email"));
                user.setAbout(resultSet.getString("About"));
                user.setTimestamp(resultSet.getTimestamp("Reg_Date"));
                user.setProfile(resultSet.getString("profile"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    
    public User getUserByName(String name) {
        User user = null;
        try {
            String s = "select * from users where NAME=?";
            PreparedStatement pst = con.prepareStatement(s);
            pst.setString(1, name);
            ResultSet resultSet = pst.executeQuery();

            if (resultSet.next()) {

                user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("Name"));
                user.setUsername(resultSet.getString("Username"));
                user.setEmail(resultSet.getString("Email"));
                user.setAbout(resultSet.getString("About"));
                user.setTimestamp(resultSet.getTimestamp("Reg_Date"));
                user.setProfile(resultSet.getString("profile"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    

}

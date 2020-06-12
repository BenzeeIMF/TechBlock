/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techblock.entities;

import java.sql.Timestamp;


public class User {

    private int id;
    private String name;
    private String username;
    private String email;
    private String password;
    private String about;
    private Timestamp timestamp;
    private String profile;

    
//    CONSTRUCTORS 
    
     public User(String name, String username, String email, String password, String about) {
        this.name = name;
        this.username = username;
        this.email = email;
        this.password = password;
        this.about = about;
    }

    public User() {
    }

    public User(int id, String name, String username, String email, String password, String about, Timestamp timestamp) {
        this.id = id;
        this.name = name;
        this.username = username;
        this.email = email;
        this.password = password;
        this.about = about;
        this.timestamp = timestamp;
    }
    
//    GETTERS AND SETTERS
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

}

package com.techblock.helpers;

import java.sql.Connection;
import java.sql.DriverManager;

public class myConnection {

   private static Connection con;

   public    static Connection getConnection() {
        try {

            if (con == null) {
               Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/TechBlock", "root", "");

            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return con;
    }

}

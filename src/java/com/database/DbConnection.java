/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author JP9
 */
public class DbConnection {
    public static Connection getConnection()
    {
        Connection con = null;
        try{
             Class.forName("com.mysql.jdbc.Driver");
             //con = DriverManager.getConnection("jdbc:mysql://mydb-instance.cuis34udkkqx.us-east-1.rds.amazonaws.com:3306/buspass?characterEncoding=utf8", "admin", "Swetha1234");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/buspass", "root", "root");
            System.out.println("connet");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}

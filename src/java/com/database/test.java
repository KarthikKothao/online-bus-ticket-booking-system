/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import java.sql.Connection;

/**
 *
 * @author Lenovo
 */
public class test {
    public static void main(String[] args) {
          Connection con= DbConnection.getConnection();
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataConnect {
 
    public static Connection getConnection() {
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:postgresql://127.0.0.1:5432/practica_ingenieria", "ricardo_rodab", "115820012007");
            return con;
        } catch (Exception ex) {
            System.out.println("Database.getConnection() Error -->"
                    + ex.getMessage());
            return null;
        }
    }
 
    public static void close(Connection con) {
        try {
            con.close();
        } catch (Exception ex) {
        }
    }
}

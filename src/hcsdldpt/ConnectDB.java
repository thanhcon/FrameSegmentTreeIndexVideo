/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hcsdldpt;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class ConnectDB {
     public Connection getconnect() {
        Connection con = null;
        String dbClass = "com.mysql.jdbc.Driver";
        String dbUrl = "jdbc:mysql://localhost:3306/dpt";

        try {
            Class.forName(dbClass);
            con = DriverManager.getConnection(dbUrl, "root", "");
                        System.out.println(" ket noi thanh cong !");

        } catch (ClassNotFoundException ex) {

            System.out.println("ket noi that bai");
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;

    }
    public static void main(String[] args) {
        new ConnectDB().getconnect();
    }

}

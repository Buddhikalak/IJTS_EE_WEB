/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Mr.Buddhika
 */
public class Database {
     static Connection c;
    static Statement s;
    public static Statement Database() throws Exception {
    
    Class.forName("com.mysql.jdbc.Driver");
    
        if (c==null) {
            c=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/slpincode","root","123");
        }
        if (s==null) {
             s=(Statement) c.createStatement();
        }
    
    
        return s;
    
    
    }
   
}

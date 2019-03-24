/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import java.sql.ResultSet;

/**
 *
 * @author Buddhika
 */
public class check {

    public int checkmail(String mail) throws Exception {

        int vaidform = 0;
        ResultSet rs = db.Database.Database().executeQuery("SELECT COUNT(user.id) FROM user WHERE user.email='" + mail + "'");
        while (rs.next()) {
            vaidform = rs.getInt(1);
            return vaidform;

        }
        return vaidform;
    }
}

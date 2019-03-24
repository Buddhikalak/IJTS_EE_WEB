/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Modle;

import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Buddhika
 */
public class GetMaxInvoiceId {
    public int getMaxInvoiceId() throws Exception{
        int idm=0;
     Statement s=db.Database.Database();
        ResultSet executeQuery = s.executeQuery("SELECT MAX(invoice_id) FROM invoice");
        if (executeQuery.next()) {
            idm=executeQuery.getInt(1);
            return idm;
        }
        return idm;
     
    }
    
    
    
}

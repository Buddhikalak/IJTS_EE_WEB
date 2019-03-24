/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Mailsend;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Buddhika
 */
public class sendInvoice {

    public String SendInvoiceToMail(int id) {
        String msg = null;

        try {
            Statement s = db.Database.Database();
            ResultSet r = s.executeQuery("SELECT "
                    + "network.`name`  AS network_name,"
                    + "price_A.`price`AS price_A_price,"
                    + " AES_DECRYPT(pin.`pin_no`, SHA1(SHA(PASSWORD(MD5('953180898')))))AS pin_pin_no,"
                    + "AES_DECRYPT(pin.`serialNo`, SHA1(SHA(PASSWORD(MD5('953180898'))))) AS pin_serialNo,"
                    + "user.`name` AS user_name,"
                    + "user.`phone_number` AS user_phone_number,"
                    + "batchno.`BatchNo` AS batchno_BatchNo"
                    + " FROM`invoice` invoice INNER JOIN `invoice_description` invoice_description ON invoice.`invoice_id` = invoice_description.`invoice_id`INNER JOIN `session_activities` session_activities ON invoice.`session_act_id` = session_activities.`idSession_Activities`INNER JOIN `session` SESSION ON session_activities.`session_id` = session.`session_id`INNER JOIN `user` USER ON session.`user_id` = user.`id`INNER JOIN `pin` pin ON invoice_description.`pin_id` = pin.`pin_id`INNER JOIN `card_modle` card_modle ON pin.`cardModle_id` = card_modle.`idCard_Modle`INNER JOIN `batchno` batchno ON pin.`batch_id` = batchno.`idBatchNo`INNER JOIN `network` network ON card_modle.`network_id` = network.`id`INNER JOIN `price` price ON card_modle.`price_id` = price.`id`INNER JOIN `price` price_A ON card_modle.`price_id` = price_A.`id`,`user` user_A WHERE invoice.`invoice_id` = '" + id + "' GROUP BY pin.`pin_no`");
            while (r.next()) {
                //  System.out.println(""
                //            + "Network Name=" + r.getString(1)+"  "
                //            + "Network price=" + r.getString(2)+"  "
                //            + "Network pin=" + new encrypt.Encryptor().doDecrypt(r.getString(3))+"  "
                //            + "Network serial=" + new encrypt.Encryptor().doDecrypt(r.getString(4))+"  "
                //            + "Network batch=" + r.getString(7)+"  ");



                msg = msg + "@" + ""
                        + "Network Name=" + r.getString(1) + "  "
                        + "Network price=" + r.getString(2) + "  "
                        + "Network pin=" + r.getString(3) + "  "
                        + "Network serial=" +r.getString(4) + "  "
                        + "Network batch=" + r.getString(7) + "  ";

            }
            System.out.println(msg);
            return msg;

        } catch (Exception ex) {
            Logger.getLogger(sendInvoice.class.getName()).log(Level.SEVERE, null, ex);
        }
        return msg;

    }

    public static void main(String[] args) {
        try {
            String s = new sendInvoice().SendInvoiceToMail(5);
            System.out.println(s);
            String msg = null;
            String[] k = s.split("@");
            for (int i = 1; i < k.length; i++) {
                // System.out.println(k[i]);
                msg = msg + "<br/>" + k[i];
            }
            System.out.println("new=" + msg);
            ResultSet rs = db.Database.Database().executeQuery("SELECT invoice.invoice_id, `user`.email FROM invoice INNER JOIN session_activities ON invoice.session_act_id = session_activities.idSession_Activities INNER JOIN `session` ON session_activities.session_id = `session`.session_id INNER JOIN `user` ON `session`.user_id = `user`.id where invoice_id='5'");
            String xmail = null;
            if (rs.next()) {
                xmail = rs.getString(2);
            }
            String msgbody = "Dear User,Thank for use this Smart Online ScratchCard Shop <br><br>Invoice Detail Is: <br> <h3>" + msg + "</h3> <br><img src='https://lh4.googleusercontent.com/-U2b3E4YG9eE/AAAAAAAAAAI/AAAAAAAAACc/1J4IEkesKLM/s120-c/photo.jpg'/><br>Thanks & Reguards,<br>Buddhika Lakshan(Super Admin & Developer This App)";
            new SendMail().GenarateMail(xmail, "buddhika.lakshan123@gmail.com", "smartonlinereload@gmail.com", "953180898v", "SmartInvoice", msgbody);
            System.out.println("Sending mail is:=" + xmail);
        } catch (Exception ex) {
            ex.printStackTrace();

            // Logger.getLogger(sendInvoice.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

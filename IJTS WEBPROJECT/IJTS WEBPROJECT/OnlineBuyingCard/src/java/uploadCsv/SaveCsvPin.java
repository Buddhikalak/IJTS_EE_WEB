/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package uploadCsv;

import java.net.Inet4Address;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

/**
 *
 * @author Buddhika
 */
public class SaveCsvPin {

    public void SaveCsv(String csvNetwork, String csvPrice, String csvPin, String csvSerisl, String Csvbatch) {

        int network_id = 0;
        int price_id = 0;
        int cardmid = 0;
        int max_pin_id = 0;
        int batchid = 0;

        try {
            Statement s = db.Database.Database();
            int id_batch = 0;
            String network = csvNetwork;
            String Price = csvPrice;
            String Pin = csvPin;
            String Sireal = csvSerisl;
            String batch = Csvbatch;

            ResultSet rs1 = s.executeQuery("SELECT MAX(`idBatchNo`) FROM batchno");
            while (rs1.next()) {
                id_batch = rs1.getInt("MAX(`idBatchNo`)");
                id_batch++;
                System.out.println("1");
            }
            try {
                s.executeUpdate("INSERT INTO batchno VALUES ('" + id_batch + "','" + batch + "')");
                System.out.println("saved batchno");
            } catch (Exception e) {
                e.printStackTrace();
            }

//SELECT network_id FROM network WHERE `name`'';
//SELECT price_id FROM price WHERE id '';
//SELECT `cardModle_id` FROM card_modle WHERE network_id n='' and price_id p='';
//          
            // get network id
            ResultSet rs_networkid = s.executeQuery("SELECT id FROM network WHERE `name`='" + network + "'");
            while (rs_networkid.next()) {
                network_id = Integer.parseInt(rs_networkid.getString("id"));
                System.out.println("network is" + network + ". id is" + network_id);
            }
            // get price id

            ResultSet rs_price = s.executeQuery("SELECT id FROM price WHERE price ='" + Price + "'");
            while (rs_price.next()) {
                price_id = Integer.parseInt(rs_price.getString("id"));
                System.out.println("price is" + Price + ". id is" + price_id);
            }

            // getcard modle id
            ResultSet cardmodle = s.executeQuery("SELECT `idCard_Modle` FROM card_modle WHERE network_id ='" + network_id + "' AND  price_id ='" + price_id + "'");
            while (cardmodle.next()) {
                cardmid = cardmodle.getInt(1);
                System.out.println("cardmodle id is" + cardmid);
            }

            // select max pin id
            ResultSet maxpin = s.executeQuery("SELECT MAX(pin_id) FROM pin");
            while (maxpin.next()) {
                max_pin_id = maxpin.getInt("MAX(pin_id)");
                max_pin_id++;
                System.out.println("max pin id is" + max_pin_id);
            }

            //select batch id
            ResultSet batchiid = s.executeQuery("SELECT `idBatchNo` FROM batchno WHERE `BatchNo`='" + batch + "'");
            while (batchiid.next()) {
                batchid = Integer.parseInt(batchiid.getString("idBatchNo"));
                System.out.println("batch id is" + batchid);
            }

            // insert card
            System.out.println("inserting cards");
            s.executeUpdate("INSERT INTO pin VALUES ('" + max_pin_id + "',AES_ENCRYPT('" + Pin + "', SHA1(SHA(PASSWORD(MD5('953180898'))))),AES_ENCRYPT('" + Sireal + "', SHA1(SHA(PASSWORD(MD5('953180898'))))),'" + batchid + "','" + cardmid + "','1')");


        } catch (Exception e) {
            e.printStackTrace();

        }
        SaveGrn(csvPin);




    }

    private void SaveGrn(String CSVPIN) {
        try {
            String ipAddress = Inet4Address.getLocalHost().getHostAddress();
            Statement s = db.Database.Database();
            Statement s1 = db.Database.Database();
            int sid = 0;
            int pid = 0;
            int max_Ses_Act_ID = 0;
            ResultSet executeQuery = s.executeQuery("SELECT session_id FROM `session` WHERE ip='" + ipAddress + "' AND `state`='Active'");
            if (executeQuery.next()) {
                sid = executeQuery.getInt(1);
            }

            ResultSet executeQuery1 = s.executeQuery("SELECT pin_id FROM pin WHERE pin_no=AES_ENCRYPT('" + CSVPIN + "', SHA1(SHA(PASSWORD(MD5('953180898'))))) AND `state`='1'");
            if (executeQuery1.next()) {
                pid = executeQuery1.getInt(1);
            }

            ResultSet rs3 = s.executeQuery("SELECT MAX(idSession_Activities) FROM session_activities");
            while (rs3.next()) {
                max_Ses_Act_ID = rs3.getInt(1);
                max_Ses_Act_ID++;

            }
            s1.executeUpdate("INSERT INTO session_activities(`idSession_Activities`,session_id,activity_id,`time`,session_state) VALUES('" + max_Ses_Act_ID + "','" + sid + "','1','" + new java.sql.Timestamp(new Date().getTime()) + "','1')");
            s1.executeUpdate("INSERT INTO grn(session_act_id,pin_id) VALUES ('" + max_Ses_Act_ID + "','" + pid + "')");
            System.out.println("Saved Grn");



        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}

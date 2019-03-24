/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.Inet4Address;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableColumnModel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Buddhika
 */
public class ScratchCard_New extends javax.swing.JFrame {

    /**
     * Creates new form ScratchCard_New
     */
    public ScratchCard_New() {
        initComponents();
        setTitle("Cards");
        setLocationRelativeTo(this);
        loadnetwork();
        //  loadPrice();
        loadtable();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        batchTXT = new javax.swing.JTextField();
        pinTXT = new javax.swing.JTextField();
        serialTXT = new javax.swing.JTextField();
        priceCombo = new javax.swing.JComboBox();
        jLabel1 = new javax.swing.JLabel();
        networkCombo = new javax.swing.JComboBox();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Card Details"));

        batchTXT.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        batchTXT.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                batchTXTKeyTyped(evt);
            }
        });

        pinTXT.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        pinTXT.setForeground(new java.awt.Color(255, 0, 0));
        pinTXT.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                pinTXTKeyTyped(evt);
            }
            public void keyReleased(java.awt.event.KeyEvent evt) {
                pinTXTKeyReleased(evt);
            }
        });

        serialTXT.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        serialTXT.setForeground(new java.awt.Color(153, 0, 153));
        serialTXT.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                serialTXTKeyTyped(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel1.setText("Select Network");

        networkCombo.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                networkComboItemStateChanged(evt);
            }
        });
        networkCombo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                networkComboActionPerformed(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel2.setText("Select Price");

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel3.setText("Pin Number");

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel4.setText("Batch Number");

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel5.setText("Serial Number");

        jButton1.setText("Save");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton3.setText("Upload Csv");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(priceCombo, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(networkCombo, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(pinTXT, javax.swing.GroupLayout.PREFERRED_SIZE, 188, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jLabel2)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addComponent(jLabel4)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(batchTXT, javax.swing.GroupLayout.PREFERRED_SIZE, 169, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addComponent(jLabel5)
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                            .addComponent(serialTXT, javax.swing.GroupLayout.PREFERRED_SIZE, 169, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 103, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton1)))
                .addContainerGap(113, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(networkCombo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4)
                    .addComponent(batchTXT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(priceCombo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5)
                    .addComponent(serialTXT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(pinTXT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1)
                    .addComponent(jButton3))
                .addContainerGap(29, Short.MAX_VALUE))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("Exsisting Available Cards"));

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Network", "Price", "Pin Number", "Batch", "Serial"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(jTable1);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 274, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed

        int network_id = 0;
        int price_id = 0;
        int cardmid = 0;
        int max_pin_id = 0;
        int batchid = 0;

        try {
            Statement s = db.Database.Database();
            int id_batch = 0;
            String network = (String) networkCombo.getSelectedItem();
            String Price = (String) priceCombo.getSelectedItem();
            String Pin = pinTXT.getText();
            String Sireal = serialTXT.getText();
            String batch = batchTXT.getText();

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
            s.executeUpdate("INSERT INTO pin VALUES ('" + max_pin_id + "',AES_ENCRYPT('"+Pin+"', SHA1(SHA(PASSWORD(MD5('953180898'))))),AES_ENCRYPT('"+Sireal+"', SHA1(SHA(PASSWORD(MD5('953180898'))))),'" + batchid + "','" + cardmid + "','1')");


        } catch (Exception e) {
            e.printStackTrace();

        }
        SaveGrn();
        loadtable();


    }//GEN-LAST:event_jButton1ActionPerformed

    private void networkComboItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_networkComboItemStateChanged
        loadPriceCombo(networkCombo.getSelectedItem().toString());
    }//GEN-LAST:event_networkComboItemStateChanged

    private void networkComboActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_networkComboActionPerformed
        loadPriceCombo(networkCombo.getSelectedItem().toString());
    }//GEN-LAST:event_networkComboActionPerformed

    private void pinTXTKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pinTXTKeyReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_pinTXTKeyReleased

    private void pinTXTKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pinTXTKeyTyped
        if (!Character.isDigit(evt.getKeyChar())) {
            evt.consume();
        }
        // TODO add your handling code here:
    }//GEN-LAST:event_pinTXTKeyTyped

    private void batchTXTKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_batchTXTKeyTyped
        if (!Character.isDigit(evt.getKeyChar())) {
            evt.consume();
        }
        // TODO add your handling code here:
    }//GEN-LAST:event_batchTXTKeyTyped

    private void serialTXTKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_serialTXTKeyTyped
        if (!Character.isDigit(evt.getKeyChar())) {
            evt.consume();
        }
        // TODO add your handling code here:
    }//GEN-LAST:event_serialTXTKeyTyped
File selectedFile;
int i=0;
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
         try {
            JFileChooser jf = new JFileChooser();
            jf.showOpenDialog(this);

            selectedFile = jf.getSelectedFile();
            System.out.println(selectedFile+"ccccccccccccccccccccc");
            try {

                BufferedReader in = new BufferedReader(new FileReader(selectedFile));
                String str;
             // DefaultTableModel tb=(DefaultTableModel)jTable1.getModel();
              
              while ((str = in.readLine()) != null) {
                    String[] ar = str.split(",");
                System.out.println(ar[0]);
                i++;
               
              new scv.SaveCsvPin().SaveCsv(ar[0], ar[1], ar[2], ar[3], ar[4],jTable1 );
              }
       
                
                
               
JOptionPane.showMessageDialog(this, "File Has been updated");

                

                in.close();
            } catch (IOException e) {
           JOptionPane.showMessageDialog(this, e);
            }

        } catch (Exception e) {
          JOptionPane.showMessageDialog(this, e);
        }   
    }//GEN-LAST:event_jButton3ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /*
         * Set the Nimbus look and feel
         */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /*
         * If Nimbus (introduced in Java SE 6) is not available, stay with the
         * default look and feel. For details see
         * http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ScratchCard_New.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ScratchCard_New.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ScratchCard_New.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ScratchCard_New.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /*
         * Create and display the form
         */
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new ScratchCard_New().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField batchTXT;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JComboBox networkCombo;
    private javax.swing.JTextField pinTXT;
    private javax.swing.JComboBox priceCombo;
    private javax.swing.JTextField serialTXT;
    // End of variables declaration//GEN-END:variables

    private void loadnetwork() {
        try {
            Statement s = db.Database.Database();
            ResultSet rs = s.executeQuery("SELECT name FROM network");
            Vector v = new Vector();
            while (rs.next()) {
                v.add(rs.getString(1));
            }
            networkCombo.setModel(new DefaultComboBoxModel(v));
        } catch (Exception ex) {
            Logger.getLogger(ScratchCard_New.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void loadPriceCombo(String Networkkk) {
        try {
            Statement s = db.Database.Database();
            ResultSet rs = s.executeQuery("SELECT price.price FROM slpincode.card_modle INNER JOIN slpincode.price ON card_modle.price_id = price.id INNER JOIN slpincode.network ON card_modle.network_id = network.id WHERE network.name = '" + Networkkk + "'");
            Vector v = new Vector();
            while (rs.next()) {
                v.add(rs.getString(1));
            }


            priceCombo.setModel(new DefaultComboBoxModel(v));
        } catch (Exception ex) {
            Logger.getLogger(ScratchCard_New.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void loadtable() {
        try {
            Statement s = db.Database.Database();
            ResultSet r = s.executeQuery("SELECT  AES_DECRYPT(pin_no, SHA1(SHA(PASSWORD(MD5('953180898'))))) , AES_DECRYPT(pin.serialNo, SHA1(SHA(PASSWORD(MD5('953180898'))))), batchno.BatchNo, network.name, price.price, pin.state FROM slpincode.card_modle INNER JOIN slpincode.network ON card_modle.network_id = network.id INNER JOIN slpincode.price ON card_modle.price_id = price.id INNER JOIN slpincode.pin ON pin.cardModle_id = card_modle.idCard_Modle INNER JOIN slpincode.batchno ON pin.batch_id = batchno.idBatchNo WHERE pin.state='1'");
            DefaultTableModel dtm = (DefaultTableModel) jTable1.getModel();
            dtm.setRowCount(0);
            while (r.next()) {
                Vector v = new Vector();
                v.add(r.getString(4));
                v.add(r.getString(5));
                v.add(r.getString(1));
                v.add(r.getString(3));
                v.add(r.getString(2));
                v.add(r.getString(6));
                dtm.addRow(v);


            }


        } catch (Exception ex) {
            Logger.getLogger(ScratchCard_New.class.getName()).log(Level.SEVERE, null, ex);
        }


    }

    private void SaveGrn() {
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

            ResultSet executeQuery1 = s.executeQuery("SELECT pin_id FROM pin WHERE pin_no=AES_ENCRYPT('"+pinTXT.getText()+"', SHA1(SHA(PASSWORD(MD5('953180898'))))) AND `state`='1'");
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
            Logger.getLogger(ScratchCard_New.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

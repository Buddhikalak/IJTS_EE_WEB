/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.DefaultComboBoxModel;

/**
 *
 * @author Buddhika
 */
public class Scratch_update_details extends javax.swing.JFrame {

    /**
     * Creates new form Scratch_update_details
     */
    public Scratch_update_details(String network,String price,String pinn,String batch,String serial,String id){
        try {
            initComponents();
            setTitle("Details");
            setLocationRelativeTo(this);
            loadnetwork();
            lblNetwork.setText(network);
            lblPrice.setText(price);
            pinTXT.setText(pinn);
            batchTXT.setText(batch);
            serialTXT.setText(serial);
         lblid.setText(id);
            
        } catch (Exception ex) {
            Logger.getLogger(Scratch_update_details.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        
        
        
    }

    private Scratch_update_details() {
        throw new UnsupportedOperationException("Not yet implemented");
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
        lblNetwork = new javax.swing.JLabel();
        lblPrice = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jLabel6 = new javax.swing.JLabel();
        lblid = new javax.swing.JLabel();

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

        lblNetwork.setFont(new java.awt.Font("Tahoma", 1, 10)); // NOI18N
        lblNetwork.setForeground(new java.awt.Color(0, 153, 0));
        lblNetwork.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblNetwork.setText("XXXXXXXXX");
        lblNetwork.setToolTipText("");

        lblPrice.setFont(new java.awt.Font("Tahoma", 1, 10)); // NOI18N
        lblPrice.setForeground(new java.awt.Color(0, 153, 0));
        lblPrice.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblPrice.setText("XXXXXXXXX");
        lblPrice.setToolTipText("");

        jButton1.setText("Update");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jLabel6.setText("Id ");

        lblid.setText("000000001");

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
                            .addComponent(pinTXT, javax.swing.GroupLayout.PREFERRED_SIZE, 188, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(lblNetwork, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(lblPrice, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(priceCombo, javax.swing.GroupLayout.Alignment.TRAILING, 0, 99, Short.MAX_VALUE)
                                    .addComponent(networkCombo, javax.swing.GroupLayout.Alignment.TRAILING, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))))
                    .addComponent(jLabel2)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
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
                        .addComponent(jLabel6)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(lblid)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblNetwork, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel1)
                        .addComponent(networkCombo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel4)
                        .addComponent(batchTXT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(priceCombo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5)
                    .addComponent(serialTXT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lblPrice, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(pinTXT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1)
                    .addComponent(jLabel6)
                    .addComponent(lblid))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void batchTXTKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_batchTXTKeyTyped
        if (!Character.isDigit(evt.getKeyChar())) {
            evt.consume();
        }
        // TODO add your handling code here:
    }//GEN-LAST:event_batchTXTKeyTyped

    private void pinTXTKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pinTXTKeyTyped
        if (!Character.isDigit(evt.getKeyChar())) {
            evt.consume();
        }
        // TODO add your handling code here:
    }//GEN-LAST:event_pinTXTKeyTyped

    private void pinTXTKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_pinTXTKeyReleased
        // TODO add your handling code here:
    }//GEN-LAST:event_pinTXTKeyReleased

    private void serialTXTKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_serialTXTKeyTyped
        if (!Character.isDigit(evt.getKeyChar())) {
            evt.consume();
        }
        // TODO add your handling code here:
    }//GEN-LAST:event_serialTXTKeyTyped

    private void networkComboItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_networkComboItemStateChanged
        loadPriceCombo(networkCombo.getSelectedItem().toString());
    }//GEN-LAST:event_networkComboItemStateChanged

    private void networkComboActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_networkComboActionPerformed
        loadPriceCombo(networkCombo.getSelectedItem().toString());
    }//GEN-LAST:event_networkComboActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        try {
            java.sql.Statement s=db.Database.Database();
       
        } catch (Exception e) {
        }
    }//GEN-LAST:event_jButton1ActionPerformed

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
            java.util.logging.Logger.getLogger(Scratch_update_details.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Scratch_update_details.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Scratch_update_details.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Scratch_update_details.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /*
         * Create and display the form
         */
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new Scratch_update_details().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField batchTXT;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel lblNetwork;
    private javax.swing.JLabel lblPrice;
    private javax.swing.JLabel lblid;
    private javax.swing.JComboBox networkCombo;
    private javax.swing.JTextField pinTXT;
    private javax.swing.JComboBox priceCombo;
    private javax.swing.JTextField serialTXT;
    // End of variables declaration//GEN-END:variables
private void loadnetwork() {
        try {
            java.sql.Statement s = db.Database.Database();
                java.sql.ResultSet rs = s.executeQuery("SELECT name FROM network");
                Vector v = new Vector();
                while (rs.next()) {
                      v.add(rs.getString(1));
}
               networkCombo.setModel(new DefaultComboBoxModel(v));
        } catch (Exception ex) {
            Logger.getLogger(ScratchCard_New.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void loadPriceCombo(String Networkkk){
    try {
            java.sql.Statement s = db.Database.Database();
                java.sql.ResultSet rs = s.executeQuery("SELECT price.price FROM slpincode.card_modle INNER JOIN slpincode.price ON card_modle.price_id = price.id INNER JOIN slpincode.network ON card_modle.network_id = network.id WHERE network.name = '"+Networkkk+"'");
                Vector v = new Vector();
                while (rs.next()) {
                     v.add(rs.getString(1));
}
                
                
               priceCombo.setModel(new DefaultComboBoxModel(v));
        } catch (Exception ex) {
            Logger.getLogger(ScratchCard_New.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }

}

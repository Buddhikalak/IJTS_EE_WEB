/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Buddhika
 */
public class Scratch_Delete extends javax.swing.JFrame {

    /**
     * Creates new form Scratch_Delete
     */
    public Scratch_Delete() {
        initComponents();
        setTitle("Scratch Delete");
        setLocationRelativeTo(this);
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
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        TXTnetwork = new javax.swing.JTextField();
        TXTprice = new javax.swing.JTextField();
        TXTpin = new javax.swing.JTextField();
        Txtbatch = new javax.swing.JTextField();
        TxtSerial = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Update Exsisting Card"));

        jTable1.setBackground(new java.awt.Color(153, 153, 255));
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Network", "Price", "Pin Number", "Batch", "Serial", "ID"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                jTable1MouseReleased(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("Search By"));

        jLabel1.setText("Network");

        jLabel3.setText("Price");

        jLabel4.setText("Serial");

        jLabel5.setText("Pin");

        jLabel6.setText("Batch");

        TXTnetwork.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                TXTnetworkMouseReleased(evt);
            }
        });
        TXTnetwork.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                TXTnetworkKeyTyped(evt);
            }
        });

        TXTprice.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                TXTpriceMouseReleased(evt);
            }
        });
        TXTprice.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                TXTpriceKeyTyped(evt);
            }
        });

        TXTpin.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                TXTpinMouseReleased(evt);
            }
        });
        TXTpin.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                TXTpinKeyTyped(evt);
            }
        });

        Txtbatch.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                TxtbatchMouseReleased(evt);
            }
        });
        Txtbatch.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                TxtbatchKeyTyped(evt);
            }
        });

        TxtSerial.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                TxtSerialMouseReleased(evt);
            }
        });
        TxtSerial.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                TxtSerialKeyTyped(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(TXTnetwork, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(TXTprice, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(8, 8, 8)
                .addComponent(jLabel5)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(TXTpin, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel6)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(Txtbatch, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel4)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(TxtSerial, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(jLabel3)
                    .addComponent(jLabel5)
                    .addComponent(jLabel6)
                    .addComponent(jLabel4)
                    .addComponent(TXTnetwork, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(TXTprice, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(TXTpin, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(Txtbatch, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(TxtSerial, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jScrollPane1))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 351, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTable1MouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseReleased
      
        this.dispose();
        new Scratch_delete_conform(jTable1.getValueAt(jTable1.getSelectedRow(), 5).toString()).setVisible(true);    // TODO add your handling code here:
    }//GEN-LAST:event_jTable1MouseReleased

    private void TXTnetworkMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TXTnetworkMouseReleased
        TXTnetwork.setText(null);
        TXTpin.setText(null);
        TXTprice.setText(null);
        TxtSerial.setText(null);
        Txtbatch.setText(null);        // TODO add your handling code here:
    }//GEN-LAST:event_TXTnetworkMouseReleased

    private void TXTnetworkKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_TXTnetworkKeyTyped
        if (Character.isDigit(evt.getKeyChar())) {
            evt.consume();
        }

        search(TXTnetwork.getText().trim(), null, null, null, null);

    }//GEN-LAST:event_TXTnetworkKeyTyped

    private void TXTpriceMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TXTpriceMouseReleased
        TXTnetwork.setText(null);
        TXTpin.setText(null);
        TXTprice.setText(null);
        TxtSerial.setText(null);
        Txtbatch.setText(null);
    }//GEN-LAST:event_TXTpriceMouseReleased

    private void TXTpriceKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_TXTpriceKeyTyped
        if (!Character.isDigit(evt.getKeyChar())) {
            evt.consume();
        }

        search(null, TXTprice.getText().trim(), null, null, null);
        // TODO add your handling code here:
    }//GEN-LAST:event_TXTpriceKeyTyped

    private void TXTpinMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TXTpinMouseReleased
        TXTnetwork.setText(null);
        TXTpin.setText(null);
        TXTprice.setText(null);
        TxtSerial.setText(null);
        Txtbatch.setText(null);        // TODO add your handling code here:
    }//GEN-LAST:event_TXTpinMouseReleased

    private void TXTpinKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_TXTpinKeyTyped
        if (!Character.isDigit(evt.getKeyChar())) {
            evt.consume();
        }
        search(null, null, TXTpin.getText().trim(), null, null);
        // TODO add your handling code here:
    }//GEN-LAST:event_TXTpinKeyTyped

    private void TxtbatchMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TxtbatchMouseReleased
        TXTnetwork.setText(null);
        TXTpin.setText(null);
        TXTprice.setText(null);
        TxtSerial.setText(null);
        Txtbatch.setText(null);        // TODO add your handling code here:
    }//GEN-LAST:event_TxtbatchMouseReleased

    private void TxtbatchKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_TxtbatchKeyTyped
        if (!Character.isDigit(evt.getKeyChar())) {
            evt.consume();
        }
        search(null, null, null, Txtbatch.getText().trim(), null);
        // TODO add your handling code here:
    }//GEN-LAST:event_TxtbatchKeyTyped

    private void TxtSerialMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TxtSerialMouseReleased
        TXTnetwork.setText(null);
        TXTpin.setText(null);
        TXTprice.setText(null);
        TxtSerial.setText(null);
        Txtbatch.setText(null);        // TODO add your handling code here:
    }//GEN-LAST:event_TxtSerialMouseReleased

    private void TxtSerialKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_TxtSerialKeyTyped
        if (!Character.isDigit(evt.getKeyChar())) {
            evt.consume();
        }
        search(null, null, null, null, TxtSerial.getText().trim());
        // TODO add your handling code here:
    }//GEN-LAST:event_TxtSerialKeyTyped

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
            java.util.logging.Logger.getLogger(Scratch_Delete.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Scratch_Delete.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Scratch_Delete.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Scratch_Delete.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /*
         * Create and display the form
         */
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new Scratch_Delete().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField TXTnetwork;
    private javax.swing.JTextField TXTpin;
    private javax.swing.JTextField TXTprice;
    private javax.swing.JTextField TxtSerial;
    private javax.swing.JTextField Txtbatch;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables

public void search(String network,String price,String pin,String batch,String serial){
        try {
            Statement s=db.Database.Database();
            ResultSet r = s.executeQuery("SELECT AES_DECRYPT(pin_no, SHA1(SHA(PASSWORD(MD5('953180898'))))) , AES_DECRYPT(pin.serialNo, SHA1(SHA(PASSWORD(MD5('953180898'))))), batchno.BatchNo, network.name, price.price,pin.pin_id FROM slpincode.card_modle INNER JOIN slpincode.network ON card_modle.network_id = network.id INNER JOIN slpincode.price ON card_modle.price_id = price.id INNER JOIN slpincode.pin ON pin.cardModle_id = card_modle.idCard_Modle INNER JOIN slpincode.batchno ON pin.batch_id = batchno.idBatchNo WHERE pin.state='1' AND network.name Like '%"+network+"%' OR batchno.BatchNo Like '%"+batch+"%' OR pin.serialNo = AES_ENCRYPT('"+serial+"', SHA1(SHA(PASSWORD(MD5('953180898'))))) OR price.price Like '%"+price+"%' OR pin.pin_no = AES_ENCRYPT('"+pin+"', SHA1(SHA(PASSWORD(MD5('953180898'))))) ");
             DefaultTableModel dtm= (DefaultTableModel) jTable1.getModel();
            dtm.setRowCount(0);
            while (r.next()) {
                Vector v=new Vector(); 
                v.add(r.getString(4));
                v.add(r.getString(5));
                v.add(r.getString(1));
                v.add(r.getString(3));
                v.add(r.getString(2));
                v.add(r.getString(6));
                
                dtm.addRow(v);
                
                
            }
        
        
        } catch (Exception ex) {
            Logger.getLogger(ScratchCard_Update.class.getName()).log(Level.SEVERE, null, ex);
        }


}
}

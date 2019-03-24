/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Buddhika
 */
public class updatepin extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            System.out.println("Coming Update pin");
            String network = request.getParameter("scnetwork");
            String price = request.getParameter("scPrice");
            String pin = request.getParameter("scPin");
            String serial = request.getParameter("scserial");
            String batch = request.getParameter("scbatch");
            String hhid = request.getParameter("hhid");

            System.out.println(network);
            System.out.println(price);
            System.out.println(pin);
            System.out.println(serial);
            System.out.println(batch);
            System.out.println(hhid);

            int batchid = 0;
            int cmid = 0;
           

            ResultSet rs = db.Database.Database().executeQuery("SELECT batchno.idBatchNo,batchno.BatchNo, pin.pin_id FROM batchno INNER JOIN pin ON pin.batch_id = batchno.idBatchNo WHERE pin.pin_id='" + hhid + "'");
            if (rs.next()) {
                batchid = rs.getInt(1);
            } else {
                ResultSet rs1 = db.Database.Database().executeQuery("SELECT MAX(`idBatchNo`) FROM batchno");

                while (rs1.next()) {
                    batchid = rs1.getInt("MAX(`idBatchNo`)");
                    batchid++;
                    System.out.println("max batch id=" + batchid);

                }
                try {
                    db.Database.Database().executeUpdate("INSERT INTO batchno VALUES ('" + batchid + "','" + batch + "')");
                    System.out.println("saved batchno");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            rs.close();

            try {
                ResultSet rs2 = db.Database.Database().executeQuery("SELECT card_modle.idCard_Modle, network.`name`, price.price FROM card_modle INNER JOIN network ON card_modle.network_id = network.id INNER JOIN price ON card_modle.price_id = price.id WHERE `name`='" + network + "' AND price='" + price + "'");
                if (rs2.next()) {
                    cmid = rs2.getInt(1);
                } else {
                    System.out.println("No card Model");
                }
            } catch (Exception e) {
                System.out.println("card model aka ganna eke error akk");
                e.printStackTrace();
            }

            try {
                db.Database.Database().executeUpdate("update `slpincode`.`batchno` 	set	`BatchNo` = '" + batch + "'	where	`idBatchNo` = '" + batchid + "'");
            } catch (Exception e) {
                System.out.println("batch updating error");
                e.printStackTrace();
            }
            try {
                db.Database.Database().executeUpdate("UPDATE `slpincode`.`pin` 	SET	`pin_no` = AES_ENCRYPT('" + pin + "', SHA1(SHA(PASSWORD(MD5('953180898')))))  , 	`serialNo` = AES_ENCRYPT('" + serial + "', SHA1(SHA(PASSWORD(MD5('953180898')))))  , 	`batch_id` = '" + batchid + "' , 	`cardModle_id` = '" + cmid + "'	WHERE	`pin_id` = '" + hhid + "' ");
            } catch (Exception e) {
                System.out.println("pin updating error");
                e.printStackTrace();
            }
            response.sendRedirect("addCardModel.jsp?msg=updated");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("addCardModel.jsp?msg=updating error");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

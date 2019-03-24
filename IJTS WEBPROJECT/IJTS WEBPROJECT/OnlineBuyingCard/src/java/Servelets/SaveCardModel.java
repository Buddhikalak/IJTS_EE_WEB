/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Buddhika
 */
public class SaveCardModel extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            System.out.println("Save Card Model Akata Awa");
            String network1 = null, price1 = null;
            network1=request.getParameter("Networkaaa");
            price1=request.getParameter("Priceqqq");


            Statement s = db.Database.Database();
            int id_modle = 0;
            int id = 0;
            int network_id = 0;

            double price = Double.parseDouble(price1);
            String network = network1;

            ResultSet priceResult = s.executeQuery("SELECT id FROM price WHERE price='" + price + "'");
            if (priceResult.next()) {
                id = priceResult.getInt(1);
            } else {
                ResultSet rs1 = s.executeQuery("SELECT MAX(id) FROM price");
                rs1.next();
                id = rs1.getInt("MAX(id)");
                id++;
                s.executeUpdate("INSERT INTO price VALUES ('" + id + "','" + price + "')");
            }

            ResultSet rs3 = s.executeQuery("SELECT MAX(`idCard_Modle`) FROM card_modle");
            while (rs3.next()) {
                id_modle = rs3.getInt("MAX(`idCard_Modle`)");
                id_modle++;
            }

            ResultSet rs = s.executeQuery("SELECT id FROM network WHERE `name`='" + network + "'");
            while (rs.next()) {
                network_id = rs.getInt("id");

            }
            s.executeUpdate("INSERT INTO card_modle VALUES('" + id_modle + "','" + network_id + "','" + id + "')");
            response.sendRedirect("addCardModel.jsp");

            //  response.sendRedirect("price.jsp");
        } catch (Exception e) {
            e.printStackTrace();
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(SaveCardModel.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(SaveCardModel.class.getName()).log(Level.SEVERE, null, ex);
        }
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

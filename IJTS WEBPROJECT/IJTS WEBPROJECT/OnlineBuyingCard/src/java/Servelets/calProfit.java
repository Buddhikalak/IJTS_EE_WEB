/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import Modle.datesplit;
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
public class calProfit extends HttpServlet {

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
//PrintWriter out = response.getWriter();

        try {
            StringBuffer results = new StringBuffer("<maintag>");
            String date1 = "";
            String date2 = "";
            date1 = request.getParameter("date1").replace("/", "-");
            date2 = request.getParameter("date2").replace("/", "-");
            System.out.println(date1 + "@@@@@@@@@@@@@@@@@@@@" + date2);

            
            int price = 0;
            System.out.println(price);
            System.out.println("executing....");
            Statement s = db.Database.Database();
            ResultSet rs = s.executeQuery("SELECT total,invoice_id FROM invoice WHERE invoice_id IN(SELECT invoice_id FROM invoice  WHERE session_act_id IN(SELECT `idSession_Activities` FROM session_activities WHERE `time` BETWEEN '" + date1.toString() + "' AND  '" + date2.toString() + "'))");
            while (rs.next()) {

                price = price + Integer.parseInt(rs.getString(1));
               // System.out.println(price);
               

            }
            System.out.println(price);
            results.append("<price>" + price + "</price>");
            results.append("</maintag>");
             response.setContentType("text/xml");
            response.getWriter().write(results.toString()); 
            //out.write(price);
            
        } catch (Exception ex) {
            Logger.getLogger(calProfit.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
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

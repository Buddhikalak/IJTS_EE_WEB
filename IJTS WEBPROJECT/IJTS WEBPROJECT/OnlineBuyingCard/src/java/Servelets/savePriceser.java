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
public class savePriceser extends HttpServlet {

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

            String price =request.getParameter("Price");
            String network = request.getParameter("netc");
            Statement s = db.Database.Database();
            Statement s1 = db.Database.Database();
            
            int price_id;
            int network_id;
            int maxpid;
            // check price id
          
            ResultSet rs1=s.executeQuery("select id from price where price='"+price+"'");
           
             if (rs1.next()) {
                 System.out.println("All ready have a price /ln so system get the exsisting price id on "+price);
                price_id = rs1.getInt(1);
                 System.out.println("the Price id is ="+price_id);
            } else {
                 System.out.println("price is not in database /ln so system preparing insert that price values");
                ResultSet rs = s.executeQuery("SELECT MAX(id) FROM price");
                rs.next();
                maxpid = rs.getInt("MAX(id)");
                maxpid++;
                s.executeUpdate("INSERT INTO price VALUES ('" + maxpid + "','" + price + "')");
                System.out.println("insert the price values in price table id is ="+maxpid+" Price is="+price);
            }

            // Get Network Id
            ResultSet rs2 = s.executeQuery("SELECT network.id FROM network WHERE network.name='" + network + "'");
            while (rs2.next()) {
                if (rs2.getString(1).equals(null)) {
                    System.out.println("Network Not in Database="+network);
                    System.out.println("Please Insert the new Network="+network);
                } else {
                    System.out.println("Network name in Database="+network);
                    System.out.println("System Try To Get The Id Exsisting Network="+network);
                    network_id=rs2.getInt(1);
                    System.out.println("Get the "+network+"  id="+network_id);
                    
                }
            }




        } catch (Exception ex) {
            Logger.getLogger(savePriceser.class.getName()).log(Level.SEVERE, null, ex);
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

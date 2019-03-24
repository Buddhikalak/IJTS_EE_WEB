/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import java.io.IOException;
import java.io.PrintWriter;
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
public class SaveNetwork extends HttpServlet {

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
            
            String networkName,companyName,companyAddress,contactNumber,webSite,customerCare;
            
            networkName=request.getParameter("networkNAme");
            companyName=request.getParameter("companyName");
            companyAddress=request.getParameter("companyaddress");
            contactNumber=request.getParameter("contact");
            webSite=request.getParameter("web");
            customerCare=request.getParameter("customercare");
            
            System.out.println("-------------------------------------------------------------");
            System.out.println("networkName----"+networkName);
            System.out.println("companyName----"+companyName);
            System.out.println("companyAddress----"+companyAddress);
            System.out.println("contactNumber----"+contactNumber);
            System.out.println("webSite----"+webSite);
            System.out.println("customerCare----"+customerCare);
            System.out.println("-------------------------------------------------------------");
            
            Statement s=db.Database.Database();
            s.executeUpdate("INSERT INTO network(`name`,company_name,address,hotline,website,customer_sir_no)VALUES('"+networkName+"','"+companyName+"','"+companyAddress+"','"+contactNumber+"','"+webSite+"','"+customerCare+"')");
            System.out.println("Saving network "+networkName);
            
        } catch (Exception ex) {
            Logger.getLogger(SaveNetwork.class.getName()).log(Level.SEVERE, null, ex);
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

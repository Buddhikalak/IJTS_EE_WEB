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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Buddhika
 */
public class AdminEdit extends HttpServlet {

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
            String fname,lname,address,email,contact,pw;
            fname=request.getParameter("fname");
            lname=request.getParameter("lname");
            address=request.getParameter("address");
            email=request.getParameter("email");
            contact=request.getParameter("tp");
            pw=request.getParameter("pw");
            System.out.println("lastUpdated Password="+pw);
            HttpSession s = request.getSession(true);
            int userid = Integer.parseInt(s.getAttribute("userid").toString());
            
            Statement st=db.Database.Database();
            st.executeUpdate("UPDATE  `user` SET `name`='"+fname+"',l_name='"+lname+"',address='"+address+"',email='"+email+"',phone_number='"+contact+"',password=AES_ENCRYPT('"+pw+"', SHA1(SHA(PASSWORD(MD5('953180898'))))) WHERE id='"+userid+"'");
            System.out.println("Updating user");
            response.sendRedirect("home.jsp");
            
        } catch (Exception ex) {
            Logger.getLogger(AdminEdit.class.getName()).log(Level.SEVERE, null, ex);
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

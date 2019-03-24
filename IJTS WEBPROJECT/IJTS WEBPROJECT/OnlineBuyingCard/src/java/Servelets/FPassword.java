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
public class FPassword extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String email=request.getParameter("email");
            System.out.println("reqmail="+email);
            Statement s=db.Database.Database();
            String password="Password Is:";
            ResultSet rs=s.executeQuery("SELECT user.name,AES_DECRYPT(user.password, SHA1(SHA(PASSWORD(MD5('953180898'))))) FROM USER WHERE user.email='"+email+"' ORDER BY `user`.id DESC LIMIT 2");
            while (rs.next()) { 
                System.out.println("ddd="+rs.getString(2));
                password=password +","+rs.getString(2);
                
                
            }
            System.out.println("password="+password);
            
            String msgbody="Dear "+email+",Thank for use this Smart Online ScratchCard Shop <br><br>Your Password Is: <br> <h3>"+password+"</h3> <br><img src='https://lh4.googleusercontent.com/-U2b3E4YG9eE/AAAAAAAAAAI/AAAAAAAAACc/1J4IEkesKLM/s120-c/photo.jpg'/><br>Thanks & Reguards,<br>Buddhika Lakshan(Super Admin & Developer This App)";
            new Mailsend.SendMail().GenarateMail(email, "buddhika.lakshan123@gmail.com", "smartonlinereload@gmail.com", "953180898v", "Remind Your Password", msgbody);
            response.sendRedirect("home.jsp");
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
            Logger.getLogger(FPassword.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(FPassword.class.getName()).log(Level.SEVERE, null, ex);
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

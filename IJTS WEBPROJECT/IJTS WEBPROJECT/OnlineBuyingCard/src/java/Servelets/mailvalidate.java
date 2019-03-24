/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
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
public class mailvalidate extends HttpServlet {

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
            String mail = request.getParameter("mail");
            System.out.println("validate mail=" + mail);
            int vaidform;
            ResultSet rs = db.Database.Database().executeQuery("SELECT COUNT(user.id) FROM user WHERE user.email='" + mail + "'");
            while (rs.next()) {
                vaidform = rs.getInt(1);
                if (vaidform == 0) {
                    System.out.println("ok!this mail can create user 1");
                    out.write("ok,You can use this mail");
                } else if (vaidform == 1) {
                    System.out.println("ok!this mail can create user 2");
                     out.write("ok,You can use this mail");
                } else if (vaidform == 2) {
                    System.out.println("3rd create login this mail.mail is=" + mail + "But Cant");
                    out.write("error,you have another 2 accounts in this site.");

                } else if (vaidform >= 2) {
                    System.out.println(" create login this mail.mail is=" + mail + "But Cant");
                     out.write("error,you have another 2++ accounts in this site.");

                }else{
                    System.out.println("error bn");
                    out.write("error");
                }

            }


        } catch (Exception ex) {
            Logger.getLogger(mailvalidate.class.getName()).log(Level.SEVERE, null, ex);
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

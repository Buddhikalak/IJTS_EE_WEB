/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Inet4Address;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
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
public class loginAcsess extends HttpServlet {

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
            String emailUser = null;
            String passwordUser = null;
            String state1 = "Active";
            String state2 = "Deactive";
            String u_Typeid;
            String ipAddress =  Inet4Address.getLocalHost().getHostAddress();
            emailUser = request.getParameter("Email");
            passwordUser = request.getParameter("pw");
            Statement s = db.Database.Database();
             HttpSession ses = request.getSession(true);
                
             Statement s1 = db.Database.Database();
              Statement s2 = db.Database.Database();
               
            int userid = 0;
            ResultSet rs = s.executeQuery("SELECT id,user_type FROM `user` WHERE email='" + emailUser + "' AND password = AES_ENCRYPT('"+passwordUser+"', SHA1(SHA(PASSWORD(MD5('953180898'))))) ");
            if (rs.next()) {
             userid = rs.getInt(1);
             u_Typeid=rs.getString(2);
             s1.executeUpdate("UPDATE `session` SET `state`='"+state2+"' WHERE ip='"+ipAddress+"'AND `state`='"+state1+"'");
             s2.executeUpdate("INSERT INTO `session`(user_id,ip,log_in_time,`state`) VALUES ('"+userid+"','"+ipAddress+"','"+new java.sql.Timestamp(new Date().getTime())+"','"+state1+"')");
             ResultSet rs1= s.executeQuery("SELECT session_id FROM `session` WHERE ip='"+ipAddress+"'AND `state`='"+state1+"'");
                if (rs1.next()) {
                    
                    int vc=rs1.getInt(1);
                    ses.setAttribute("user_s_id", vc);
                    ses.setAttribute("userid", userid);
                    ses.setAttribute("utype", u_Typeid);
                    response.sendRedirect("home.jsp");
                }
               

            } else {
                response.sendRedirect("loginError.jsp");

            }
            




        } catch (Exception ex) {
            Logger.getLogger(loginAcsess.class.getName()).log(Level.SEVERE, null, ex);
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

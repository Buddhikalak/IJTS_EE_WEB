/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import com.mysql.jdbc.Statement;
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
public class CreateUser extends HttpServlet {

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
            java.sql.Statement s= db.Database.Database();
            String fname, lname, address1 = null, address2 = null, address3 = null, email, addressfull, tel, pw;
            int id=0;
              ResultSet rs1 = s.executeQuery("SELECT MAX(id) FROM user");
            while (rs1.next()) {
                id = rs1.getInt("MAX(id)");
                id++;
            }

            address1 = request.getParameter("ad1");
            address2 = request.getParameter("ad2");
            address3 = request.getParameter("ad3");
            addressfull = address1 + "," + address2 + "," + address3 + ".";
            System.out.println(addressfull);


            fname = request.getParameter("fname");
            lname = request.getParameter("lname");
            email = request.getParameter("email");
            pw = request.getParameter("pw");
            tel = request.getParameter("tel");
            int utype=2;
            
            
          //  s.executeUpdate("INSERT INTO `user` VALUES('"+id+"',"+fname+"','"+lname+"','"+addressfull+"','"+email+"','"+tel+"','"+pw+"','"+utype+"')");
           // System.out.println("Fished SaveUser=="+email);
            response.sendRedirect("home.jsp");
          
            int usertype_id=0;
            usertype_id=2;
            
            int xcv=new check().checkmail(email);
            if(xcv>=2){
                System.out.println("2ta wada wadi...");
            
            }else if(xcv==0){
                
            s.executeUpdate("INSERT INTO `user` VALUES('"+id+"','"+fname+"','"+lname+"','"+addressfull+"','"+email+"','"+tel+"',AES_ENCRYPT('"+pw+"', SHA1(SHA(PASSWORD(MD5('953180898'))))),'"+usertype_id+"')");
            response.sendRedirect("home.jsp");
            }
            else if(xcv==1){
                
            s.executeUpdate("INSERT INTO `user` VALUES('"+id+"','"+fname+"','"+lname+"','"+addressfull+"','"+email+"','"+tel+"',AES_ENCRYPT('"+pw+"', SHA1(SHA(PASSWORD(MD5('953180898'))))),'"+usertype_id+"')");
            response.sendRedirect("home.jsp");
            }
            
            
            
            
            
            

        } catch (Exception ex) {
            Logger.getLogger(CreateUser.class.getName()).log(Level.SEVERE, null, ex);
            out.write(ex.toString());
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

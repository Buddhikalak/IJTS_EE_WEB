/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import com.lara.database.DB;
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
public class AddPivilages extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            int pageid = 0;
            int user_type_id = 0;
            int pivi_id = 0;
            Statement s = db.Database.Database();

            String url;
            url = request.getParameter("page");
            String u_type;
            u_type = request.getParameter("user_type");
            // get page id where url
            ResultSet rs = s.executeQuery("SELECT page_id  FROM pages WHERE url='" + url + "'");
            while (rs.next()) {
                pageid = Integer.parseInt(rs.getString("page_id"));
            }
            // get user type id where type
            ResultSet rs1 = s.executeQuery("SELECT  id_user_type FROM user_type WHERE `type`='" + u_type + "'");
            while (rs1.next()) {
                user_type_id = Integer.parseInt(rs1.getString("id_user_type"));
            }
            // get max id
            ResultSet rs3 = s.executeQuery("SELECT MAX(iduser_pivilages) FROM user_pivilages");
            while (rs3.next()) {
                pivi_id = rs3.getInt("MAX(iduser_pivilages)");
                pivi_id++;
            }
            System.out.println(pivi_id);
            System.out.println(user_type_id);
            System.out.println(pageid);
            s.executeUpdate("INSERT INTO user_pivilages VALUES('" + pivi_id + "','" + user_type_id + "','" + pageid + "')");
            response.sendRedirect("SETpivilages.jsp");

        } catch (Exception ex) {
            Logger.getLogger(AddPivilages.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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

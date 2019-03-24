/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Reports;

import java.io.PrintWriter;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 *
 * @author Buddhika
 */
public class PrintInvoice extends HttpServlet {

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
       
        try {
            try {
                int id = Integer.parseInt(request.getSession().getAttribute("invoiceID").toString());
                
                Map<String, Object> p = new HashMap<String, Object>();
                
                File fichier = new File("C:\\images\\SLPINCODE_INVOICE.jrxml");
                ServletOutputStream outputstream = null;
                
                p.put("invoiceNumber", id);
                System.out.println("id is="+id);
                outputstream = response.getOutputStream();
                JasperDesign jasperDesign = JRXmlLoader.load(fichier);
                JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
                JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, p, db.Database.Database().getConnection());
                response.setContentType("application/pdf");
                response.setHeader("Content-disposition", "filename=invoice.pdf");
                response.setHeader("Cache-Control", "no-cache");
                JRPdfExporter exporter = new JRPdfExporter();
                 System.out.println("id is="+id);
                exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
                exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, outputstream);
                 System.out.println("id is="+id);
                 exporter.exportReport();
            } catch (Exception e) {
                e.printStackTrace();
            }
            
            
        } finally {
           // out.close();
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

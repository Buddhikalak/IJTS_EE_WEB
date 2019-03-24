/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package uploadCsv;

import java.io.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Buddhika
 */
public class fileUpload extends HttpServlet {

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
            throws ServletException, IOException, FileUploadException, Exception {
        ServletContext context = getServletContext();
        boolean isMultiPart = ServletFileUpload.isMultipartContent(request);
        if (isMultiPart) {
            FileItemFactory fac = new DiskFileItemFactory();

            ServletFileUpload upload = new ServletFileUpload(fac);
            List<Object> items = upload.parseRequest(request);
            for (Object element : items) {
                FileItem fileItem = (FileItem) element;
                if (!fileItem.isFormField()) {
                    String fileName = fileItem.getName();
                    String root = getServletContext().getRealPath("/");
                    String filepath = root + "/UPLOAD";
                    System.out.println(filepath);
                    File file = new File(filepath);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    File uploadedFile = new File(file + "/" + fileName + "Time=" + System.currentTimeMillis());
                    System.out.println("PATH=" + file + "/" + fileName + "Time=" + System.currentTimeMillis());
                    fileItem.write(uploadedFile);

                    // exhicute

                    File selectedFile;
                    int i = 0;
                    selectedFile = uploadedFile;
                    System.out.println(selectedFile + "Csv Loadin Path");
                    try {
                        BufferedReader in = new BufferedReader(new FileReader(selectedFile));
                        String str;
                        while ((str = in.readLine()) != null) {
                            String[] ar = str.split(",");
                            System.out.println(ar[0]);
                            i++;
                           // new scv.SaveCsvPin().SaveCsv(ar[0], ar[1], ar[2], ar[3], ar[4], jTable1);
                            new uploadCsv.SaveCsvPin().SaveCsv(ar[0], ar[1], ar[2], ar[3], ar[4]);
                        }
                        response.sendRedirect("addCardModel.jsp?msg=Successfully Uploading");
                        in.close();
                    } catch (IOException e) {
                        response.sendRedirect("addCardModel.jsp?msg=error Uploading");
                        e.printStackTrace();
                    }



                }
            }
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
        } catch (FileUploadException ex) {
            Logger.getLogger(fileUpload.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(fileUpload.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (FileUploadException ex) {
            Logger.getLogger(fileUpload.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(fileUpload.class.getName()).log(Level.SEVERE, null, ex);
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

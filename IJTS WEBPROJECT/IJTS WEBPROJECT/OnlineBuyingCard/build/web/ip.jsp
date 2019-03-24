<%-- 
    Document   : ip
    Created on : Jan 19, 2015, 10:53:20 AM
    Author     : Buddhika
--%>

<%@page import="Mailsend.SendMail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Mailsend.sendInvoice"%>
<%@page import="java.util.HashMap"%>
<%@page import="net.sf.jasperreports.engine.JRExporterParameter"%>
<%@page import="net.sf.jasperreports.engine.export.JRPdfExporter"%>
<%@page import="net.sf.jasperreports.engine.JasperFillManager"%>
<%@page import="net.sf.jasperreports.engine.JasperCompileManager"%>
<%@page import="net.sf.jasperreports.engine.xml.JRXmlLoader"%>
<%@page import="net.sf.jasperreports.engine.JasperPrint"%>
<%@page import="net.sf.jasperreports.engine.JasperReport"%>
<%@page import="net.sf.jasperreports.engine.design.JasperDesign"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
  int id = Integer.parseInt(request.getSession().getAttribute("invoiceID").toString());
            try {
              


                

                Map<String, Object> p = new HashMap<String, Object>();

                File fichier = new File("C:\\images\\SLPINCODE_INVOICE.jrxml");
                ServletOutputStream outputstream = null;

                p.put("invoiceNumber", id);
                System.out.println("id is=" + id);
                outputstream = response.getOutputStream();
                JasperDesign jasperDesign = JRXmlLoader.load(fichier);
                JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
                JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, p, db.Database.Database().getConnection());
                response.setContentType("application/pdf");
                response.setHeader("Content-disposition", "filename=invoice.pdf");
                response.setHeader("Cache-Control", "no-cache");
                JRPdfExporter exporter = new JRPdfExporter();

                exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
                exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, outputstream);

                exporter.exportReport();
            } catch (Exception e) {
                e.printStackTrace();
            }




        %>
    </head>
    <body>
        <%
//send mail

                String s = new sendInvoice().SendInvoiceToMail(id);
                System.out.println(s);
                String msg = null;
                String[] k = s.split("@");
                for (int i = 1; i < k.length; i++) {
                    // System.out.println(k[i]);
                    msg = msg + "<br/>" + k[i];
                }
                System.out.println("new=" + msg);
                ResultSet rs = db.Database.Database().executeQuery("SELECT invoice.invoice_id, `user`.email FROM invoice INNER JOIN session_activities ON invoice.session_act_id = session_activities.idSession_Activities INNER JOIN `session` ON session_activities.session_id = `session`.session_id INNER JOIN `user` ON `session`.user_id = `user`.id where invoice_id='"+id+"'");
                String xmail = null;
                if (rs.next()) {
                    xmail = rs.getString(2);
                }
                String msgbody = "Dear User,Thank for use this Smart Online ScratchCard Shop <br><br>Invoice Detail Is: <br> <h3>" + msg + "</h3> <br><img src='https://lh4.googleusercontent.com/-U2b3E4YG9eE/AAAAAAAAAAI/AAAAAAAAACc/1J4IEkesKLM/s120-c/photo.jpg'/><br>Thanks & Reguards,<br>Buddhika Lakshan(Super Admin & Developer This App)";
                new SendMail().GenarateMail(xmail, "buddhika.lakshan123@gmail.com", "smartonlinereload@gmail.com", "953180898v", "SmartInvoice", msgbody);
                System.out.println("Sending mail is:=" + xmail);


                //send over        
%>
    </body>
</html>

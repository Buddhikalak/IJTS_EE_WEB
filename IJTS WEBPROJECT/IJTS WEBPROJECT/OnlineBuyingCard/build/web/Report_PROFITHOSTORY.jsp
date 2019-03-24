<%-- 
    Document   : Report_PROFITHOSTORY
    Created on : Jan 26, 2015, 7:00:29 PM
    Author     : Buddhika
--%>
<%-- 
    Document   : ip
    Created on : Jan 19, 2015, 10:53:20 AM
    Author     : Buddhika
--%>

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
        
            try {
                
                 String date1 = request.getParameter("date1");
                 String  date2= request.getParameter("date2");
                 
                 System.out.println(date1);
                 System.out.println(date2);
                
                Map<String, Object> p = new HashMap<String, Object>();
                
                File fichier = new File("C:\\images\\profit.jrxml");
                ServletOutputStream outputstream = null;
                
                p.put("date1", date1);
                 p.put("date2", date2);
                
                outputstream = response.getOutputStream();
                JasperDesign jasperDesign = JRXmlLoader.load(fichier);
                JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
                JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, p, db.Database.Database().getConnection());
                response.setContentType("application/pdf");
                response.setHeader("Content-disposition", "filename=history.pdf");
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
        <h1>Wait...</h1>
    </body>
</html>

<%-- 
    Document   : viewAllSellCards
    Created on : Jan 26, 2015, 10:10:19 PM
    Author     : Buddhika
--%>

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
                
                
                Map<String, Object> p = new HashMap<String, Object>();
                
                File fichier = new File("C:\\images\\viewAllSellCards.jrxml");
                ServletOutputStream outputstream ;
                
                
                outputstream = response.getOutputStream();
                JasperDesign jasperDesign = JRXmlLoader.load(fichier);
                JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
                JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, null, db.Database.Database().getConnection());
                response.setContentType("application/pdf");
                response.setHeader("Content-disposition", "filename=SellingCards.pdf");
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

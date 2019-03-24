<%-- 
    Document   : logOut
    Created on : Jan 26, 2015, 9:36:22 AM
    Author     : Buddhika
--%>

<%@page import="java.util.Date"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          
    </head>
    <body>
          <%

            Statement st = db.Database.Database();
            String ipAddress = request.getRemoteAddr();
            System.out.println("saving.......");
            st.executeUpdate("UPDATE `session`  SET log_out_time ='" + new java.sql.Timestamp(new Date().getTime()) + "',state='Deactive' WHERE ip='" + ipAddress + "' and `state`='Active'");
            System.out.println("saving ok loguot time");

            request.getSession().invalidate();
            response.sendRedirect("index.jsp");
            
            

        %>
        <h1>Waiting....!</h1>
    </body>
</html>

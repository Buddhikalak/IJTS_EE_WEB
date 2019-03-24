<%-- 
    Document   : index
    Created on : 12-Dec-2014, 19:24:43
    Author     : Mr.Buddhika
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OnlineBuyingCard</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/plugins/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="css/sb-admin-2.css">
        <link type="text/css" rel="stylesheet" href="font-awesome-4.1.0/css/font-awesome.min.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/plugins/metisMenu/metisMenu.min.js"></script>
        <script src="js/sb-admin-2.js"></script>
        <script src="js/jzone.js"></script>
       
        
       
        
        <%
       Statement s=db.Database.Database();
       int max=0;
       ResultSet rs= s.executeQuery("SELECT max(visit) FROM visitours");
       if(rs.next()){
           max=rs.getInt(1);
           
       }
       max++;
       
       s.executeUpdate("INSERT INTO visitours VALUES('"+max+"')");
        
        

%>

    </head>




    <body >
        <br/>

        <div style="margin-left: 8%;margin-right: 8%;">

            <table border="0">

                <tbody>
                    <tr>
                        <td>  <img src="images/Capture2.png"/></td>
                        <td style="width: 40%"></td>
                        <td>

                            <div class="form-group input-group" style="margin-top: 9%;" align="right">

                                <input class="form-control" type="text" size="50"  placeholder="Search By Key Word"></input>
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>

                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <hr/>

<!------------------------------------------------------------------------------------------------------------------------------------------------------>
            <!-- menu wage aka -->
            <div align="right">
                <button class="btn btn-outline btn-success" onclick="Signin()" type="button">Sign in</button>
                <button class="btn btn-outline btn-info" type="button" onclick="ClickQuickStart()">Quick Start</button>
                <button class="btn btn-outline btn-warning" onclick="window.location='CreateUser.jsp'" type="button">Create New</button>
                <button class="btn btn-outline btn-danger" type="button">Help</button>
            </div>
            <br/>
            
            <!-- /.row -->
            <img src="images/ind.png" />
            
            
            
            
            <hr/>
             <%@include   file="foot.jsp" %>
            

        </div>





    </body>
</html>

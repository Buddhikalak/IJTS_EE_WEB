<%-- 
    Document   : index
    Created on : 12-Dec-2014, 19:24:43
    Author     : Mr.Buddhika
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OnlineBuyingCard</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/plugins/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="css/sb-admin-2.css">
        <link type="text/css" rel="stylesheet" href="font-awesome-4.1.0/css/font-awesome.min.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/plugins/metisMenu/metisMenu.min.js"></script>
        <link rel="stylesheet" href="css/dashboard.css">
        <script src="js/sb-admin-2.js"></script>
        <script src="js/jzone.js"></script>
        <%
            try {
                HttpSession s = request.getSession(true);
                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='Bscard.jsp')");
                boolean isavailable = false;
                while (rs.next()) {
                    if (rs.getInt(1) == roleid) {
                        // true
                        isavailable = true;

                    }

                }
                if (!isavailable) {
                    response.sendRedirect("AccessDenied.jsp");
                }
            } catch (NullPointerException e) {
                response.sendRedirect("singin.jsp");

            }
        %>

    </head>





    <body >
        <br/>

        <div style="margin-left: 8%;margin-right: 8%;">

            <header>
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
            </header>
            <!--------------------------------------------------------CONTENT--------------------------------------------------------------------------------------->


            <div class="row" >
                <div class="col-lg-12">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            Scratch card
                        </div>

                        <div class="panel-body">
                            <%
                                ResultSet rs = db.Database.Database().executeQuery("SELECT  network.id,  network.name,  network.website,  network.customer_sir_no,  network.company_name FROM network");
                                while (rs.next()) {
                            %>
                            <!------------------------------------------------------------------------------------------------------------------------------------------------------>
                            <div class="col-md-3 col-sm-12 col-xs-12">
                                <div class="panel back-dash">
                                    <i class="fa fa-cloud fa-3x"></i><strong> &nbsp;<%= rs.getString(2)%></strong>
                                    <p class="text-muted"> See more Detail About This network &nbsp;<a href="#" class="alert-link"> <%= rs.getString(3)%></a> &nbsp; Presented By
                                        <a href="#" class="alert-link"><%= rs.getString(5)%></a> .<div>
                                        <input type="hidden" name="htInput" id="kk" value="<%= rs.getString(1)%>" />
                                        <button class="btn btn-warning btn-xs" onclick="chooseNetwork(<%= rs.getString(1)%>)">Choose This Network</button></div> </p>

                                </div>

                            </div><% }%>







                        </div>

                        <div class="panel-footer">
                            <button type="button" onclick="ClickQuickStart()" class="btn btn-primary">Back to HomePage</button> 

                        </div>
                    </div></div>


            </div>


        </div>


    </body>
</html>

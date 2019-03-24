<%-- 
    Document   : ProfitHistoryView
    Created on : Jan 26, 2015, 6:43:29 PM
    Author     : Buddhika
ProfitHistoryView
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%-- 
    Document   : index
    Created on : 12-Dec-2014, 19:24:43
    Author     : Mr.Buddhika
--%>

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
        <script src="js/sb-admin-2.js"></script>
        <script src="js/jzone.js"></script>

        <script src="swtallerts/sweet-alert.js"> </script>
        <script src="swtallerts/sweet-alert.min.js"> </script>
        <link rel="stylesheet" href="swtallerts/sweet-alert.css">
        <script src="swtallerts/min.js"></script>
        
         <%
            try {
                HttpSession s = request.getSession(true);
                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                java.sql.ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='ProfitHistoryView.jsp')");
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
                            view Profit
                        </div>
                        <div class="panel-body">

                            <div class="row show-grid">
            <div align="center">
                
            <table border="0" class="table table-striped table-bordered table-hover dataTable no-footer">
                


                <tbody>

                    <tr style="text-align: center">
                        <td>Invoice Number</td>
                        <td>Total Price income(RS:)</td>
                        <td>Sum</td>
                    </tr>

                    <%
                        String date1 = "";
                        String date2 = "";
                        date1 = request.getParameter("dp1").replace("/", "-");
                        date2 = request.getParameter("dp2").replace("/", "-");

                       // date1 = new split_in_date().date_kanapita(date1);
                       // date2 = new split_in_date().date_kanapita(date2);

                        int price = 0;

                        Statement s = db.Database.Database();
                        ResultSet rs = s.executeQuery("SELECT total,invoice_id FROM invoice WHERE invoice_id IN(SELECT invoice_id FROM invoice  WHERE session_act_id IN(SELECT `idSession_Activities` FROM session_activities WHERE `time` BETWEEN '" + date1.toString() + "' AND  '" + date2.toString() + "'))");
                        while (rs.next()) {

                        price = price + Integer.parseInt(rs.getString(1));


                    %>
                    <tr style=" text-align: center">
                        <td><%= rs.getString(2)%></td>
                        <td><%= rs.getString(1)%></td>
                        <td style="text-align: center"><%= price%></td>
                    </tr>
                    <%}%>
                    <tr style=" text-align: center" >
                        <td colspan="2">Your ToTal Income is <%= price%></td>


                    </tr>

                </tbody>
            </table>
        </div>
                         </div>


                          
                            <button type="button" onclick="ClickDashBoard()" class="btn btn-primary">Dash Board</button>





                        </div>
                        <div class="panel-footer">
                            Profit
                        </div>
                    </div>

                </div></div>


            <!------------------------------------------------------------------------------------------------------------------------------------------------------>
<%@include file="footer.jsp" %>
        </div>





    </body>
</html>

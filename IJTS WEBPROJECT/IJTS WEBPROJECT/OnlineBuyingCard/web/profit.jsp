<%-- 
    Document   : index
    Created on : 12-Dec-2014, 19:24:43
    Author     : Mr.Buddhika
--%>

<%@page import="com.mysql.jdbc.ResultSet"%>
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
                java.sql.ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='profit.jsp')");
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
                                <table border="0">
                                    <tbody> <form action="ProfitHistoryView.jsp">
                                        <tr>
                               
                                            <td>From</td>
                                            <td><input type="date" id="datepicker1" name="dp1" value=""class="form-control" placeholder="From" /></td>
                                            <td>to</td>
                                            <td><input type="date" id="datepicker2" name="dp2" value=""class="form-control" placeholder="to" /></td>
                                            <td>&nbsp;</td>
                                            <td><input type="button" onclick="getTotalProfit()" value="Calculate" class="btn btn-success" /></td>
                                              <td>&nbsp;</td>
                                            <td><input type="submit" value="View History"  class="btn btn-success"  /></td>
                                             <td>&nbsp;</td>
                                             <td><input type="button" onclick="printProfit()" value="View History Report"  class="btn btn-success"  /></td>
                             
                                        </tr>
                                           </form>
                                    </tbody>
                                </table>
                                <br/>
                                <lable><h5><b>Your Total Profit Is:<input type="text" name="ttt" id="ttt" readonly="" value="000.00 /=" style="color: red" class="form-control" value="" /></h5></lable>


                            </div>


                          
                            <button type="button" onclick="ClickQuickStart()" class="btn btn-primary">Skip</button>





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


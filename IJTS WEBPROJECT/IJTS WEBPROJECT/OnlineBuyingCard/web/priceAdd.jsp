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
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="css/sb-admin-2.css">
        <link type="text/css" rel="stylesheet" href="font-awesome-4.1.0/css/font-awesome.min.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/plugins/metisMenu/metisMenu.min.js"></script>
        <script src="js/sb-admin-2.js"></script>
        <script src="js/validation.js"></script>
        <script src="js/jzone.js"></script>


        <script src="swtallerts/sweet-alert.js"> </script>
        <script src="swtallerts/sweet-alert.min.js"> </script>

        <link rel="stylesheet" href="swtallerts/sweet-alert.css">
        <script src="swtallerts/min.js"></script>

        <%
            try {
                HttpSession s = request.getSession(true);
                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                java.sql.ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='priceAdd.jsp')");
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
            <div >
                <div class="row" class="panel-heading">
                    <div class="col-lg-12">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                Price Details
                            </div>
                            <div class="panel-body">

                                <div class="row show-grid">
                                    <form>
                                        <div class="col-md-4">
                                            <h5>Add yor Price</h5>
                                            <input type="number" class="form-control" id="pp" name="price" value=""   data-validate="required,number" />
                                        </div>
                                        <div class="col-md-4">
                                            <h5>Select Network</h5>
                                            <select id="netwname" name="network" class="form-control">
                                                <%
                                                    Statement s1 = db.Database.Database();
                                                    ResultSet rs1 = s1.executeQuery("select name from network");
                                                    while (rs1.next()) {
                                                %>
                                                x
                                                <option><%= rs1.getString(1)%></option>
                                                <% }%>
                                            </select>

                                        </div>  


                                    </form>  
                                </div>

                                <button type="button" class="btn btn-outline btn-warning" onclick="AttoTAblePrice()">Add to Table</button>
                                <button type="button" onclick="ClickDashBoard()" class="btn btn-info">Dash Board</button>
                                <br/><br/>

                                <table border="0" id="myTab" class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th style="width: 20%">Price</th>
                                            <th >Network</th>
                                            <th >Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>

                                        </tr>
                                    </tbody>
                                </table>




                            </div>
                            <!-- /.table-responsive -->







                            <div class="panel-footer">
                                Price Config
                                <div align="right">

                                    <input type="submit"  class="btn btn-outline btn-success" value="Save To the Databse" onclick="SavePrice()" />

                                </div>
                            </div>

                        </div>

                    </div></div></div>


            <!------------------------------------------------------------------------------------------------------------------------------------------------------>
<%@include file="footer.jsp" %>
        </div>





    </body>
</html>

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
        <script src="js/jzone.js"></script>

        <script src="swtallerts/sweet-alert.js"> </script>
        <script src="swtallerts/sweet-alert.min.js"> </script>
        <link rel="stylesheet" href="swtallerts/sweet-alert.css">
        <script src="swtallerts/min.js"></script>
        <%
            try {

                HttpSession s = request.getSession(true);
                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='updatepin.jsp')");
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

            <div class="col-lg-12">
                <div class="panel panel-red">
                    <div class="panel-heading">
                        Additional Updates
                    </div>
                    <div class="panel-body">
                        <%
                            String q = "SELECT network.`name`, price.price, pin.pin_id, AES_DECRYPT(pin_no, SHA1(SHA(PASSWORD(MD5('953180898'))))) ,  AES_DECRYPT(pin.serialNo, SHA1(SHA(PASSWORD(MD5('953180898'))))), batchno.BatchNo FROM pin INNER JOIN card_modle ON card_modle.idCard_Modle = pin.cardModle_id INNER JOIN network ON network.id = card_modle.network_id INNER JOIN price ON price.id = card_modle.price_id INNER JOIN batchno ON batchno.idBatchNo = pin.batch_id where state='1'";
                        %>
                        <table border="0" class="table">
                            <thead>
                                <tr>
                                    <th>Pin Id</th>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th>Pin</th>
                                    <th>Serial</th>
                                    <th>Batch</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ResultSet rs = db.Database.Database().executeQuery(q);
                                    while (rs.next()) {
                                %>
                            <form action="updatepin.jsp" method="post">     
                                <tr>
                                <input type="hidden" name="hg" value="<%= rs.getString(3) %>" />
                                    <td><%= rs.getString(3)%></td>
                                    <td><%= rs.getString(1)%></td>
                                    <td><%= rs.getString(2)%></td>
                                    <td><%= rs.getString(4)%></td>
                                    <td><%= rs.getString(5)%></td>
                                    <td><%= rs.getString(6)%></td>
                                    <td><input type="submit" value="Edit" class="btn btn-sm" /></td>
                                </tr>
                            </form>
                            <% }%>
                            </tbody>
                        </table>


                    </div>
                    <div class="panel-footer">
                        Action Card Model
                          <input type="button" value="Dashboard" onclick="window.location='DashBoard.jsp'"class="btn btn-default" />

                    </div>
                </div>
            </div>
            <!------------------------------------------------------------------------------------------------------------------------------------------------------>

        </div>





    </body>
</html>

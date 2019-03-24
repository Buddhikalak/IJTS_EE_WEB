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

        <!--popuo-->
        '<script src="bootstrap-modal.js"></script>
        <script src="bootstrap-modalmanager.js"></script>
        <link rel="stylesheet" href="bootstrap-modal.css">
        <script src="js/SaveScCard.js"></script>
        <%String id = request.getParameter("hg");
            out.write(id);
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
                 <%
                String q = "SELECT network.`name`, price.price, pin.pin_id, AES_DECRYPT(pin_no, SHA1(SHA(PASSWORD(MD5('953180898'))))) ,  AES_DECRYPT(pin.serialNo, SHA1(SHA(PASSWORD(MD5('953180898'))))), batchno.BatchNo FROM pin INNER JOIN card_modle ON card_modle.idCard_Modle = pin.cardModle_id INNER JOIN network ON network.id = card_modle.network_id INNER JOIN price ON price.id = card_modle.price_id INNER JOIN batchno ON batchno.idBatchNo = pin.batch_id where state='1' and pin.pin_id='" + id + "'";
            %>


            <div class="col-lg-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Additional Updates
                    </div>
                    <div class="panel-body">

                        <%
                            ResultSet rs = db.Database.Database().executeQuery(q);
                            if (rs.next()) {%>



                        <form action="" method="POST">
                            <div class="form-group">
                                <label>Network</label>
                                <input type="text" name="a" value="<%= rs.getString(1)%>" class="form-control" disabled="disabled" />

                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input type="text" name="a" value="<%= rs.getString(2)%>" class="form-control" disabled="disabled" />
                            </div>
                            <br/>

                            <div class="form-group">
                                <label>Pin</label>
                                <input type="number" required="" name="scPin" value="<%= rs.getString(4)%>" class="form-control" disabled="disabled" />
                            </div>

                            <div class="form-group">
                                <label>Batch</label>
                                <input type="number" required="" name="scbatch" value="<%= rs.getString(6)%>" class="form-control" disabled="disabled" />
                            </div>

                            <div class="form-group">
                                <label>serial</label>
                                <input type="number" required="" name="scserial" value="<%= rs.getString(5)%>" class="form-control" disabled="" />




                        </form>



                        <% } else {
                                out.write("No Datas");
                            }
                        %>  



                    </div>
                    <div class="panel-footer">
                        Action Pin
                          <input type="button" value="Dashboard" onclick="window.location='DashBoard.jsp'"class="btn btn-default" />

                    </div>
                </div>
            </div>
            <!------------------------------------------------------------------------------------------------------------------------------------------------------>

        </div>
                        <div class="col-lg-8">
                            <div class="panel panel-primary">
                        <div class="panel-heading">
                            Editing
                        </div>
                        <div class="panel-body">
                          
                             <tr><form action="updatepin" method="POST">
                                    <td><div class="form-group">

                                            <select name="scnetwork" id="cmmnet" onchange="loadPrice()" class="form-control">
                                                <option>--Select Network--</option>
                                                <%
                                                    String q1 = "SELECT network.`name`,network.id FROM network";
                                                    ResultSet e2 = db.Database.Database().executeQuery(q1);
                                                    while (e2.next()) {
                                                %>
                                                <option id="<%= e2.getString(1)%>"><%= e2.getString(1)%></option>
                                                <% }%>
                                            </select>

                                        </div></td>
                                    <td><div class="form-group">
                                            <select name="scPrice" id="xprice" class="form-control">
                                                <option>0000</option>

                                            </select>
                                        </div></td>
                                    <br/>
                                    <td>
                                        <div class="form-group">
                                            <input type="number" required="" name="scPin" value="" class="form-control" />
                                        </div>
                                    </td>
                                    <td><div class="form-group">
                                            <input type="number" required="" name="scbatch" value="" class="form-control" />
                                        </div></td>
                                    <td>
                                        <div class="form-group">
                                            <input type="number" required="" name="scserial" value="" class="form-control" />
                                        </div>
                                    </td>


                                    </tr>
                                    <input name="hhid" value="<%=id%>" type="hidden" />

                                    </tbody>
                            </table>

                            <input type="submit" value="Save" class="btn btn-warning" />
                            </form>

                        </div>
                        <div class="panel-footer">
                            Action Card Model
                        </div>
                    </div>
                            
                        </div>
                
            </div>





    </body>
</html>

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

        <%
            try {

                HttpSession s = request.getSession(true);
                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='Addtocard.jsp')");
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
                <div class="col-lg-8">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Add Card Model
                        </div>
                        <div class="panel-body">
                            <table border="0">
                                <thead>
                                <th>Network</th>
                                <th>Price</th>
                                </thead>

                                <tbody>
                                    <tr>
                                <form method="post" action="SaveCardModel">
                                    <td><div class="form-group">

                                            <select name="Networkaaa" id="nit" class="form-control">
                                                <option>--Select Network--</option>
                                                <%
                                                    String q = "SELECT network.`name`,network.id FROM network";
                                                    ResultSet rs1 = db.Database.Database().executeQuery(q);
                                                    while (rs1.next()) {
                                                %>
                                                <option id="<%= rs1.getString(1)%>"><%= rs1.getString(1)%></option>
                                                <% }%>
                                            </select>

                                        </div></td>
                                    <td><div class="form-group">
                                            <script>
                                                function m(){
                                                    var s=document.getElementById("nit").value;
                                                    if(s=='--Select Network--'){
                                                        swal("Please Select The Network :)", "error"); 
                                                    }
                                                }
                                            </script>

                                            <input type="text" name="Priceqqq" required="" value="" onchange="m()" onclick="m()" class="form-control" placeholder="Price" />
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <label></label>
                                            <input type="submit" value="Save" class="btn btn-info" />
                                        </div>
                                </form>
                                </td>
                                </tr>
                                </tbody>
                            </table>




                        </div>
                        <div class="panel-footer">
                            Card Model
                        </div>
                    </div>


                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Add Scratch
                        </div>
                        <div class="panel-body">

                            <table border="0">
                                <thead>
                                    <tr>
                                        <th>Network</th>
                                        <th>Price</th>
                                        <th>Pin Number</th>
                                        <th>Batch Number</th>
                                        <th>Serial Number</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <tr><form action="SaveScartchCard" method="POST">
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


                                    </tbody>
                            </table>

                            <input type="submit" value="Save" class="btn btn-warning" />
                            </form>
                            <input type="button" value="Dashboard" onclick="window.location='DashBoard.jsp'"class="btn btn-default" />

                            <hr/>
                            <div class="alert alert-danger">
                               Please Select .Csv File In correct Format. 
                               <a href="#" class="alert-link">Show Format</a>.
                               <img src="images/fr.PNG"/>
                            </div>

                            <form  method="post" enctype="multipart/form-data" action="fileUpload">
                                <input class="btn btn-default" type="file" id="trackfile" name="trackfile" multiple="multiple" size="50">
                                <button class="btn btn-default" type="submit">Upload</button>
                            </form>








                        </div>
                        <div class="panel-footer">
                            Scratch
                        </div>
                    </div>                       


                </div>
                <div class="col-lg-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            View Last Added
                        </div>
                        <div class="panel-body">
                            <table border="0" class="table">
                                <thead>
                                    <tr>
                                        <th>Network</th>
                                        <th>Price</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ResultSet rs = db.Database.Database().executeQuery("SELECT card_modle.idCard_Modle, network.`name`, price.price FROM card_modle INNER JOIN price ON price.id = card_modle.price_id INNER JOIN network ON network.id = card_modle.network_id ORDER BY network.id DESC LIMIT 5 ");
                                        while (rs.next()) {

                                    %>
                                <form action="deletePriceModel" method="POST">
                                <tr>

                                <input type="hidden" name="cid" value="<%= rs.getString(1)%>" />
                                <td><label><%= rs.getString(2)%></label></td>
                                <td><label><%= rs.getString(3)%></label></td>
                                <td><button class="btn btn-mini btn-info" type="submit" >Remove<i class="icon-edit bigger-120"></i>
                                    </button></td>
                                </tr>
                                </form>
                                <% }%>
                                </tbody>
                            </table>




                        </div>
                        <div class="panel-footer">
                            Card Model
                        </div>
                    </div>
                </div>
                                
                                
                                
                                
                                
                           
                                
                                <div class="col-lg-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Additional Updates
                        </div>
                        <div class="panel-body">
                            <input class="btn bigger-120" onclick="window.location='updateExsistingPin.jsp'" type="button" value="Update Exsisting Pin" />
                            



                        </div>
                        <div class="panel-footer">
                            Action Card Model
                        </div>
                    </div>
                </div>
            </div>



            <!------------------------------------------------------------------------------------------------------------------------------------------------------>

        </div>
        <br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /> <br /><br />
        <br /><br /> <br /><br /> <br /><br /> <br /><br />

        <%@include   file="foot.jsp" %>




    </body>
</html>

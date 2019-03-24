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
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
       
   
                                    <thead>
                                        <tr>
                                            <th>User Id</th>
                                            <th>First Name</th>
                                            <th>Last Name</th>
                                            <th>Email</th>
                                            <th>Phone Number</th>
                                            <th>PassWord</th>
                                            <th>User Type</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                                                                                                                          <%
                                    Statement s=db.Database.Database();
                                    ResultSet rs=s.executeQuery("SELECT  user.id,  user.name,  user.l_name,  user.email,  user.phone_number,  user.password,  user_type.type FROM slpincode.user  INNER JOIN slpincode.user_type    ON user.user_type = user_type.id_user_type GROUP BY user.id" );
                                    while(rs.next()){
                                    
%>
    
                                        <tr class="odd gradeX">
                                            <td><%= rs.getString(1) %></td>
                                            <td><%= rs.getString(2) %></td>
                                            <td><%= rs.getString(3) %></td>
                                            <td><%= rs.getString(4) %></td>
                                            <td><%= rs.getString(5) %></td>
                                            <td><%= rs.getString(6) %></td>
                                            <td><%= rs.getString(7) %></td>
                                            
                                        </tr>
                                       <%}%>
                                    </tbody>
                                </table>
                            </div>
                                     <button type="button" onclick="ClickDashBoard()" class="btn btn-primary">Dash Board</button>
                        </div></div>
                                    
                            <!-- /.table-responsive -->


                            <!------------------------------------------------------------------------------------------------------------------------------------------------------>
                            <%@include file="footer.jsp" %>
                        </div>





                        </body>
                        </html>

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
        <script src="js/validation.js"></script>
        
        
        
        
        
        <script src="swtallerts/sweet-alert.js"> </script>
        <script src="swtallerts/sweet-alert.min.js"> </script>
              
        <link rel="stylesheet" href="swtallerts/sweet-alert.css">
        <script src="swtallerts/min.js"></script>
        
        
        
        
        
        <%
 try {
                HttpSession s = request.getSession(true);
                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                java.sql.ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='networkAdd.jsp')");
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

             <div class="row" class="panel-heading">
                <div class="col-lg-12">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            Network Config
                        </div>
                        <div class="panel-body">
                         
                          <div class="row show-grid">
                              <form>
                              <div class="col-md-4">
                                  
                                  <h5>Network Name</h5>
                                  <input type="text" name="networkname" id="netname" value="" class="form-control" data-validate="required" />
                                  <h5>Company Name</h5>
                                  <input type="text" name="companyname" id="cname" value="" class="form-control" data-validate="required" />
                              </div>
                                <div class="col-md-4">
                                    <h5>Company Address</h5>
                                    <input type="text" name="address"id="address" value="" class="form-control" data-validate="required" />
                                    <h5>Contact Number</h5>
                                    <input type="number" name="hotline" id="contact" value="" class="form-control" data-validate="required,number" />
                                </div>
                                <div class="col-md-4">
                                    <h5>Website</h5>
                                    <input type="text" name="web" id="web" placeholder="http://www.google.com" value="" class="form-control" data-validate="required,url" />
                                    <h5>Customer care</h5>
                                    <input type="number" name="customercare" id="ccare" value="" class="form-control" data-validate="required,number" />
                                </div>
                             
                               </form>  
                            </div>
                             
                             <button type="button" class="btn btn-outline btn-warning" onclick="addRow()">Add to Table</button>
 <button type="button" onclick="ClickDashBoard()" class="btn btn-info">Dash Board</button>
 
    
 
                                <table class="table" id="myTableData">
                                    <thead>
                                        <tr>
                                          
                                            <th>Network Name</th>
                                            <th>Company Name</th>
                                            <th>Address</th>
                                            <th>Contact number</th>
                                            <th>Website</th>
                                            <th>Customer Care</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                      
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        
                            
                              
                             
                            
                         
                     
                        <div class="panel-footer">
                            Network Config 
                            <div align="right">
                              
                                    <input type="submit"  class="btn btn-outline btn-success" value="Save To the Databse" onclick="saveNetworkAdd()" />
                             
                            </div>
                        </div>
                             
                    </div>
                   
                </div></div>















                <!------------------------------------------------------------------------------------------------------------------------------------------------------>
            <%@include file="footer.jsp" %>
            </div>





    </body>
</html>

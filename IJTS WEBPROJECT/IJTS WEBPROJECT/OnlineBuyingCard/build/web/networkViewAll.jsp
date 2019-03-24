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
       <%
 try {
                HttpSession s = request.getSession(true);
                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                java.sql.ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='networkViewAll.jsp')");
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
                           View Network
                        </div>
                        <div class="panel-body">
                          
                            <table border="0" class="table table-striped table-bordered table-hover">
    <thead>
        <tr>
            <th>Network Name</th>
            <th>Company Name</th>
            <th>Network Address</th>
            <th>Hotline</th>
            <th>Website</th>
            <th>Customer Care</th>
            <th>Network Id</th>
        </tr>
    </thead>
    <tbody>
        <%
Statement s=db.Database.Database();
ResultSet rs=s.executeQuery("SELECT network.name, network.id, network.company_name, network.address, network.hotline, network.website, network.customer_sir_no FROM network");
while(rs.next()){
%>
        <tr>
            <td><%= rs.getString(1)   %></td>
            <td><%=  rs.getString(3)  %></td>
            <td><%=  rs.getString(4)  %></td>
            <td><%= rs.getString(5)   %></td>
            <td><%=  rs.getString(6)  %></td>
            <td><%= rs.getString(7)   %></td>
            <td><%= rs.getString(2)   %></td>
            
            <%
                 }      

%>


        </tr>
    </tbody>
</table>
                            
                <button type="button" onclick="ClickDashBoard()" class="btn btn-primary">Back to Dashboard</button>            
                            
                        </div>
                        <div class="panel-footer">
                            Network
                        </div>
                    </div>
                    
                </div></div>



<!------------------------------------------------------------------------------------------------------------------------------------------------------>
 <%@include file="footer.jsp" %>
        </div>

    </body>
</html>

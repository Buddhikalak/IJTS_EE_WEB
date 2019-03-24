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
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='viewsession.jsp')");
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
<div class="panel panel-primary">
                        <div class="panel-heading">
                            View Session 
                        </div>
                        <div class="panel-body">
                            
                            <table border="0" class="table">
                                <thead>
                                    <tr>
                                        <th>Email</th>
                                        <th>Type</th>
                                        <th>Activity</th>
                                        <th>Ip</th>
                                        <th>Login time</th>
                                        <th>Log out time</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
ResultSet rs=db.Database.Database().executeQuery("SELECT `user`.email, user_type.type, activity.Activity, `session`.ip, `session`.log_in_time, `session`.log_out_time, `session`.state FROM `session` INNER JOIN session_activities ON `session`.session_id = session_activities.session_id INNER JOIN `user` ON `session`.user_id = `user`.id INNER JOIN user_type ON `user`.user_type = user_type.id_user_type INNER JOIN activity ON activity.idActivity = session_activities.activity_id GROUP BY `session`.log_in_time ORDER BY session_activities.session_id DESC");                                    
while(rs.next()){
                                    %>
                                    <tr>
                                        <td><%= rs.getString(1) %></td>
                                        <td><%= rs.getString(2) %></td>
                                        <td><%= rs.getString(3) %></td>
                                        <td><%= rs.getString(4) %></td>
                                        <td><%= rs.getString(5) %></td>
                                        <td><%= rs.getString(6) %></td>
                                        <td><%= rs.getString(7) %></td>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>




                        </div>
 

                         
                        <div class="panel-footer">
                           Session
                               <input type="button" value="Dashboard" onclick="window.location='DashBoard.jsp'"class="btn btn-default" />
                        </div>
                    </div>

            <!------------------------------------------------------------------------------------------------------------------------------------------------------>

        </div>





    </body>
</html>

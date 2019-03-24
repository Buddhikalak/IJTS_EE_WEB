<%-- 
    Document   : userProfile
    Created on : Jan 3, 2015, 8:19:07 PM
    Author     : Buddhika
--%>

<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/dashboard.css">
        <link rel="stylesheet" href="css/plugins/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="css/sb-admin-2.css">
        <link type="text/css" rel="stylesheet" href="font-awesome-4.1.0/css/font-awesome.min.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/plugins/metisMenu/metisMenu.min.js"></script>
        <script src="js/sb-admin-2.js"></script>
        <script src="js/jzone.js"></script>

           <%
        int uid=0;
            try {
              HttpSession s = request.getSession(true);
              int roleid = Integer.parseInt(s.getAttribute("utype").toString());
              int userid = Integer.parseInt(s.getAttribute("userid").toString());
              uid=userid;
              java.sql.ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='profile.jsp')");
              boolean isavailable = false;
              while (rs.next()) {
                  if (rs.getInt(1) == roleid) {
                
                  isavailable = true;

                  }

           }
              if (!isavailable) {
                   response.sendRedirect("AccessDenied.jsp");
            }
       } catch (NullPointerException e) {
              response.sendRedirect("singin.jsp");

           }
            
      Statement s=db.Database.Database();
     java.sql.ResultSet rs2= s.executeQuery("SELECT user.name,  user.l_name,  user.address,  user.email,  user.phone_number,  user.password,  user_type.type,  user.id FROM user  INNER JOIN user_type  ON user.user_type = user_type.id_user_type WHERE user.id='"+uid+"'");
     if(rs2.next()){       
        %>

    </head>
    <body>

        <br/>

        <div style="margin-left: 8%;margin-right: 8%;">

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
            <!--Form-->




            <div class="row" >
                <div class="col-lg-12">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            Profile
                        </div>
                        <div class="panel-body">
                            <form action="editUser.jsp" method="Post"> 
                                <div class="row show-grid">
                                    <div class="col-md-4">
                                        <h5>First Name</h5><input type="text" readonly="readonly" name="fname" value="<%=rs2.getString(1)%>" class="form-control" />
                                        <h5>Middle Name</h5><input type="text" readonly="readonly" name="mname" value="" class="form-control" />
                                        <h5>Last Name</h5><input type="text" readonly="readonly" name="lname" value="<%=rs2.getString(2)%>" class="form-control" />
                                        <br/><br/><br/>

                                    </div>
                                    <div class="col-md-4">
                                        <h5>Address</h5>
                                        <input type="text" readonly="readonly" name="address" value="<%=rs2.getString(3)%>" class="form-control" />
                                        <h5>E-mail</h5>
                                        <input type="text" readonly="readonly" name="email" value="<%=rs2.getString(4)%>" class="form-control" />
                                        <h5>Contact Number</h5>
                                        <input type="text" readonly="readonly" name="tp" value="<%=rs2.getString(5)%>" class="form-control" />
                                        <br/><br/><br/>

                                    </div>
                                    <div class="col-md-4">.
                                        <h5>User Name</h5>
                                        <input type="text" readonly="readonly" name="un" value="<%=rs2.getString(4)%>" class="form-control" />
                                        <h5>Password</h5>
                                        <input type="text" readonly="readonly" name="pw" value="<%=rs2.getString(6)%>" class="form-control" />
                                        <h5>User Type</h5>
                                        <input type="text" readonly="readonly" name="ut" value="<%=rs2.getString(7)%>" class="form-control" />
                                       <br/> <br/>
                                        </div>
                                         <% }%>
                                    
                                </div>
                    <input type="submit" class="btn btn-warning btn-danger" value="Edit" />

                       






                            <button type="button" onclick="ClickQuickStart()" class="btn btn-primary">Back to HomePage</button>            
     </form>
                        </div>
                        <div class="panel-footer">
                            UserProfile
                        </div>
                    </div>

                </div></div>

                                        <br/>
                                        
                                         <%@include   file="foot.jsp" %>

                                      

        </div>                        
     

    </body>
</html>

<%-- 
    Document   : index
    Created on : 12-Dec-2014, 19:24:43
    Author     : Mr.Buddhika
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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

        <%
            int uid = 0;
            try {
                HttpSession s = request.getSession(true);
                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                int userid = Integer.parseInt(s.getAttribute("userid").toString());
                uid = userid;
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='editUser.jsp')");
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

            Statement s = db.Database.Database();
            String m = null;
            ResultSet rs2 = s.executeQuery("SELECT user.name,  user.l_name,  user.address,  user.email,  user.phone_number,  AES_DECRYPT(password, SHA1(SHA(PASSWORD(MD5('953180898'))))),  user_type.type,  user.id FROM user  INNER JOIN user_type  ON user.user_type = user_type.id_user_type WHERE user.id='" + uid + "'");
            if (rs2.next()) {
                m = rs2.getString(4);
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
            <div>
                <div class="row" >
                    <div class="col-lg-12">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                User Editor
                            </div>
                            <div class="panel-body">
                                <form action="editAdmin.jsp" method="POST">
                                    <div class="row show-grid">
                                        <div class="col-md-4">

                                            <h5>First Name</h5><input type="text"  name="fname" value="<%=rs2.getString(1)%>" class="form-control"  data-validate="required" />
                                            <h5>Middle Name</h5><input type="text" name="mname" value="" class="form-control" />
                                            <h5>Last Name</h5><input type="text"  name="lname" value="<%=rs2.getString(2)%>" class="form-control" data-validate="required" />
                                            <br/><br/><br/>

                                        </div>
                                        <div class="col-md-4">
                                            <h5>Address</h5>
                                            <input type="text"  name="address" value="<%=rs2.getString(3)%>" class="form-control" data-validate="required" />
                                            <h5>E-mail</h5>
                                            <input type="text"  name="email" value="<%=rs2.getString(4)%>" class="form-control" data-validate="required,email" />
                                            <h5>Contact Number</h5>
                                            <input type="text"  name="tp" value="<%=rs2.getString(5)%>" class="form-control"data-validate="required,number" />
                                            <br/><br/><br/>

                                        </div>
                                        <div class="col-md-4">.
                                            <h5>User Name</h5>
                                            <input type="text"  name="un" readonly="readonly" value="<%=rs2.getString(4)%>" class="form-control" />
                                            <h5>Password</h5>
                                            <input type="text"  name="pw" value="<%=rs2.getString(6)%>" class="form-control"data-validate="required" />
                                            <h5>User Type</h5>
                                            <input type="text" readonly="readonly"  name="ut" value="<%=rs2.getString(7)%>" class="form-control" />

                                            <br/> <br/> <% }%>
                                        </div>
                                    </div>


                                    <button class="btn btn-outline btn-info"   type="submit" >Update User Details</button>
                                    <button type="button" onclick="ClickQuickStart()" class="btn btn-primary">Skip</button>
                                </form>




                            </div>
                            <div class="panel-footer">
                                User Profile
                            </div>
                        </div>

                    </div></div>



                <!------------------------------------------------------------------------------------------------------------------------------------------------------>
                <%@include file="footer.jsp" %>
            </div>





    </body>
</html>

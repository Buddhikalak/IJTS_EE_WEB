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
        <link rel="stylesheet" href="css/dashboard.css">
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
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='home.jsp')");
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
            <!--Menu-->
            <div align="center">
                <ul>
                    <li onclick="profile()">Profile </li>
                    <li onclick="editUser()">Edit your Profile</li>
                    <li onclick="bsc()">Buy Scratch Card</li>
                    <li onclick="window.location='cart.jsp'">Shopping Cart</li>
                    <li>Get Reload</li>
                    <li onclick="window.location='onlineHelp.jsp'">Online Help</li>
                    <li onclick="window.location='logOut.jsp'" >Logout</li>
                    <li onclick="window.location='http://about.me/buddhika.lakshan123'">Contact</li>
                    <li onclick="ClickDashBoard()" >DashBoard</li>
                </ul>

            </div>
            

            <br/>


            <div align="center">
                <img src="images/slider.png" />


            </div>

            <br /><br />
            <%@include   file="foot.jsp" %>

            
            



            <!------------------------------------------------------------------------------------------------------------------------------------------------------>

        </div>
       




    </body>
</html>

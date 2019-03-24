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
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='setpivilages.jsp')");
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

            <!--Add User Type-->
            <form action="AddPivilages" method="post">

            <div align="center" class="bubble" ac >
                <strong>Add User Access pages</strong><br/>
                <select name="user_type" class="inputs" style="text-align: center">
                    <option>Select User type</option>
                    <%
                        Statement s = db.Database.Database();
                        ResultSet rs = s.executeQuery("SELECT `type` FROM user_type");

                        while (rs.next()) {
                            String name = (rs.getString("type"));

                    %>

                    <option value="<%= name%>"> <%= name%> </option>
                    <%}%>

                </select>
                <br/> </br>
                <select name="page" class="inputs" style="text-align: center">
                    <option>Select Access page</option>
                    <%
                        Statement s1 = db.Database.Database();
                        ResultSet rs1 = s1.executeQuery("SELECT url FROM pages");

                        while (rs1.next()) {
                            String name = (rs1.getString("url"));

                    %>

                    <option value="<%= name%>"> <%= name%> </option>
                    <%}%>

                </select>
                </br> </br>

                <input type="submit" value="Submit" class="css_btn_class" /> <br/><br/>
        </form>

            <!------------------------------------------------------------------------------------------------------------------------------------------------------>

        </div>





    </body>
</html>

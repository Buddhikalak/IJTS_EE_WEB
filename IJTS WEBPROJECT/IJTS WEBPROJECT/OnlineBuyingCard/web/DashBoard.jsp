<%-- 
    Document   : index
    Created on : 12-Dec-2014, 19:24:43
    Author     : Mr.Buddhika
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dash Board</title>

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/plugins/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="css/footer.css">
        <link rel="stylesheet" href="css/viewplan.css">
        <link rel="stylesheet" href="css/sb-admin-2.css">
        <link type="text/css" rel="stylesheet" href="font-awesome-4.1.0/css/font-awesome.min.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/plugins/metisMenu/metisMenu.min.js"></script>
        <link rel="stylesheet" href="css/dashboard.css">
        <link rel="stylesheet" href="css/invoice.css.css">
        <script src="js/sb-admin-2.js"></script>
        <script src="js/jzone.js"></script>

        <script src="dashSideMenu/script.js"></script>
        <link rel="stylesheet" href="dashSideMenu/styles.css">

        <%double OriPrice = 0;
            try {

                HttpSession s = request.getSession(true);
                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='DashBoard.jsp')");
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

        <div id="cssmenu"><div id="menu-line" style="width: 107px; left: 75.71875px;"></div>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="home.jsp">Customer Interface</a></li>
                <li><a href="userProfile.jsp">User View All</a></li>
                <li class="active has-sub"><span class="submenu-button"></span><a href="#">Reports</a>
                    <ul>
                        <li> <a target="_blank" href="profit.jsp">View Profit</a></li>
                        <li> <a target="_blank" href="viewAllUsers.jsp">All Users</a></li>
                        <li> <a target="_blank" href="viewAllActiveCards.jsp">All Active Cards</a></li>
                        <li> <a target="_blank" href="viewAllSellCards.jsp">All Selling Cards</a></li>

                        <li> <a target="_blank" href="viewAllcardmodel.jsp">All Card Model</a></li>
                        <li> <a  target="_blank" href="networksViewAll.jsp">All Networks</a></li>

                    </ul>
                </li>
                <li class="active has-sub"><span class="submenu-button"></span><a href="#">Network</a>
                    <ul>
                        <li><a href="networkAdd.jsp">Add New</a></li>
                        <li><a href="networkViewAll.jsp">View All</a></li>

                    </ul>
                </li>
                <li><a href="addCardModel.jsp">CardModel & Pin</a></li>

                <li class="active has-sub"><span class="submenu-button"></span><a href="#">Settings</a>
                    <ul>
                        <li><a href="viewAdminProfile.jsp">Profile</a></li>
                        <li><a href="profit.jsp">Profit</a></li>
                        <li><a href="viewsession.jsp">sessions</a></li>
                        <li><a href="SETpivilages.jsp">Pivilages</a></li>

                    </ul>
                </li>
                <li><a href="download.jsp">Downloads</a></li>

                
                <li><a href="http://about.me/buddhika.lakshan123">Contact</a></li>
                
                <li><a href="logOut.jsp">Logout</a></li>
            </ul>
        </div>





        <br/>  <br/> 

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



            <form action="speedysearch" method="POST">
                <div align="right">

                    <input type="text" id="seee" name="serial" value="" />
                    Buy Serial
                    <input type="radio" id="r1" name="spin" value="r1" checked="checked" />
                    
                    <button class="btn btn-xl" type="submit"><i class="glyphicon glyphicon-zoom-in icon-white"></i>
                        Speedy Search
                    </button>
                </div>
            </form>

            <br/>


            <div class="col-lg-8">
                <div class="panel panel-red">
                    <div class="panel-heading">
                        View Online Users
                    </div>
                    <div class="panel-body" >
                        <table border="0" class="table">
                            <thead>
                                <tr>
                                    <th>Ip ver 4</th>
                                    <th>Login Time</th>
                                    <th>State</th>
                                    <th>Name</th>
                                    <th>Email</th>

                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    Statement s = db.Database.Database();

                                    ResultSet rs = s.executeQuery("SELECT  session.ip,  session.log_in_time,  session.state,  user.name,  user.email FROM slpincode.session  INNER JOIN slpincode.user    ON session.user_id = user.id WHERE session.state='Active'");
                                    while (rs.next()) {


                                %>
                                <tr>
                                    <td><%= rs.getString(1)%></td>
                                    <td><%= rs.getString(2)%></td>
                                    <td><%= rs.getString(3)%></td>
                                    <td><%= rs.getString(4)%></td>
                                    <td><%= rs.getString(5)%></td>

                                </tr>
                                <% }%>
                            </tbody>
                        </table>



                    </div>
                    <div class="panel-footer">
                        Online Users
                    </div>
                </div>


                <!--Load stock-->
                <div class="panel panel-red">
                    <div class="panel-heading">
                        Today Current Sale
                    </div>
                    <div class="panel-body" >
                        <table border="0" class="table">
                            <thead>
                                <tr>
                                    <th>Email</th>
                                    <th>Ip</th>
                                    <th>Login Time</th>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th>Invoice Id</th>

                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    System.out.println("ddddddddddddddddddd");
                                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                                    System.out.println(sdf.format(new java.util.Date()));


                                    ResultSet rr = s.executeQuery("SELECT`user`.name,`session`.ip,`session`.log_in_time,network.`name`,price.price,invoice_description.invoice_id FROM invoice INNER JOIN invoice_description ON invoice.invoice_id = invoice_description.invoice_id INNER JOIN pin ON pin.pin_id = invoice_description.pin_id INNER JOIN session_activities ON invoice.session_act_id = session_activities.idSession_Activities INNER JOIN `session` ON session_activities.session_id = `session`.session_id INNER JOIN `user` ON `session`.user_id = `user`.id INNER JOIN card_modle ON card_modle.idCard_Modle = pin.cardModle_id INNER JOIN price ON card_modle.price_id = price.id INNER JOIN network ON card_modle.network_id = network.id where `session`.log_in_time BETWEEN '" + sdf.format(new java.util.Date()) + "' AND '3015-12-31';");

                                    while (rr.next()) {
                                        OriPrice = OriPrice + Double.parseDouble(rr.getString(5));

                                %>
                                <tr>
                                    <td><%= rr.getString(1)%></td>
                                    <td><%= rr.getString(2)%></td>
                                    <td><%= rr.getString(3)%></td>
                                    <td><%= rr.getString(4)%></td>
                                    <td><%= rr.getString(5)%></td>
                                    <td><%= rr.getString(6)%></td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>



                    </div>
                    <div class="panel-footer">
                        Sale
                    </div>
                </div>
                <!--Chart-->




            </div>
            <div class="col-lg-4">
                <div class="panel panel-green">
                    <div class="panel-heading">
                        Notifications
                    </div>
                    <div class="panel-body">
                        <%
                            Statement s2 = db.Database.Database();
                            int max = 0;
                            ResultSet rs2 = s.executeQuery("SELECT max(visit) FROM visitours");
                            if (rs2.next()) {
                                max = rs2.getInt(1);

                            }
                        %>
                        <span class="label label-success">Total Visits:  <%= max%></span>
                        <h4> <span class="label label-warning">Today Total Income: <%= OriPrice%></span></h4>




                    </div>
                    <div class="panel-footer">
                        Selling Cards
                    </div>
                </div>

                <div class="chat-panel panel panel-default" s>
                    <div class="panel-heading">
                        <i class="fa fa-comments fa-fw"></i>
                        FeedBack
                        <div class="btn-group pull-right">
                            <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-chevron-down"></i>
                            </button>
                            <ul class="dropdown-menu slidedown">
                                <li>
                                    <a href="#">
                                        <i class="fa fa-refresh fa-fw"></i> Refresh
                                    </a>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <ul class="chat">
                            <li class="left clearfix">
                                <span class="chat-img pull-left">
                                    <img src="images/feed.png" alt="User Avatar" class="img-circle">
                                </span>

                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <strong class="primary-font">Jack Sparrow</strong> 
                                        <small class="pull-right text-muted">
                                            <i class="fa fa-clock-o fa-fw"></i> 12 mins ago
                                        </small>
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                    </p>
                                </div>

                            </li>


                            <%

                                String q = "SELECT `comment`.`comment`, `user`.`name` FROM `comment` , `user`";
                                Statement x = db.Database.Database();
                                ResultSet rsx = x.executeQuery("SELECT `comment`.`comment`, `user`.`name` FROM `comment` , `user`");
                                while (rsx.next()) {

                            %>
                            <li class="left clearfix">
                                <span class="chat-img pull-left">
                                    <img src="images/feed.png" alt="User Avatar" class="img-circle">
                                </span>

                                <div class="chat-body clearfix">
                                    <div class="header">
                                        <strong class="primary-font"><%= rsx.getString(2)%></strong> 
                                        <small class="pull-right text-muted">
                                            <i class="fa fa-clock-o fa-fw"></i> Feeds
                                        </small>
                                    </div>
                                    <p>
                                        <%= rsx.getString(1)%> </p>
                                </div>

                            </li>
                            <% }%>


                        </ul>
                    </div>
                    <!-- /.panel-body -->
                    <div class="panel-footer">
                        <div class="input-group">
                            <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your FeedBack here...">
                            <span class="input-group-btn">
                                <button onclick="saveFeedBack()" class="btn btn-warning btn-sm" id="btn-chat">
                                    Send
                                </button>
                            </span>
                        </div>
                    </div>
                    <!-- /.panel-footer -->


                </div>

            </div>



        </div>


        </div>
        <br /><br /> <br /><br /><br /><br /> <br /><br /><br /><br /> <br /><br /> <br /><br />
        <br /><br /> <br /><br /> <br /><br /> <br /><br /> <br /><br /> <br /><br /> <br /><br /><br /><br /> <br /><br /> <br /><br />
        <%@include   file="foot.jsp" %>


    </body>

</html>

<%-- 
    Document   : Selectcard
    Created on : Jan 4, 2015, 10:34:27 AM
    Author     : Buddhika
--%>

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
        <link rel="stylesheet" href="css/viewplan.css">
        <link rel="stylesheet" href="css/sb-admin-2.css">
        <link type="text/css" rel="stylesheet" href="font-awesome-4.1.0/css/font-awesome.min.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/plugins/metisMenu/metisMenu.min.js"></script>
        <link rel="stylesheet" href="css/dashboard.css">
        <script src="js/sb-admin-2.js"></script>
        <script src="js/jzone.js"></script>


        <script src="Cart/cart.js"></script>
        <link rel="stylesheet" href="Cart/cart.css">

        <%
            String networkId = request.getParameter("nid");
            try {
                HttpSession s = request.getSession(true);
                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='Selectcard.jsp')");
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
    <body>
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

            <!---- content-->





            <div class="row" >
                <div class="col-lg-12">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            Add to Cart                        </div>

                        <div class="panel-body">
                            <div class="product_grid">
                                <%
                                    ResultSet rs = db.Database.Database().executeQuery("SELECT price.price, network.name, COUNT(pin.cardModle_id) AS Qty FROM card_modle INNER JOIN network ON card_modle.network_id = network.id INNER JOIN price ON card_modle.price_id = price.id INNER JOIN pin ON pin.cardModle_id = card_modle.idCard_Modle WHERE network.id = '" + networkId + "' AND pin.state='1' GROUP BY price.price, card_modle.idCard_Modle, card_modle.network_id, card_modle.price_id, network.id, network.name, price.id");
                                    while (rs.next()) {
                                %>



                                <ul class="product_list list">
                                    <li class="product_item">
                                        <div class="product_sale">
                                            <p>On Sale</p>
                                        </div>
                                        <div class="product_image">
                                            <a href="#"><img src="images/net.png" alt=""></a>
                                            <div class="product_buttons">
                                                <button class="product_heart"><i class="fa fa-heart"></i></button>
                                                <button class="product_compare"><i class="fa fa-random"></i></button>
                                                <button class="add_to_cart"><i class="fa fa-shopping-cart"></i></button>
                                                <div class="quick_view">
                                                    <a href="#"><h6>Quick View</h6></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product_values">
                                            <div class="product_title">
                                                <h5><%= rs.getString(2)%></h5>
                                            </div>
                                            <div class="product_price">
                                                <a href="#"><span class="price_old">Rs:<%= rs.getString(1)%></span> <span class="price_new">Rs:<%= rs.getString(1)%></span></a>
                                                <span class="product_rating"></span>
                                            </div>
                                            <div class="product_desc">
                                                <p class="truncate">30 days valid <br/>Available <%= rs.getString(3)%> <br/> <label><b>$ <%= 0.0076*Double.parseDouble(rs.getString(1)) %></b></label> </p>
                                            </div>
                                            <div class="product_buttons">
                                                <button class="product_heart"><i class="fa fa-heart"></i></button>
                                                <button class="product_compare"><i class="fa fa-random"></i></button>
                                                <button class="add_to_cart" onclick="CreateCookey()"><i class="fa fa-shopping-cart"></i></button>
                                                <br/><br/>
                                                <div align="center">
                                                    
                                                    <a href="create_cookei.jsp?network=<%= rs.getString(2)%>&price=<%= rs.getString(1)%> "class="btn btn-outline btn-primary btn-xs">Get This Card</a>
                                                   


                                                </div>
                                            </div>
                                        </div>
                                    </li>





                                    <% }%>


                            </div> 


                            <div class="panel-footer">
                                <button type="button" onclick="ClickQuickStart()" class="btn btn-primary">Back to HomePage</button> 

                            </div>
                        </div></div>


                </div>


            </div>
                                     <%@include   file="foot.jsp" %>
      
        </div>
    </body>
</html>

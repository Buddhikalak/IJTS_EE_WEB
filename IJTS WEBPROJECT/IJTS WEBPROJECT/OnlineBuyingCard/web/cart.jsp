<%-- 
    Document   : cart
    Created on : Jan 13, 2015, 7:16:03 PM
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

            try {
                HttpSession s = request.getSession(true);
                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='Cart.jsp')");
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


            <div class="row" >
                <div class="col-lg-12">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            View Your Cart
                        </div>

                        <div class="panel-body">



                            <div align="center" style="background-color: #eeeeee;">
                                <table border="0" id="table" class="table" >
                                    <script>
                                        function deleterow()
                                        {
                                            document.getElementById("table").deleteRow(1);
                                        }
                                    </script>
                                    <thead>
                                        <tr>
                                            <th width="175">Item</th>
                                            <th width="50">Qty</th>
                                            <th width="112">Price</th>
                                            <th width="123">Sub Total price</th>
                                            <th width="100">Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            String item;
                                            int qty;
                                            int price = 0;
                                            int totalprice = 0;
                                        %>


                                        <%
                                            Cookie[] cookies = request.getCookies();
                                            if (cookies != null) {
                                                for (Cookie ck : cookies) {
                                                    if ("sl_pincode_save_cart".equals(ck.getName())) {
                                                        String ckarray[] = ck.getValue().split("_");
                                                        for (int i = 0; i < ckarray.length; i++) {
                                        %>  
                                        <tr>
                                            <%
                                                String modlearray[] = ckarray[i].split(",");
                                                for (int j = 0; j < modlearray.length; j++) {

                                                    if (modlearray[j].split("=")[0].equals("network")) {
                                            %>

                                            <td><%= modlearray[j].split("=")[1].toString()%></td>
                                            <td>1</td>


                                            <%
                                                //  network = modlearray[j].split("=")[1].toString();
                                            } else if (modlearray[j].split("=")[0].equals("price")) {
                                            %>
                                            <td><%= Integer.parseInt(modlearray[j].split("=")[1])%></td>
                                            <td name="total_cell_price">
                                                <%
                                                    int pprice = Integer.parseInt(modlearray[j].split("=")[1]) * 1;
                                                    totalprice = totalprice + pprice;
                                                %>  

                                                <%= pprice%>


                                            </td>
                                            <td>
                                                <form action="fuu.jsp" >
                                                    <input type="hidden" name="hidden" value="<%=ckarray[i]%>" />
                                                    <input type="submit" value="Delete" class="btn1" />
                                                </form>

                                                <style>
                                                    .btn1 {
                                                        background: #5bb1eb;
                                                        background-image: -webkit-linear-gradient(top, #5bb1eb, #2980b9);
                                                        background-image: -moz-linear-gradient(top, #5bb1eb, #2980b9);
                                                        background-image: -ms-linear-gradient(top, #5bb1eb, #2980b9);
                                                        background-image: -o-linear-gradient(top, #5bb1eb, #2980b9);
                                                        background-image: linear-gradient(to bottom, #5bb1eb, #2980b9);
                                                        -webkit-border-radius: 10;
                                                        -moz-border-radius: 10;
                                                        border-radius: 10px;
                                                        font-family: Georgia;
                                                        color: #ffffff;
                                                        font-size: 12px;
                                                        padding: 8px 10px 8px 10px;
                                                        border: solid #1f628d 0px;
                                                        text-decoration: none;
                                                    }

                                                    .btn1:hover {
                                                        background: #4a69e6;
                                                        background-image: -webkit-linear-gradient(top, #4a69e6, #2ab5e8);
                                                        background-image: -moz-linear-gradient(top, #4a69e6, #2ab5e8);
                                                        background-image: -ms-linear-gradient(top, #4a69e6, #2ab5e8);
                                                        background-image: -o-linear-gradient(top, #4a69e6, #2ab5e8);
                                                        background-image: linear-gradient(to bottom, #4a69e6, #2ab5e8);
                                                        text-decoration: none;
                                                    }
                                                </style>

                                            </td>
                                            <%
                                                        // price = Integer.parseInt(modlearray[j].split("=")[1]);
                                                    }

                                                }
                                            %>
                                        </tr>
                                        <%
                                                        }
                                                    }
                                                }
                                            }

                                        %>

                                    </tbody>
                                </table>

                            </div>


                            <div class="alert alert-success">
                                Your Total Price Is(USD) :$ <b><%=  0.0076 * totalprice%></b> (Sri lankan Rupees <%= totalprice%>/=)
                            </div>
                            <table border="0" align="center">

                                <tbody>
                                    <tr>

<!--   <td>  <a href="cotinue_shoping.jsp?p_tot=<%= totalprice%>" class="">Continue Shoping</a></td>-->

                                    </tr>


                                </tbody>
                            </table>




                            <br/>







                        </div>

 <%
                                    String k = totalprice + "";
                                    session.setAttribute("totalPriceOneCart", k);


                            %>

                        <div class="panel-footer">
                            <button type="button" onclick="ClickQuickStart()" class="btn btn-primary">Back to Home Page</button> 
                            <button type="button" onclick="window.location='Bscard.jsp'" class="btn btn-warning">Scratch Card</button> 
                            <button type="button" onclick="window.location='cart.jsp'" class="btn btn-success">Refresh Cart</button> 
                            <br/><br/>
                            <form action="CartNext.jsp" method="post">
                            <input type="hidden" name="hidtot" value="<%= totalprice%>" />
                            <input type="submit" value="process this Transaction WithOut Paypal" class="btn btn-danger" />
                            </form>
                            <br/>
                           
                            
                            
                            <form   onload="payPalRedirect();" name="_xclick" action="https://www.paypal.com/cgi-bin/webscr" method="post"> 
                                
                                

                                <input type="hidden" name="cmd" value="_xclick">
                                <input type="hidden" name="business" value="srilankaecode@gmail.com">
                                <input type="hidden" name="currency_code" value="USD">
                                <input type="hidden" value="http://localhost:8084/OnlineBuyingCard_EE/CartNext.jsp" name="return">
                                <input type="hidden" name="item_name" value="You are Redy to Buying To RechargeCard In Smart App.">

                                <input type="hidden" name="amount" id="amount" value="<%= 0.0076*totalprice  %>">

                                <input type="image" src="http://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="Make payments with PayPal - it's fast, free and secure!">













                            </form>

                        </div>
                    </div></div>


            </div>
                                 <%@include   file="foot.jsp" %>
                              
        </div>

    </body>
</html>

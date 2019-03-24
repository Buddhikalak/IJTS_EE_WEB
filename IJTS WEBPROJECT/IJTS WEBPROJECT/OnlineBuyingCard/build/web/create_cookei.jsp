<%-- 
    Document   : create_cookei
    Created on : Feb 2, 2014, 5:27:35 AM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        <%

            String network1 = request.getParameter("network");
            String price = request.getParameter("price");
            ResultSet rs = null;
          rs = db.Database.Database().executeQuery( "SELECT pin_id FROM pin WHERE `cardModle_id`=(SELECT `idCard_Modle` FROM card_modle WHERE network_id=(SELECT id FROM network WHERE `name`='"+network1+"') AND price_id=(SELECT id FROM price WHERE price='" + price + "'))and state='1'");
           
            if (rs.next()) {
                String combine = "network=" + network1 + ",price=" + price;
               
                try {
                    boolean isExsist = false;
                    Cookie cookie = null;
                    Cookie[] cookies = request.getCookies();
                    if (cookies != null) {
                        for (Cookie ck : cookies) {
                            if ("sl_pincode_save_cart".equals(ck.getName())) {
                                isExsist = true;
                                cookie = ck;
                            }
                        }
                    }
                    if (isExsist) {
                        String prefValue = cookie.getValue();
                        Cookie name = new Cookie("sl_pincode_save_cart", prefValue + "_" + combine);
                        name.setMaxAge(1 * 60 * 60 * 24 * 7 * 4);
                        response.addCookie(name);
                    } else {
                        Cookie name = new Cookie("sl_pincode_save_cart", combine);
                        name.setMaxAge(1 * 60 * 60 * 24 * 7 * 4);
                        response.addCookie(name);
                        System.out.println("create my sl pin code cookie");
                    }
                    response.sendRedirect("cart.jsp");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                response.sendRedirect("out_of_stock.jsp");
            }
        %>
    </body>
</html>

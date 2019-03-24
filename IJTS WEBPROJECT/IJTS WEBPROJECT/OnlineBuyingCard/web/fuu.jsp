<%-- 
    Document   : fuu
    Created on : Jan 13, 2015, 10:30:43 PM
    Author     : Buddhika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       
            System.out.println("awa");
            String parameter = request.getParameter("hidden");
            System.out.println("awaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");

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
                String KookieValue = "";
                String[] prefValue = cookie.getValue().split("_");
                for (String string : prefValue) {
                    if (!string.equals(parameter)) {
                        if (!KookieValue.equals("")) {
                            KookieValue += "_";
                        }
                        KookieValue += string;
                    }
                }

                Cookie name = new Cookie("sl_pincode_save_cart", KookieValue);
                name.setMaxAge(1 * 60 * 60 * 24 * 7 * 4);
                response.addCookie(name);
            }
            response.sendRedirect("cart.jsp");
        


%>.
    </body>
</html>

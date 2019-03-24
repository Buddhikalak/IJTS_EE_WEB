<%-- 
    Document   : CartNext
    Created on : Jan 17, 2015, 8:23:20 AM
    Author     : Buddhika
--%>

<%@page import="Modle.GetMaxInvoiceId"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            HttpSession s = request.getSession(true);
            String all_pincodes = null;
            try {

                int roleid = Integer.parseInt(s.getAttribute("utype").toString());
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='cartnext.jsp')");
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
        <%
            //session id
            System.out.print(s.getAttribute("user_s_id"));
            //activity id
            int a_id = 2;
            int s_a_id = 0;

            // save session activities
            Statement stx = db.Database.Database();
            stx.executeUpdate("INSERT INTO session_activities(session_id,activity_id,TIME,session_state) VALUES ('" + s.getAttribute("user_s_id") + "','" + a_id + "','" + new java.sql.Timestamp(new Date().getTime()) + "','Active')");
            System.out.print("saving complete session activites");
            // savind data to invoice
            Statement mtx = db.Database.Database();
            String ipAddress = request.getRemoteAddr();
            ResultSet rs3 = mtx.executeQuery("SELECT `idSession_Activities` FROM session_activities WHERE session_state='Active' AND session_id=(SELECT session_id FROM `session` WHERE  ip='" + ipAddress + "'AND `state`='Active')AND activity_id=(SELECT `idActivity` FROM activity WHERE `Activity`='BuyCard')");
            int idSession_Activities=0;
            while (rs3.next()) {
                idSession_Activities = rs3.getInt(1);
                
            }

            System.out.print("idsession_act===" +idSession_Activities);
            
            int invoice_id = new GetMaxInvoiceId().getMaxInvoiceId();
            invoice_id++;
            int search_invoice_id = 0;

            int totalprice = Integer.parseInt(request.getParameter("hidtot"));
            System.out.print("INSERT INTO invoice VALUES('" + invoice_id + "','" + idSession_Activities + "','" + totalprice + "')");
            mtx.executeUpdate("INSERT INTO invoice VALUES('" + invoice_id + "','" + idSession_Activities + "','" + totalprice + "')");
            session.setAttribute("invoiceID", invoice_id);
            // save invoice description
            Statement inv = db.Database.Database();
            Statement ipin = db.Database.Database();
            ResultSet rsinv = inv.executeQuery("SELECT invoice_id FROM invoice WHERE session_act_id ='" + idSession_Activities + "'");
            rsinv.next();
            search_invoice_id = rsinv.getInt(1);
            // read cookey

            String network = null;
            String price = null;
            int main_pin = 0;
            int inv_des_id = 0;
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie ck : cookies) {
                    if ("sl_pincode_save_cart".equals(ck.getName())) {
                        String ckarray[] = ck.getValue().split("_");
                        for (int i = 0; i < ckarray.length; i++) {

                            String modlearray[] = ckarray[i].split(",");
                            for (int j = 0; j < modlearray.length; j++) {

                                if (modlearray[j].split("=")[0].equals("network")) {
                                    System.out.print(modlearray[j].split("=")[1].toString());
                                    network = modlearray[j].split("=")[1].toString();
                                } else if (modlearray[j].split("=")[0].equals("price")) {
                                    System.out.print(modlearray[j].split("=")[1].toString());
                                    price = modlearray[j].split("=")[1].toString();
                                }
                                String qry = "SELECT pin_id FROM pin WHERE `cardModle_id`=(SELECT `idCard_Modle` FROM card_modle WHERE network_id=(SELECT id FROM network WHERE `name`='" + network + "')AND price_id=(SELECT id FROM  price WHERE price='" + price + "'))AND state='1' ";
                                System.out.println(qry);
                                ResultSet rsipin = ipin.executeQuery(qry);

                                if (rsipin.next()) {
                                    System.out.print(rsipin.getInt(1));
                                    main_pin = rsipin.getInt(1);
                                    Statement k = db.Database.Database();
                                    k.executeUpdate("INSERT INTO invoice_description VALUES('" + inv_des_id + "','" + search_invoice_id + "','" + rsipin.getInt(1) + "')");

                                    Statement drz1 = db.Database.Database();
                                    drz1.executeUpdate("UPDATE pin SET `state`='0' WHERE pin_id ='" + main_pin + "'");
                                    System.out.println("updated pin state");

                                    System.out.println(">>>>>>" + main_pin);
                                    all_pincodes = all_pincodes + "_" + main_pin;
                                }

                            }
                        }
                        Statement drz = db.Database.Database();
                        drz.executeUpdate("UPDATE session_activities SET session_state ='Deactive' WHERE `idSession_Activities`=(SELECT session_act_id FROM invoice  WHERE invoice_id= '" + search_invoice_id + "');");
                        System.out.print("Updated session acti..state");
                        // remove cokiee

                        Cookie name = new Cookie("sl_pincode_save_cart", null);
                        name.setMaxAge(2);
                        response.addCookie(name);

                        //_______________________
                        System.out.println(all_pincodes);
                        //http.open("POST", url, true);
                        //response.setStatus(307);

                        // response.sendRedirect(response.encodeRedirectURL("invoice.jsp?953180898=" +all_pincodes));
                        session.setAttribute("953180898", all_pincodes);
                        response.sendRedirect("invoice.jsp");

                    }
                }

            }


        %>




    </body>
</html>

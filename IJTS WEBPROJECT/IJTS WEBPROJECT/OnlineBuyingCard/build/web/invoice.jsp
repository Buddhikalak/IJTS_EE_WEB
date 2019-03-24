<%-- 
    Document   : Selectcard
    Created on : Jan 4, 2015, 10:34:27 AM
    Author     : Buddhika
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
            <span class="text-info">Full Details Sent To your Emal,If you Have a Problem Please Check Your Email And Please inform us,Thank You!</span>


            <!---- content-->

<div class="col-md-11">
        <div class="grid simple">
          <div class="grid-body no-border invoice-body"> <br>
           
            <div class="row">
              <div class="col-md-9">
                <h4 class="semi-bold">Smart Scratch/Reload Shop</h4>
                <address>
                <strong>Jzone Holdings.</strong><br>
                No 74,<br>
                Main Street,Kadawatha.<br>
                <abbr title="Phone">P:</abbr> 071-9011-772
                </address>
              </div>
              <div class="col-md-3"> <br>
                
                <div>
                  <div class="pull-left"> INVOICE DATE : </div>
 
                  <div class="pull-right"> <%= new Date()  %></div>
                  <div class="clearfix"></div>
                </div>
                <br>
                
              </div>
            </div>
            <table class="table">
              <thead>
                <tr>
                 
                  <th class="text-left">Network</th>
                  <th style="width:140px" class="text-right">Pin</th>
                  <th style="width:90px" class="text-right">Price</th>
                </tr>
              </thead>
              <tbody>
                <%
                    int p=0;
                int db_real_pin = 0;
               // String pin = request.getParameter("953180898");
                String pin=session.getAttribute("953180898").toString();
                String pinz[] = pin.split("_");
                Statement st= db.Database.Database();
                Statement st1=db.Database.Database();
               // out.write(session.getAttribute("invoiceID").toString());
                
                for (int i = 0; i < pinz.length; i++) {
                  System.out.println();
                  ResultSet rs= st.executeQuery(" SELECT n.`name`,AES_DECRYPT(p.pin_no, SHA1(SHA(PASSWORD(MD5('953180898'))))),q.price FROM network n,pin p,price q WHERE p.pin_id='"+ pinz[i].split("_")[0].toString()+"' AND q.id=(SELECT price_id FROM card_modle WHERE `idCard_Modle`=(SELECT `cardModle_id` FROM pin WHERE pin_no=(SELECT pin_no FROM pin WHERE pin_id ='"+ pinz[i].split("_")[0].toString()+"'))) AND n.id=(SELECT network_id FROM card_modle WHERE `idCard_Modle`=(SELECT `cardModle_id` FROM pin WHERE pin_no=(SELECT pin_no FROM pin WHERE pin_id ='"+ pinz[i].split("_")[0].toString()+"')))");
           
                  while(rs.next()){
                 //     out.write(rs.getString(1));
                 //     out.write("--------");
                    //  out.write(rs.getString(2));
                    //  out.write("------");
                    //  out.write(rs.getString(3));
                    //  out.write("--------");
                      p=p+Integer.parseInt(rs.getString(3));
                     
          
                %>
                <tr>
                 
                    <td><%= rs.getString(1) %></td>
                    <td class="text-right"><%= rs.getString(2) %></td>
                  <td class="text-right"><%= rs.getString(3) %></td>
                </tr>
                <% } } %>
              
                <tr>
                    <td></td>
                  <td class="text-right"><strong>Subtotal</strong></td>
                  <td class="text-right"><%= p %></td>
                </tr>
              
                <tr>
                    <td></td>
                  <td class="text-right no-border"><div class=""><strong>Total</strong></div></td>
                  <td class="text-right"><strong><%= p %></strong></td>
                </tr>
              </tbody>
            </table>
            <br>
            <br>
            <h5 class="text-right text-black">Designer identity</h5>
            <h5 class="text-right semi-bold text-black">Buddhika Lakshan</h5>
            <br>
            <br>
          </div>
        </div>
      </div>


                <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  <br/>  

 <%@include   file="foot.jsp" %>
        </div>
            
</body>
<script type="text/javascript">
  window.open("ip.jsp",'_blank');
 
</script>
</html>

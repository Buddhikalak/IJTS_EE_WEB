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
                ResultSet rs = db.Database.Database().executeQuery("SELECT user_type_id FROM user_pivilages WHERE page_id=(SELECT page_id FROM pages WHERE url ='speesysearch1.jsp')");
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
            <%

                String query = "SELECT pin.pin_id,AES_DECRYPT(pin.pin_no, SHA1(SHA(PASSWORD(MD5('953180898'))))),AES_DECRYPT(pin.serialNo, SHA1(SHA(PASSWORD(MD5('953180898'))))),batchno.BatchNo,pin.state,price.price,network.`name`,network.company_name,network.address,network.hotline,network.website,network.customer_sir_no,session_activities.time,`session`.ip,`session`.log_in_time,`session`.log_out_time,`session`.state,activity.Activity, user_type.type,`user`.`name`, `user`.email, `user`.phone_number, `user`.l_name FROM pin INNER JOIN card_modle ON card_modle.idCard_Modle = pin.cardModle_id INNER JOIN price ON card_modle.price_id = price.id INNER JOIN network ON card_modle.network_id = network.id INNER JOIN grn ON pin.pin_id = grn.pin_id INNER JOIN session_activities ON grn.session_act_id = session_activities.idSession_Activities INNER JOIN `session` ON session_activities.session_id = `session`.session_id INNER JOIN `user` ON `session`.user_id = `user`.id INNER JOIN user_type ON `user`.user_type = user_type.id_user_type INNER JOIN batchno ON batchno.idBatchNo = pin.batch_id INNER JOIN activity ON activity.idActivity = session_activities.activity_id WHERE pin.serialNo= AES_ENCRYPT('" + session.getAttribute("spdys") + "', SHA1(SHA(PASSWORD(MD5('953180898')))))";
                Statement s = db.Database.Database();
                ResultSet rs = s.executeQuery(query);
                if (rs.next()) {
                    System.out.println("Start");
                    System.out.println(rs.getString(1));
                    System.out.println(rs.getString(2));
                    System.out.println(rs.getString(3));
                    System.out.println(rs.getString(4));
                    System.out.println(rs.getString(5));
                    System.out.println(rs.getString(6));
                    System.out.println(rs.getString(7));
                    System.out.println(rs.getString(8));
                    System.out.println(rs.getString(9));
                    System.out.println(rs.getString(10));
                    System.out.println(rs.getString(11));
                    System.out.println(rs.getString(12));
                    System.out.println(rs.getString(13));
                    System.out.println(rs.getString(14));
                    System.out.println(rs.getString(15));
                    System.out.println(rs.getString(16));
                    System.out.println(rs.getString(17));
                    System.out.println(rs.getString(18));
                    System.out.println(rs.getString(19));
                    System.out.println(rs.getString(10));
                    System.out.println(rs.getString(21));
                    System.out.println(rs.getString(22));
                    System.out.println(rs.getString(23));






            %>
            <!------------------------------------------------------------------------------------------------------------------------------------------------------>

            <div class="col-lg-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Result
                    </div>
                    <div class="panel-body">
                        <style>
                            input{
                                text-align: center;

                                font-style: oblique;
                                font-style: inherit;
                                font-size: 16px;
                                font-weight: 100;
                            }
                        </style>
                        <div class="col-md-6">
                            <lable>Pin Id</lable>
                            <input type="text" name="pindetails" value="<%= rs.getString(1)%>" class="form-control" />
                            <lable>Pin Number</lable>
                            <input type="text" name="pindetails" value="<%= rs.getString(2)%>" class="form-control"  />
                            <lable>Serial Number</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(3)%>" class="form-control"  />
                            <lable>Batch Number</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(4)%>" class="form-control"  />
                            <lable>Pin State</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(5)%>" class="form-control" />
                            <lable>Card Price</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(6)%>" class="form-control"  />
                            <lable>Network Name</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(7)%>" class="form-control" />
                            <lable>Network Company</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(8)%>" class="form-control" />
                            <lable>Network Address</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(9)%>" class="form-control"  />
                            <lable>Network Hotline</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(10)%>" class="form-control"  />
                            <lable>Network Website</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(11)%>" class="form-control"  />
                            <lable>Network CustomerCare</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(12)%>" class="form-control"  />
                            <lable>Session Active Time</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(13)%>" class="form-control"  />
                            <lable>Ip</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(14)%>" class="form-control"  />
                            <lable>Login Time</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(15)%>" class="form-control"  />
                            <lable>Logout Time</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(16)%>" class="form-control"  />
                            <lable>Session State</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(17)%>" class="form-control"  />
                            <lable>Activity</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(18)%>" class="form-control"  />
                            <lable>User Type</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(19)%>" class="form-control"  />
                            <lable>User Name</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(20)%>" class="form-control"  />
                            <lable>User Email</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(21)%>" class="form-control"  />
                            <lable>User Phone Number</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(22)%>" class="form-control"  />
                            <lable><th>User LastName</lable><br/>
                            <input type="text" name="pindetails" value="<%= rs.getString(23)%>" class="form-control"  />
                            <%}%>


                        </div>

                    <div class="col-md-6">
                        <%
                            System.out.println("xxxx1");
                            Statement ss = db.Database.Database();
                            String qq = "SELECT AES_DECRYPT(pin.pin_no, SHA1(SHA(PASSWORD(MD5('953180898'))))),AES_DECRYPT(pin.serialNo, SHA1(SHA(PASSWORD(MD5('953180898'))))),batchno.BatchNo,pin.state,network.`name`,price.price,`user`.`name`,`user`.l_name,`user`.email,`user`.phone_number,user_type.type,`session`.log_in_time,`session`.log_out_time,`session`.ip FROM invoice INNER JOIN invoice_description ON invoice.invoice_id = invoice_description.invoice_id INNER JOIN pin ON invoice_description.pin_id = pin.pin_id INNER JOIN batchno ON pin.batch_id = batchno.idBatchNo INNER JOIN session_activities ON session_activities.idSession_Activities = invoice.session_act_id INNER JOIN `session` ON session_activities.session_id = `session`.session_id INNER JOIN `user` ON `session`.user_id = `user`.id INNER JOIN card_modle ON card_modle.idCard_Modle = pin.cardModle_id INNER JOIN price ON card_modle.price_id = price.id INNER JOIN network ON card_modle.network_id = network.id , user_type WHERE pin.serialNo=AES_ENCRYPT('" + session.getAttribute("spdys") + "', SHA1(SHA(PASSWORD(MD5('953180898')))))";
                            ResultSet rs1 = ss.executeQuery(qq);
                            if (rs1.next()) {
                                System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxx");

                                System.out.println(rs1.getString(1));
                                System.out.println(rs1.getString(2));
                                System.out.println(rs1.getString(3));
                                System.out.println(rs1.getString(4));
                                System.out.println(rs1.getString(5));
                                System.out.println(rs1.getString(6));
                                System.out.println(rs1.getString(7));
                                System.out.println(rs1.getString(8));
                                System.out.println(rs1.getString(9));
                                System.out.println(rs1.getString(10));
                                System.out.println(rs1.getString(11));
                                System.out.println(rs1.getString(12));
                                System.out.println(rs1.getString(13));
                                System.out.println(rs1.getString(14));
                             



                           

                        %>

                        <lable>Pin Number</lable>
                        <input type="text" name="pindetails" value="<%= rs1.getString(1)%>" class="form-control" />
                        <lable>Serial Number</lable>
                        <input type="text" name="pindetails" value="<%= rs1.getString(2)%>" class="form-control"  />
                        <lable>Batch</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(3)%>" class="form-control" />
                        <lable>PIn State</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(4)%>" class="form-control" />
                        <lable>Network</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(5)%>" class="form-control"  />
                        <lable>Card Price</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(6)%>" class="form-control"  />
                        <lable>Buyer Name</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(7)%>" class="form-control"  />
                        <lable>Buyer LastName</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(8)%>" class="form-control"  />
                        <lable>Buyer Email</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(9)%>" class="form-control"  />
                        <lable>Buyer Phone Number</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(10)%>" class="form-control"  />
                       
                        <lable> USerType</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(11)%>" class="form-control"  />
                        <lable>Session LogIn</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(12)%>" class="form-control" />
                        <lable>Session logout</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(13)%>" class="form-control"  />
                        <lable>Ip</lable><br/>
                        <input type="text" name="pindetails" value="<%= rs1.getString(14)%>" class="form-control"  />
                        
<%} %>

                    </div></div>
                    <div class="panel-footer">
                        Result
                   
                </div>
            </div>

            </div>



        </div>





    </body>
</html>

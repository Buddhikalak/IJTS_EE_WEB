<%-- 
    Document   : index
    Created on : 12-Dec-2014, 19:24:43
    Author     : Mr.Buddhika
--%>

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
        <script src="js/validation.js"></script>

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
                  <div class="row" >
                <div class="col-lg-12">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                           Create User
                        </div>
                        
                        <div class="panel-body">
                               <form action="CreateUser"  onsubmit=""  method="POST">
                                
                          <div class="row show-grid">
                           
                              <div class="col-md-4">
                                  <h5>First Name</h5>
                                  <input type="text" name="fname" id="fname"value="" placeholder="First Name" class="form-control" data-validate="required,text" />
                                  <h5>Middle Name</h5>
                                   <input type="text" name="mname" value="" placeholder="Middle Name" class="form-control"   />
                                  <h5>Last Name</h5>
                                   <input type="text" name="lname" id="lname" value="" placeholder="Last Name" class="form-control" data-validate="text"  />
                                 
                                 
                                </div>
                               <div class="col-md-4">
                                  <h5>Address line1</h5>
                                   <input type="text" name="ad1" id="ad1" value="" placeholder="Address line1" class="form-control" data-validate="required,text"  />
                                  <h5>Address line2</h5>
                                  <input type="text" name="ad2" id="ad2" value="" placeholder="Address line2" class="form-control" data-validate="required,text" />
                                  <h5>Address line3</h5>
                                  <input type="text" name="ad3" id="ad3" value="" placeholder="Address line3" class="form-control" data-validate="required,text" />
                                 </div>
                               <div class="col-md-4">
                                  <h5>Email</h5>
                                  <input type="email" name="email" id="ctypeEmail" onchange="validateEmail()" placeholder="E-mail" class="form-control" data-validate="required,email"  />
                                  <h5>Phone Number</h5>
                                  <input type="tel" name="tel" id="tel" value="" placeholder="Phone Number" class="form-control" data-validate="phone"  />
                                  <h5>Password</h5>
                                  <input type="password" id="pw" name="pw" value="" placeholder="Password" class="form-control" data-validate="required,password" />
                                 
                                </div>
                              
                              
                                
                            </div>

                                   <script src="js/vemail.js"></script>
                                   <button type="submit"class="btn btn-outline btn-info"type="submit" >Create New User</button>
                                 <button type="button" onclick="window.location='home.jsp'" class="btn btn-primary">Skip</button>
                               </form>
                           
                            
                            
                            
                        </div>
                        <div class="panel-footer">
                            Administrator Profile
                        </div>
                    </div>
                    
                </div></div>



            <!------------------------------------------------------------------------------------------------------------------------------------------------------>

            <%@include file="footer.jsp" %>
            
        </div>





    </body>
</html>

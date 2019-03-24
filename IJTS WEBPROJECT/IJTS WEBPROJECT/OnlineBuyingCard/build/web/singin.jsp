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
        <script src="js/validation.js"></script>
        <script src="js/jzone.js"></script>

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
            <div class="col-lg-8">
                <br>

                <iframe src="web animation/index.html" style="width:865px;height:279px;max-width:100%;overflow:hidden;border:none;padding:0;margin:0 auto;display:block;" marginheight="0" marginwidth="0"></iframe>
            </div>


            <div class="col-lg-4" style="border-left: #000 double thin ">
                <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>

                <div class="wrap">
                    <form action="loginAcsess" method="post">
                        <h3>Login</h3>
                        <input type="email" id="inputUserEmail" name="Email" placeholder="Email" data-validate="required,email">
                        <input type="password" id="inputUserPassword" name="pw" placeholder="Password" data-validate="required,text">
                        <a href="forgotpassword.jsp">Forgot Your Password</a>
                        <button type="submit">Log In</button>
                    </form>
                    
                </div>



                <!-- /.panel -->
            </div>
            <br/>
            <style>
                .wrap {
                    font-family: "Open Sans", "Helvetica Neue", "Helvetica", sans-sarif;
                    background: #eee;
                    padding: 20px;
                }

                form {
                    margin: 0 auto;
                    padding: 20px;
                    background-color: #fff;
                    width: 300px;
                }

                form h3 {
                    margin: 0;
                    padding: 0;
                    color: #555;
                }

                input,
                button {
                    display: block;
                    width: 83%;
                    margin: 20px auto;
                    border: none;
                    padding: 10px;
                    font-size: 14px;
                }

                button {
                    background-color: #27ae60;
                    color: #fff;
                    width: 100%
                }

                button:hover {
                    background-color: #2ecc71;
                }

                input {
                    background: #eee;
                    padding-left: 40px;
                }

                input[name="username"] {
                    background: #eee url("http://oi59.tinypic.com/e7mr0z.jpg") no-repeat;
                    background-position: 10px 50%;
                }

                input[name="password"] {
                    background: #eee url("http://oi60.tinypic.com/os92eo.jpg") no-repeat;
                    background-position: 10px 50%;
                }
            </style> 











            <!------------------------------------------------------------------------------------------------------------------------------------------------------>



        </div>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
        <%@include file="footer.jsp" %>

        <br/>





    </body>

</html>

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
            
                       
            <div align="center">
                 <table border="0" >
              
                <tbody>
                <form action="FPassword">
                   <tr>
                        <td><h4>Email</h4></td>
                        <td>&nbsp;</td>
                        <td><input type="text" name="email" id="tmail"  value="" class="form-control" placeholder="Email" /></td>
                        <td> &nbsp;<button type="submit" class="btn btn-info btn-circle"><i class="fa fa-check"></i>
                            </button></td> 
                   
                   </tr>
                </form>
                </tbody>
            </table>
            </div>



<br/><br/>
            <!------------------------------------------------------------------------------------------------------------------------------------------------------>
            <%@include file="footer.jsp" %>
        </div>





    </body>
</html>

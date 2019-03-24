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
            <div align="center" class="col-lg-12">
                <div class="col-md-8" align="center">
                    <div class="well well-lg">
                        <h4>Large Well</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p>
                    </div>
                </div>
                <div class="col-md-4" align="center">
                    <div class="well well-lg">
                        <div class="form-group">
                            <label>Phone Number</label>
                            <input type="tel" placeholder="0712345678" id="txtno"  onkeypress="return isNumberKey(event)" class="form-control" maxlength="10" name="PhoneNumber" value="" />
                            <label>Ammount</label>
                            <input type="number" onkeypress="return isNumberKey(event)" class="form-control"  name="pri" value="" />
                            <a class="button"  style="text-decoration: none;color: black">Reload</a>                       
                        </div>

                        <SCRIPT language=Javascript>
                            <!--
                            function isNumberKey(evt)
                            {
                                var charCode = (evt.which) ? evt.which : event.keyCode
                                if (charCode > 31 && (charCode < 48 || charCode > 57))
                                    return false;

                                 
                                return true;
                                
                               
                                    
                                
                            }
                            
                           
      
                     
                        </SCRIPT>



                        <style>


                            .button {
                                display: inline-block;
                                padding: 10px 40px;
                                color: #fff;
                                font-family: sans-serif;
                                background: #90ee00;
                                margin: 40px;
                                position: relative;
                                overflow: hidden;
                                cursor: pointer;
                                z-index: 2;
                            }

                            .button:after {
                                display: block;
                                content: '';
                                position: absolute;
                                top: -200px;
                                left: 100%;
                                transition: all 0.3s ease-out;
                                border-width: 200px;
                                border-style: solid;
                                border-color: red red transparent transparent;
                                z-index: -1;
                            }

                            .button:hover:after {
                                top: 0;
                                left: -100px;
                            }
                        </style>
                    </div>
                </div>


            </div>

            <!------------------------------------------------------------------------------------------------------------------------------------------------------>

        </div>





    </body>
</html>

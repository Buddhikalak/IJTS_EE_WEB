<%-- 
    Document   : dashSide
    Created on : Feb 2, 2015, 5:12:25 PM
    Author     : Buddhika
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="dashSideMenu/bdside.css">
    </head>
    <body>
        
                <ul><li onclick="ClickHomePage()">Home</li>

                    <li onclick="ClickQuickStart()">Customer Interface</li>
                    <li>User<ul>
                            <li onclick="ClickUserViewAll()">View All</li>


                        </ul>
                    </li>
                    <li>Network<ul>
                            <li onclick="ClickAddNetwork()">Add New</li>
                            <li onclick="ClickNetworkViewAll()">View All</li>


                        </ul>
                    </li>

                    <li>Settings<ul>
                            <li onclick="AdminProfile()" >Profile</li>
                            <li onclick="window.location='profit.jsp';">View Profit</li>
                            <li>Bacup Database</li>


                        </ul>
                    </li>
                    <li>Reports<ul>
                            <li onclick="window.location='profit.jsp';">View Profit</li>
                            <li onclick="window.open('viewAllUsers.jsp','_blank')" >All Users</li>
                            <li onclick="window.open('viewAllActiveCards.jsp','_blank')">All Active Cards</li>
                            <li onclick="window.open('viewAllSellCards.jsp','_blank')">All Selling Cards</li>

                            <li onclick="window.open('viewAllcardmodel.jsp','_blank')">All Card Model</li>
                            <li onclick="window.open('networksViewAll.jsp','_blank')">All Networks</li>



                        </ul>
                    </li>
                    <li onclick="window.location='logOut.jsp';">Logout</li>

                    <li>Contact</li>
                </ul>
    </body>
</html>

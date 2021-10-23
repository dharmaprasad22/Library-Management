
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>CPC Library</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <style type="text/css" media="all">
            @import "Images/style.css";
        </style>
    </head>

    <body>
        <font color="yellow"><h4 align="right"><a href="Home.jsp"><img src="Images/SignOut.gif" width="90" height="40" ></a></h4></font>
    <marquee> <font color="yellow">
            <h3>
                <%
                java.util.Date now=new java.util.Date();
                %>
                Welcome Admin,Logged In at :<%=now %><br>

            </h3>
        </font>
    </marquee>
        <div class="content">
            <div id="header">
                <div class="title">
                    <h1>CPC LIBRARY </h1>
                    <h3>Choose Your Destiny </h3>
                </div>
            </div>
            <div id="main">

                <table width="100%" border="0" >
                    <thead>
                        <tr>
                            <th align="center" colspan="2"><h1> &nbsp;&nbsp;&nbsp;&nbsp; </h1></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td width="25%">
                                <div class="leftmenu">
                                    <div class="nav">
                                        <ul><font size="+1">
                                               <li><a href="AdminHome.jsp">Main View</a></li>
                                                <li><a href="AddMember.jsp">Add</a></li>
                                                <li><a href="EditMember.jsp">Edit</a></li>
                                                <li><a href="DeleteMember.jsp">Delete</a></li>
                                            </font>
                                        </ul>
                                    </div>
                                </div>
                            </td>
                            <td width="75%" align="center"><font size="+2"><b>Add New Member<br><br></b></font>
                            <form action="AddMember2.jsp" method="POST">
                            <table border="0">
                                <thead>
                                    <tr>
                                        <th colspan="2" align="center"><h2><b>Enter the Details</b></h2></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><b>Member ID:</b></td>                                        
                                        <td><input type="text" name="memID" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Name:</b></td>
                                        <td><input type="text" name="name" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Stream :</b></td>
                                        <td><input type="text" name="stream" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Sem :</b></td>
                                        <td><input type="text" name="sem" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Date Of Join:</b></td>
                                        <td><input type="text" name="doj" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Date Of Expire:</b></td>
                                        <td><input type="text" name="doe" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Phone No:</b></td>
                                        <td><input type="text" name="phoneno" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Email:</b></td>
                                        <td><input type="text" name="email" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td align="center"><input type="submit" value="Save" /></td>
                                        <td align="center"><input type="reset" value="Clear" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div id="prefooter"></div>
            <div id="footer">
                
            </div>
        </div>
    </body>
</html>
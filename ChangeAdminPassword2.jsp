

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

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
            java.util.Date now = new java.util.Date();
                %>
                Welcome User,Logged In at :<%=now%><br>

                <%/*
                 */
                %>
            </h3>
        </font>
    </marquee>

    <%
            Cookie[] myCookie = request.getCookies();
            if (myCookie != null) {
                if (myCookie[0].getName().toString().equalsIgnoreCase("ID")) {
                    if (myCookie[0].getValue().toString().equalsIgnoreCase("0")) {
                        response.sendRedirect("Home.jsp");
                    }
                }
            }
            
    %>
    <div class="content">
        <div id="header">
            <div class="title">
                <h1>CPC LIBRARY </h1>
                <h3>Choose Your Destiny </h3>
            </div>
        </div>
        <div id="main">

            <table width="100%" border="0">
                <thead>
                    <tr>
                        <th align="center" colspan="2"><h1> &nbsp;&nbsp;&nbsp;&nbsp; Main View<br></h1></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td width="25%">
                            <div class="leftmenu">
                                <div class="nav">
                                    <ul><font size="+1">
                                            <li><a href="AdminHome.jsp">Main View</a></li>
                                                <li><a href="MemberEntry.jsp">Member Entry</a></li>
                                                <li><a href="BookEntry.jsp">Book Entry</a></li>
                                                <li><a href="ViewRequests.jsp">View Requests</a></li>
                                                <li><a href="IssueBook.jsp">Issue Book</a></li>
                                                <li><a href="ReturnBook.jsp">Return Book</a></li>
                                                <li><a href="ChangeAdminPassword.jsp">Change Password</a></li>
                                        </font>
                                    </ul>
                                </div>
                            </div>
                        </td>
                        <td width="75%" align="center"><font size="+2"><b>Change Password<br><br></b></font>
                                    <%
                String oldpass = request.getParameter("OldPassword");
                String newpass = request.getParameter("NewPassword");
                String newpass2 = request.getParameter("NewPassword2");

                if (newpass == null) {
                                  %>
                            <br><h2>You have not entered any password</h2>
                            <%
                } else {
                                  Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
                                PreparedStatement ps = con.prepareStatement("select * from adminlogin where username='" + myCookie[0].getValue() + "' and password='" + oldpass + "';");
                                ResultSet rs = ps.executeQuery();
if(rs.next())
{
ps = con.prepareStatement("update adminlogin set password='" + newpass2 + "';");
           int i = ps.executeUpdate();

                                                                 %>
                            <br><h2>Your Password was Successfully Updated.</h2>
                            <%
                                }
                                }
                                %>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>



        <div id="prefooter"></div>
        <div id="footer">
          
            </div>
        </div>
    </div>
</body>
</html>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
                                            <li><a href="Search.jsp">Search</a></li>
                                            <li><a href="Apply.jsp">Apply</a></li>
                                            <li><a href="Cancel.jsp">Cancel</a></li>
                                            <li><a href="Status.jsp">Status</a></li>
                                            <li><a href="ChangeUserPassword.jsp">Change Password</a></li>
                                        </font>
                                    </ul>
                                </div>
                            </div>
                        </td>
                        <td width="75%" valign="top" align="center"><font size="+2"><b>Book Application<br><br></b></font>
                                    <%
            String memID = request.getParameter("memID");
            String name = request.getParameter("name");
            String stream = request.getParameter("stream");
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String callno = request.getParameter("callno");
            String accno = request.getParameter("accno");
            String applyDate = request.getParameter("applyDate");
 Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
          
            PreparedStatement ps = con.prepareStatement("select * from book where Title='" + title + "';");
            ResultSet rs = ps.executeQuery();
            if (rs.next() == false) {
                                    %>
                            <br><h1>Sorry, The Requested Book does not exist in the Database.</h1><br>
                            <h1>Please try with another Title</h1>
                                <%            } else {
                ps = con.prepareStatement("select * from book where callno='" + callno + "' and Title='" + title + "' and AccountNo='" + accno + "';");
                rs = ps.executeQuery();
                if (rs.next() == false) {
                                %>
                            <br><h1>Sorry, The Given Values are not matching in the Database.</h1><br>
                            <h1>Please check the given details</h1>
                                <%                    } else {
                    ps = con.prepareStatement("insert into apply(MemID,MName,Stream,Title,Author,AccountNo,CallNo,ApplyDate) values('" + memID + "','" + name + "','" + stream + "','" + title + "','" + author + "','" + accno + "','" + callno + "','" + applyDate + "');");
                    int i = ps.executeUpdate();
                                %>
                                <br><h1>The Application for Requested Book is Recieved.</h1><br>
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
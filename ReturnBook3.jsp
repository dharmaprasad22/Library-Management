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
                Welcome Admin,Logged In at :<%=now%><br>

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
                                                <li><a href="MemberEntry.jsp">Member Entry</a></li>
                                                <li><a href="BookEntry.jsp">Book Entry</a></li>
                                                <li><a href="ViewRequests.jsp">View Requests</a></li>
                                                <li><a href="IssueBook.jsp">Issue Book</a></li>
                                                <li><a href="ReturnBook.jsp">Return Book</a></li>
                                               <!-- <li><a href="ChangeAdminPassword.jsp">Change Password</a></li>-->
                                        </font>
                                    </ul>
                                </div>
                            </div>
                        </td>
                        <td width="75%" valign="top" align="center"><font size="+2"><b>Return Book<br><br></b></font>
                                    <%
            if (request.getParameter("Cancel") != null) {
                response.sendRedirect("ReturnBook.jsp");
            }
            String memID = request.getParameter("memid");
            String name = request.getParameter("name");
            String callno = request.getParameter("callno");
            String accno = request.getParameter("accno");
            String title = request.getParameter("title");
            String issueDate = request.getParameter("issueDate");
            String returnDate = request.getParameter("returnDate");

  Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
          
          PreparedStatement ps = con.prepareStatement("insert into returnbook(MemID,Name,CallNo,AccountNo,Title,IssueDate,ReturnDate) values('" + memID + "','" + name + "','" + callno + "','" + accno + "','" + title + "','" + issueDate + "','" + returnDate + "');");
            int i = ps.executeUpdate();
            ps = con.prepareStatement("delete from issue where Callno='" + callno + "';");
            i = ps.executeUpdate();
                                    %>
                            <br><h1>The Book was Successfully Returned by the Member with ID=<%=memID%>.</h1><br>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div id="prefooter"></div>
       
    </div>
</body>
</html>
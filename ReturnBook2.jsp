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
            String callno = request.getParameter("callno");
            if (callno != null) {
                 Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");;
                PreparedStatement ps = con.prepareStatement("select * from issue where Callno='" + callno + "';");
                ResultSet rs = ps.executeQuery();
                if (rs.next() == true) {
                                    %>
                            <form action="ReturnBook3.jsp" method="POST">
                                <table border="0">
                                    <thead>
                                        <tr>
                                            <th colspan="2" align="center"><h2><b>Verify the Details</b></h2></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><b>Member ID:</b></td>
                                            <td><input type="text" name="memid" value=<%=rs.getString("MemID")%> /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Name:</b></td>
                                            <td><input type="text" name="name" value=<%=rs.getString("Name")%> /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Call No:</b></td>
                                            <td><input type="text" name="callno" value=<%=rs.getString("CallNo")%> /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Account No:</b></td>
                                            <td><input type="text" name="accno" value=<%= rs.getString("AccountNo")%> /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Book Title:</b></td>
                                            <td><input type="text" name="title" value=<%= rs.getString("Title")%> /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Issue Date:</b></td>
                                            <td><input type="text" name="issueDate" value=<%= rs.getString("IssueDate")%> /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Return Date:</b></td>
                                            <td><input type="text" name="returnDate" value=<%= rs.getString("ReturnDate")%> /></td>
                                        </tr>
                                        <tr>
                                            <td align="center"><input type="submit" value="Return" /></td>
                                            <td align="center"><input type="submit" value="Cancel" name="Cancel" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>
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
</body>
</html>
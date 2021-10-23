
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
             
                                        </font>
                                    </ul>
                                </div>
                            </div>
                        </td>
                        <td width="75%" valign="top" align="center"><font size="+2"><b>Issue Book<br><br></b></font>
                                    <%
            String s = request.getParameter("Cancel");
            if (s != null) {
                response.sendRedirect("IssueBook.jsp");
            }

            String appid = request.getParameter("Appid");
            String memID = request.getParameter("memid");
            String name = request.getParameter("name");
            String BTitle = request.getParameter("BTitle");
            String callno = request.getParameter("callno");
            String accno = request.getParameter("accno");
            String issueDate = request.getParameter("issueDate");
            String returnDate = request.getParameter("returnDate");

              Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            PreparedStatement ps = con.prepareStatement("select * from issue where Callno='" + callno + "';");
            ResultSet rs = ps.executeQuery();

            if (rs.next() == true) {
                             %>
                            <br><h1>The Book with the Given Call No Already Issued !!</h1><br>
                            <%
            } else {
              
                      ps = con.prepareStatement("insert into issue(MemID,Name,CallNo,AccountNo,Title,IssueDate,ReturnDate,status) values('" + memID + "','" + name + "','" + callno + "','" + accno + "','" + BTitle + "','" + issueDate + "','" + returnDate + "','issued');");
                      int i = ps.executeUpdate();
                      
                      ps = con.prepareStatement("delete from apply where ApplicationID=" + appid + ";");
                      i = ps.executeUpdate();
                            %>
                            <br><h1>The Book was Successfully Issued to the Member with ID=<%=memID%>.</h1><br>
                            <%
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
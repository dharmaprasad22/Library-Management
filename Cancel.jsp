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
                java.util.Date now=new java.util.Date();
                %>
                Welcome User,Logged In at :<%=now %><br>

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
                            <td width="75%" align="center"><font size="+2"><b>Book Request Cancellation<br><br></b></font>
                             <form action="Cancel.jsp" method="POST">
                        <%
             Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            PreparedStatement ps;
            ResultSet rs;


            String KeyVal = request.getParameter("HiddenKey");
            if (KeyVal != null) {
                ps = con.prepareStatement("delete from apply where ApplicationID=" + KeyVal + ";");
                int i = ps.executeUpdate();
            }
                        %>
                        <table border="0">
                            <thead>
                                <tr>
                                    <th colspan="2" align="center"><h3><b>  </b></h3></th>
                                </tr>
                            </thead>
                            <tbody>
                            <table border="1" bgcolor="olive">
                                <thead>
                                    <tr>
                                        <th>Call No</th>
                                        <th>Account No</th>
                                        <th>Title</th>
                                        <th>Author</th>
                                        <th>Applied Date</th>
                                        <th>Cancel</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
            Cookie[] myCookie = request.getCookies();

            ps = con.prepareStatement("select * from apply where MemID='" + myCookie[0].getValue() + "'");
            rs = ps.executeQuery();
            String str;

            while (rs.next() == true) {
                str = rs.getString("ApplicationID");
                                    %>
                                    <tr>
                                        <td><input type="hidden" name="HiddenKey" value=<%=str%> /><%=rs.getString("CallNo")%></td>
                                        <td><%= rs.getString("AccountNo")%></td>
                                        <td><%= rs.getString("Title")%></td>
                                        <td><%= rs.getString("Author")%></td>
                                        <td><%= rs.getString("ApplyDate")%></td>
                                        <td><input type="submit" value="Cancel" name="Cancel" /></td>
                                    </tr>

                                    <%
            }
                                    %>
                                </tbody>
                            </table>

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
        </div>
    </body>
</html>
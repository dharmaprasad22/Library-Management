

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

                <table width="100%" border="0">
                    <thead>
                        <tr>
                            <th align="center" colspan="2"><h1> &nbsp;&nbsp;&nbsp;&nbsp;</h1></th>
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
                            <td width="75%" align="center"><font size="+2"><b>Search Book<br><br></b></font>
                            <form action="Search2.jsp" method="POST">
                                <h2>Search By :</h2>
                        <select name="Criteria">
                            <option value="author">Author Name</option>
                            <option value="title" >Book Title</option>
                        </select><br>
                        <h2>Enter the Search Key</h2>
                        <%
            String criteria = request.getParameter("Criteria");
            String key = request.getParameter("key");
                        %>
                        <input type="text" name="key" value=<%=key%> />
                        <input type="submit" value="Search" />
                            </form><br>
                    <%
                         Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            
            ResultSet rs = null;
            if (criteria.equalsIgnoreCase("author")) {
                PreparedStatement ps = con.prepareStatement("Select * from book where Author like '%" + key + "%';");
                rs = ps.executeQuery();
            } else if (criteria.equalsIgnoreCase("title")) {
                PreparedStatement ps = con.prepareStatement("Select * from book where Title like '%" + key + "%';");
                rs = ps.executeQuery();
            }
                    %>
                    <table border="1" bgcolor="aqua">
                        <thead>
                            <tr>
                                <th>CallNo</th>
                                <th>AccountNo</th>
                                <th>Title</th>
                                <th>Author</th>
                                <th>Edition</th>
                                <th>Publication</th>
                            </tr>
                        </thead>
                        <%
            while (rs.next()) {
                        %>
                        <tr>
                            <td><%=rs.getString("CallNo")%></td>
                            <td><%=rs.getString("AccountNo")%></td>
                            <td><%=rs.getString("Title")%></td>
                            <td><%=rs.getString("Author")%></td>
                            <td><%=rs.getString("Edition")%></td>
                            <td><%=rs.getString("Publisher")%></td>
                        </tr>
                        <%
            }
                        %>
                    </table>
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
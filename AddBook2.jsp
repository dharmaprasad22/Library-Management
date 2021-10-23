
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
                                                <li><a href="AddBook.jsp">Add</a></li>
                                                <li><a href="EditBook.jsp">Edit</a></li>
                                                <li><a href="DeleteBook.jsp">Delete</a></li>
                                        </font>
                                    </ul>
                                </div>
                            </div>
                        </td>
                        <td width="75%" valign="top" align="center"><font size="+2"><b>Add New Member<br><br></b></font>
                                    <%
            String callno = request.getParameter("callno");
            String accountno = request.getParameter("accountno");
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String price = request.getParameter("price");
            String edition = request.getParameter("edition");
            String publisher = request.getParameter("publisher");
            String yop = request.getParameter("yop");

              Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            PreparedStatement ps = con.prepareStatement("select * from book where CallNo='" + callno + "';");
            ResultSet rs = ps.executeQuery();
            if (rs.next() == true) {
                                    %>
                            <br><h1>Unable to Save, The Given Call No already exists in the Database !!</h1><br>
                            <%
            } else {
                ps = con.prepareStatement("insert into book(CallNo,AccountNo,Title,Author,Price,Edition,Publisher,YearOfPublication) values('" + callno + "','" + accountno + "','" + title + "','" + author + "','" + price + "','" + edition + "','" + publisher + "','" + yop + "');");
                int i = ps.executeUpdate();
                            %>
                            <br><h1>New Book is Successfully Added.</h1><br>
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
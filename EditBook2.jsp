

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
                        <td width="75%" align="center" ><font size="+2" ><b>Edit Book<br><br></b></font>
                            <form action="EditBook3.jsp" method="POST" >
                                <%
              Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            PreparedStatement ps;
            ResultSet rs;
            String callno = request.getParameter("callno");
            ps = con.prepareStatement("select * from book where CallNo='" + callno + "';");
            rs = ps.executeQuery();

            while (rs.next() == true) {
                                %>
                                <table border="0" >
                                    <thead>
                                        <tr>
                                            <th colspan="2" align="center"><h2><b>Edit Details</b></h2></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><b>Call No:</b></td>
                                            <td><input type="text" name="callno" value=<%= rs.getString("CallNo")%> /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Account No:</b></td>
                                            <td><input type="text" name="accountno" value=<%= rs.getString("AccountNo")%> /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Title:</b></td>
                                            <td><input type="text" name="title" value=<%= rs.getString("Title")%> /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Author:</b></td>
                                            <td><input type="text" name="author" value=<%= rs.getString("Author")%> /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Price:</b></td>
                                            <td><input type="text" name="price" value=<%= rs.getString("Price")%> /></td></td>
                                        </tr>
                                        <tr>
                                            <td><b>Edition:</b></td>
                                            <td><input type="text" name="edition" value=<%= rs.getString("Edition")%> /></td></td>
                                        </tr>
                                        <tr>
                                            <td><b>Publisher:</b></td>
                                            <td><input type="text" name="publisher" value=<%= rs.getString("Publisher")%> /></td></td>
                                        </tr>
                                        <tr>
                                            <td><b>Year Of Publication:</b></td>
                                            <td><input type="text" name="yop" value=<%= rs.getString("YearOfPublication")%> /></td>
                                        </tr>
                                        <tr>
                                            <td align="center"><input type="submit" value="Save" /></td>
                                            <td align="center"><input type="submit" value="Cancel" name="Cancel"/></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <%
            }
                                %>
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
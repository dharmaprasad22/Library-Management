
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
                                            <li><a href="AddMember.jsp">Add</a></li>
                                            <li><a href="EditMember.jsp">Edit</a></li>
                                            <li><a href="DeleteMember.jsp">Delete</a></li>
                                        </font>
                                    </ul>
                                </div>
                            </div>
                        </td>
                        <td width="75%" valign="top" align="center"><font size="+2"><b>Add New Member<br><br></b></font>
                                    <%
            String str = request.getParameter("Cancel");
            if (str != null) {
                response.sendRedirect("EditMember.jsp");
            } else {
                String memID = request.getParameter("memID");
                String name = request.getParameter("name");
                String stream = request.getParameter("stream");
                String sem = request.getParameter("sem");
                String doj = request.getParameter("doj");
                String doe = request.getParameter("doe");
                String phoneno = request.getParameter("phoneno");
                String email = request.getParameter("email");
 Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");

                PreparedStatement ps = con.prepareStatement("update member set Name='" + name + "',Stream='" + stream + "',sem='" + sem + "',DateOfJoin='" + doj + "',DateOfExpire='" + doe + "',phoneNo='" + phoneno + "',email='" + email + "' where MemID='" + memID + "'");
                int i = ps.executeUpdate();
                             %>
                            <br><h1>Record is Successfully Updated.</h1><br>
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
<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                Welcome Admin,Logged In at :<%=now %><br>

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
                            <td width="75%" align="center"><font size="+2"><b>Edit Member<br><br></b></font>
                             <form action="EditMember2.jsp" method="POST">
                        <%
            Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            PreparedStatement ps;
            ResultSet rs;
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
                                        <th>Member ID</th>
                                        <th>Name</th>
                                        <th>Stream</th>
                                        <th>Sem</th>
                                        <th>Join Date</th>
                                        <th>Expiry Date</th>
                                        <th>Phone No</th>
                                        <th>EmaiDDDl</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
            ps = con.prepareStatement("select * from member order by MemID;");
            rs = ps.executeQuery();           

            while (rs.next() == true) {
                
                                    %>
                                    <tr>
                                        <td><input type="text" name="memIDl" value=<%= rs.getString("MemID")%> /></td>
                                        <td><input type="text" name="name" value=<%= rs.getString("Name")%> /></td>
                                        <td><input type="text" name="stream" value=<%= rs.getString("Stream")%> /></td>
                                        <td><input type="text" name="sem" value=<%= rs.getString("sem")%> /></td>
                                        <td><input type="text" name="doj" value=<%= rs.getString("DateOfJoin")%> /></td>
                                        <td><input type="text" name="doe" value=<%= rs.getString("DateOfExpire")%> /></td>
                                        <td><input type="text" name="phoneno" value=<%= rs.getString("PhoneNo")%> /></td>
                                        <td><input type="text" name="email" value=<%= rs.getString("Email")%> /></td>
                                        <td><input type="submit" value="Save" name="Save" /></td>
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
    </body>
</html>-->

<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
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
            int AppID = Integer.parseInt(request.getParameter("AppID"));
            System.out.println("App is "+AppID);
            LocalDateTime nowdate=null;
            if (AppID != 0) {
                 Class.forName("com.mysql.jdbc.Driver");
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
         
                PreparedStatement ps = con.prepareStatement("SELECT * FROM apply WHERE apply.ApplicationID=" + AppID + ";");
                ResultSet rs = ps.executeQuery();
                String str;
                if (rs.next() == true) {
                                    %>
                            <form action="IssueBook3.jsp" method="POST">
                                <table border="0">
                                    <thead>
                                        <tr>
                                            <th colspan="2" align="center"><h2><b>Enter all the Details</b></h2></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><b>Member ID:</b></td>
                                            <td><input type="hidden" name="Appid" value=<%= AppID %> />
                                                <input type="text" name="memid" value=<%=rs.getString("MemID")%> /></td>
                                        </tr>
                                        <tr>
                                            <td><b>Name:</b></td>
                                            <td><input type="text" name="name" value=<%=rs.getString("MName")%> /></td>
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
                                            <td><input type="text" name="BTitle" value=<%= rs.getString("Title") %> /></td>
                                        </tr>
                                       %>
                                       <%
                                           DateTimeFormatter dateformat= DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
                                            nowdate=LocalDateTime.now();
                                           System.out.println(dateformat.format(nowdate));
                                           
                                           //Given Date in String format
                                          java.util.Date dateold = new java.util.Date();
                                          int day=dateold.getDay();
                                          int month=dateold.getMonth();
                                          int year=dateold.getYear();
                
		String oldDate = day+"/"+month+"/"+year;
		System.out.println("Date before Addition: "+oldDate);
		//Specifying date format that matches the given date
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar c = Calendar.getInstance();
		try{
		   //Setting the date to the given date
		   c.setTime(sdf.parse(oldDate));
		}catch(ParseException e){
			e.printStackTrace();
		 }
		   
		//Number of Days to add
		c.add(Calendar.DAY_OF_MONTH, 15);  
		//Date after adding the days to the given date
		String returnDate = sdf.format(c.getTime());  
		//Displaying the new Date after addition of Days
		System.out.println("Date after Addition: "+returnDate);
        
                                           %>
                                           
                                    
                                    <input type="hidden" name="issueDate" value=<%=nowdate %> />
                                    <input type="hidden" name="returnDate" value="<%=returnDate%>"
                                        <tr>
                                            <td align="center"><input type="submit" value="Issue" /></td>
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
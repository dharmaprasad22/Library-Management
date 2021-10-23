<%-- 
    Document   : Home
    Created on : Jul 18, 2010, 1:38:30 PM
    Author     : raki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body bgcolor="CCFFFF">
        <form action="ValidateUser" method="post">
            <table align="left" width="5%" height="20%" >
                <tbody>
                    <tr>
                        <td> <img src="Images/logo_1.jpg" width="90" height="71" alt="logo"></td></tr>
                </tbody>
            </table>
            <%
            Cookie[] myCookie=request.getCookies();
            if(myCookie!=null){
                if(myCookie[0].getName().toString().equalsIgnoreCase("ID")){
                    myCookie[0].setValue("0");
                }
            }
            %>
            <font color="red" size="10" >CPC LIBRARY<br><font size="4" style=" font-style:italic" >Aim at your dream</font></font>
                <%--<table align="right" width="500" height="40" >
                    <tbody>
                        <tr>
                            <td> <img src="coll1.png" width="750" height="91" alt="logo"></td></tr>
                    </tbody>
                </table>
                --%>
            <br> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp;

            <TABLE border=0 cellSpacing=0 cellPadding=1 width=150% height="20" bgColor=#0099ff align=center >
                <TR>
                    <TD></TD></TR>
            </TABLE>
            <marquee><font color="Red" size="4">C.Perumal Chettiar polytenic colg</font></marquee>
            <table  border="0" width="100%" >
                <thead>
                    <tr>
                        <th colspan="2" align="center">
                            <font size="5" color="purple">Welcome to CPC Library System</font>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td width="18%">
                            <table border="0" width="100%" height="150">
                                <tr>
                                    <th width="18%">
                                        <table border="0" bgcolor=#ADDFFF width="100%" align="left" height="250" cellspacing="20" >
                                            <tr>
                                                <td>
                                                    <a href="Home.jsp">HOME</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="AdminstratorLogin.jsp">ADMINISTRATOR</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="indexuserlogin.jsp">ABOUT US</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <a href="indextemp.jsp">CONTACT US</a>
                                                </td>
                                            </tr>
                                            </td>
                                </tr>
                            </table>
                            </th>
                        <th>                            
                            <table align="center" width="500" height="40" valign="top" >
                                <tbody>
                                    <tr>
                                        <td> <img src="Images/bg2_2.jpg" width="760" height="271" alt="logo">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <font color="black" size="3" style="azimuth:"  >
                                This is a website project created by the CPC students specially for the students of CPC campus.
                                Here a student can Search,Apply,Reserve or Cancel the Reservation for the Library books.
                                The Student must sign in with their CPC Library username and password to access these services.
                            </font>
                        </th>
                        <th width="10%">
                            <table width="100%" border="0" cellspacing="4" cellpadding="0" bgcolor=#ADDFFF align="top">
                                <tr>
                                    <td colspan="2" class="mainfontsmaller">Sign in with your<br>
                                        <font color="purple">CPC Library Account</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="mainfontsmaller">Username:</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                 <td width="100%"><input name="Login_username" id="Login_username" type="text" maxlength="50"  class="mainfontsmaller"  size="20"  /></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><span class="mainfontsmaller">Password:</span></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
              <td><input name="Login_password" id="Login_password" type="password" maxlength="50"  class="mainfontsmaller"  size="21"  /></td>
                                </tr>
                                <%
                                //Cookie myCookie = new Cookie("ID", "1");
                                //myCookie.setMaxAge(-1);
                                %>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><input type="submit" value="Sign In" name="SignIn" /></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="forgot" ><a href="member_passhelp.cfm" ><font color="#666666" ><u>Forgot Password?</u></font></a></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><a href="SendEmail.jsp" >Click Here</a></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><img src="/Graphics/spacer.gif" width="10" height="3" ></td>
                                </tr>                                
                                <tr>
                                    <td colspan="2"><img src="/Graphics/spacer.gif" width="10" height="3"></td>
                                </tr>
                    </tr>
            </table>
        </form>
    </body>
</html>

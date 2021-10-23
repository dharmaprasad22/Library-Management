
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="Images/Background.JPG">
        <font color="yellow"><h4 align="right"><a href="Home.jsp"><img src="Images/SignOut.gif" width="90" height="40" ></a></h4></font>
    <marquee> <font color="yellow">
        <h3>
            Welcome User,Logged In at :<br>
        </h3>
        </font>
    </marquee>
        <table border="0" width="100%">
            <thead>
                <tr>
                    <th colspan="2" align="center" ><font size="12" color="Red">CPC Library</font>
                    </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td width="20%">
                        <table border="0">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <a href="Search.jsp"><img src="Images/Search.JPG" width="90" height="40" alt="Add new contact"></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="Apply.jsp"><img src="Images/Apply.JPG" width="90" height="40" alt="Delete contact"></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="Reserve.jsp"><img src="Images/Reserve.JPG" width="90" height="40" alt="Edit contact"></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="Cancel.jsp"><img src="Images/Cancel.JPG" width="90" height="40" alt="search contact"></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="Status.jsp"><img src="Images/Status.JPG" width="90" height="40" alt="search contact"></a>
                                    </td>
                                </tr>                                
                            </tbody>
                        </table>
                    </td>
               <td valign="top" align="center"> <h1><b>Book Reservation</b></h1>
                        <form action="Apply2.jsp" method="POST">
                            <table border="0">
                                <thead>
                                    <tr>
                                        <th colspan="2" align="center"><h3><b>Enter the Details</b></h3></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><b>Reg No:</b></td>
                                        <td><input type="text" name="regno" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Name:</b></td>
                                        <td><input type="text" name="name" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Stream :</b></td>
                                        <td><input type="text" name="stream" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Book Title:</b></td>
                                        <td><input type="text" name="BTitle" value="" /></td>
                                    </tr>
                                     <tr>
                                        <td><b>Author:</b></td>
                                        <td><input type="text" name="Author" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Call No:</b></td>
                                        <td><input type="text" name="Callno" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Account No:</b></td>
                                        <td><input type="text" name="Accno" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td><b>Date:</b></td>
                                        <td><input type="text" name="ReserveDate" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td align="center"><input type="submit" value="Reserve" /></td>
                                        <td align="center"><input type="reset" value="Clear" /></td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>

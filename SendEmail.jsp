<%-- 
    Document   : SendEmail.jsp
    Created on : Sep 26, 2019, 6:21:07 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <form method=post action="mailservlet">
            sender     <input type=text name=text1><br>
            Reciever        <input type=text name=text2><br>
            Subject          <input type=text name=text3><br>
            Message        <textarea name='area1' rows=5 cols=30> </textarea>
            <input     type=submit>
        </form>
    </body>
</html>

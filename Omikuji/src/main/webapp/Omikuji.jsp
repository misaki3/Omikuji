<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String[] luckArray = {"大吉","中吉","小吉","吉","末吉","凶","大凶"};
int index = (int) (Math.random()*luckArray.length);
String luck = luckArray[index];

Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyy/MM/dd:mm");
String today = sdf.format(date);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>今日の運勢</title>
    </head>
    <body>
        <p><%=today %>の運勢は<%=luck%>です</p>
    </body>
</html>

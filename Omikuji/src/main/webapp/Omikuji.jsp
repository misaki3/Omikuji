<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String[] luckArray = {"大吉","中吉","小吉","吉","末吉","凶","大凶"};
int index = (int) (Math.random()*luckArray.length);
String luck = luckArray[index];

Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyy/MM/dd HH:mm:ss");
String today = sdf.format(date);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>今日の運勢</title>
    </head>
     <style>
        body{
            background-color:LightCyan;
        }
        h1{ 
            border-width:5px;
            width:700px;
            height:50px;
            border-style:dotted;
            border-color:LightCoral;
        }

    </style> 
    <body>
        <h1><%=today %>の運勢は<%=luck%>です</h1>
        <table>
      <tr>
        <td><a href='/color'>今日のラッキーカラーは...</a></td>
      </tr>
    </table>
    </body>
</html>

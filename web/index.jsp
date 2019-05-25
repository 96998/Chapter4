<%--
  Created by IntelliJ IDEA.
  User: Alexander
  Date: 2019/5/24
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <table class="list" cellpadding="2" cellspacing="2">
    <tr>
      <td>ip地址</td>
      <td><%=config.getInitParameter("hostip")%></td>
    </tr>
    <tr>
      <td>端口</td>
      <td><%=config.getInitParameter("port")%></td>
    </tr>
  </table>
  </body>
</html>

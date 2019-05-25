<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Alexander
  Date: 2019/5/25
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    /**
     * The test of the session's attribute
     * Alexander Jiajiason
     */
%>
<table cellspacing="2" cellpadding="2">
    <tr><%=session.getMaxInactiveInterval()%></tr>
    <br>
    <tr><%=session.getId()%></tr>
    <br>
    <tr><%=session.getLastAccessedTime()%></tr>
<%--    返回的是1970年1月1日00:00:00(CUT)Coordinated Universal Time到这个时间的秒数--%>
    <br>
    <tr><%=session.getCreationTime()%></tr>
    <br>
    <tr><%=session.isNew()%></tr>
    <br>
    <tr>
        <td>
<%-- 如下方法将CUT时间转化为标准时间    --%>
            <%
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
                Date d = new Date(session.getCreationTime());
                out.print("The create time of session"+sdf.format(d));
            %>
        </td>
    </tr>
</table>
</body>
</html>

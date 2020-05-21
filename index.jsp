<%@ page contentType="text/html; charset=UTF-8" %>
<%
String name = "World";
session.setAttribute("name", name);
String name2 = (String)session.getAttribute("name");
%>
<html>
<body>
<p>
name = <%= name %><br>
name2 = <%= name2 %><br>
<br>
</p>
<p>(sessionID=<%= session.getId() %>)</p>
</body>
</html>

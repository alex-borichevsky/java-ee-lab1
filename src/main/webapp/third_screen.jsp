<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 22.05.2022
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


</head>
<body>
<h1>
    <%= session.getAttribute("type_attribute")%>
    <%= session.getAttribute("money_attribute")%>
    <%= request.getParameter("color")%>


</h1>
<button onclick="ClickFunction()">
    back to main screen
</button>
<script>
    function ClickFunction(){
        <%session.setAttribute("type_attribute",null);
        session.setAttribute("money_attribute",null);
        session.setAttribute("color_attribute",null);
        %>



        window.location.href = 'http://localhost:8080/MyServlet_war'


    }
</script>

</body>
</html>

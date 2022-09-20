<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 22.05.2022
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <% if (request.getParameter("money") != null){
        String type = request.getParameter("money");
        session.setAttribute("money_attribute",type);


    }
        String currentResult = null;
        if (session.getAttribute("color_attribute") == null ){
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" selected=\"selected\">blue</option>\n" +
                    "        <option value=\"2\" >white</option>\n" +
                    "        <option value=\"3\">yellow</option>\n" +
                    "    </select>";



        }
        else if (session.getAttribute("color_attribute").equals("1")) {
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" selected=\"selected\">blue</option>\n" +
                    "        <option value=\"2\" >white</option>\n" +
                    "        <option value=\"3\">yellow</option>\n" +
                    "    </select>";

        }
        else if (session.getAttribute("color_attribute").equals("2"))
        {
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" >blue</option>\n" +
                    "        <option value=\"2\" selected=\"selected\">white</option>\n" +
                    "        <option value=\"3\">yellow</option>\n" +
                    "    </select>";

        }
        else {
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" >blue</option>\n" +
                    "        <option value=\"2\" >white</option>\n" +
                    "        <option value=\"3\" selected=\"selected\">yellow</option>\n" +
                    "    </select>";

        }



    %>

    <title>Hi</title>
</head>
<body>
<h2>Please chose a color you would like</h2>
<%= currentResult%>
<button onclick="ClickFunction()">
    See the result
</button>
</button>
<button onclick="ClickFunctionBack()">
    Go back
</button>
<script>
    function ClickFunction(){

        var select = document.getElementById('list').value;

        window.location.href = 'http://localhost:8080/MyServlet_war/andr?color=' + select;


    }
</script>
<script>
    function ClickFunctionBack(){
        var select = document.getElementById('list').value;




        window.location.href = 'http://localhost:8080/MyServlet_war/rodionov?colorback=' + select


    }
</script>

</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 22.05.2022
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <% if (request.getParameter("type") != null){
        String type = request.getParameter("type");
        session.setAttribute("type_attribute",type);

    }
    else if (request.getParameter("colorback") != null){
        session.setAttribute("color_attribute",request.getParameter("colorback"));

    }
        String currentResult = null;
        if (session.getAttribute("money_attribute") == null ){
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" selected=\"selected\">100$</option>\n" +
                    "        <option value=\"2\" >200$</option>\n" +
                    "        <option value=\"3\">300$</option>\n" +
                    "    </select>";



        }
        else if (session.getAttribute("money_attribute").equals("1")) {
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" selected=\"selected\">100$</option>\n" +
                    "        <option value=\"2\" >200$</option>\n" +
                    "        <option value=\"3\">300$</option>\n" +
                    "    </select>";

        }
        else if (session.getAttribute("money_attribute").equals("2"))
        {
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" >100$</option>\n" +
                    "        <option value=\"2\" selected=\"selected\">200$</option>\n" +
                    "        <option value=\"3\">300$</option>\n" +
                    "    </select>";

        }
        else {
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" >100$</option>\n" +
                    "        <option value=\"2\" >200$</option>\n" +
                    "        <option value=\"3\" selected=\"selected\">300$</option>\n" +
                    "    </select>";

        }

    %>




    <title>Hi</title>
</head>
<body>
<h2>Please chose a price you would like</h2>
<%= currentResult%>

<button onclick="ClickFunction()">
    Go to chose a color
</button>
<button onclick="ClickFunctionBack()">
    Go back
</button>
<script>
    function ClickFunction(){

        var select = document.getElementById('list').value;

        window.location.href = 'http://localhost:8080/MyServlet_war/andreevich?money=' + select;


    }
</script>
<script>
    function ClickFunctionBack(){
        var select = document.getElementById('list').value;




        window.location.href = 'http://localhost:8080/MyServlet_war/?moneyback=' + select


    }
</script>

</body>
</html>

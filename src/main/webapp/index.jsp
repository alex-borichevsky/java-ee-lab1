<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Please chose a car you would like to buy</h2>

<% String currentResult = null;
    if (request.getParameter("moneyback") != null){
        session.setAttribute("money_attribute",request.getParameter("moneyback"));
    }



        if (session.getAttribute("type_attribute") == null ){
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" selected=\"selected\">bmw</option>\n" +
                    "        <option value=\"2\" >merc</option>\n" +
                    "        <option value=\"3\">audi</option>\n" +
                    "    </select>";



        }
        else if (session.getAttribute("type_attribute").equals("1")) {
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" selected=\"selected\">bmw</option>\n" +
                    "        <option value=\"2\" >merc</option>\n" +
                    "        <option value=\"3\">audi</option>\n" +
                    "    </select>";

        }
        else if (session.getAttribute("type_attribute").equals("2"))
        {
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" >bmw</option>\n" +
                    "        <option value=\"2\" selected=\"selected\">merc</option>\n" +
                    "        <option value=\"3\">audi</option>\n" +
                    "    </select>";

        }
        else {
            currentResult = "<select id=\"list\">\n" +
                    "        <option value=\"1\" >bmw</option>\n" +
                    "        <option value=\"2\" >merc</option>\n" +
                    "        <option value=\"3\" selected=\"selected\">audi</option>\n" +
                    "    </select>";

        }









%>

    <%= currentResult%>


<button onclick="ClickFunction()">
        Go to chose a price
</button>




<script>
    function ClickFunction(){

        var select = document.getElementById('list').value;

        window.location.href = 'http://localhost:8080/MyServlet_war/rodionov?type=' + select;


    }
</script>


</body>
</html>

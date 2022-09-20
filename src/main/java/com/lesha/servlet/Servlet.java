package com.lesha.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("type");
        PrintWriter printWriter = response.getWriter();
        printWriter.println("<h1>"+ name + "</h1>");



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession httpSession = request.getSession();
        String money = request.getParameter("color");
        String typeAttribute = (String) httpSession.getAttribute("color_attribute");
        if (typeAttribute == null){
            httpSession.setAttribute("color_attribute",money);
        }
        PrintWriter printWriter = response.getWriter();
        printWriter.println("<h1>" + httpSession.getAttribute("type_attribute")
                + httpSession.getAttribute("money_attribute") +
                httpSession.getAttribute("color_attribute") + " </h1>");
        printWriter.println("<button onclick=\"ClickFunction()\"> tap to return  </button>");
        printWriter.println("<script>\n" +
                "    function ClickFunction(){\n" +
                "<% session.setAttribute(\"type_attribute\",null);" +
                "session.setAttribute(\"money_attribute\",null);" +
                "session.setAttribute(\"color_attribute\",null); %>" +

                "</script>");

    }
}

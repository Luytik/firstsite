package com.example.firstsite;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "HelloServlet", value = "/")
public class HelloServlet extends HttpServlet {

    private int redSquare = 0;
    private int redCircle = 0;
    private int blueSquare = 0;
    private int blueCircle = 0;


    public void init() {

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String form = request.getParameter("form");
        String color = request.getParameter("color");
        if(form == null || color == null){
            doGet(request, response);
        } else if(form.equals("square") && color.equals("blue")){
            blueSquare++;
            doGet(request, response);
        } else if(form.equals("square") && color.equals("red")){
            redSquare++;
            doGet(request, response);
        } else if(form.equals("circle") && color.equals("red")){
            redCircle++;
            doGet(request, response);
        } else if(form.equals("circle") && color.equals("blue")){
            blueCircle++;
            doGet(request, response);
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        request.setAttribute("redSquare", redSquare);
        request.setAttribute("redCircle", redCircle);
        request.setAttribute("blueSquare", blueSquare);
        request.setAttribute("blueCircle", blueCircle);
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }

    public void destroy() {
    }
}
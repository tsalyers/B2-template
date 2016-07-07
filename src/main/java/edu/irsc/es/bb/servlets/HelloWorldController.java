package edu.irsc.es.bb.servlets;

import edu.irsc.es.bb.beans.HelloWorldModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class HelloWorldController extends HttpServlet {

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HelloWorldModel hello = new HelloWorldModel();
        String hello_world = hello.getHello();
        request.setAttribute("hello", hello_world);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/module/index.jsp");
        dispatcher.forward(request, response) ;
    }
}

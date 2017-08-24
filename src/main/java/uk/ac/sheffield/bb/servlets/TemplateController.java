package uk.ac.sheffield.bb.servlets;

import uk.ac.sheffield.bb.beans.TemplateModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class TemplateController extends HttpServlet {

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TemplateModel tm = new TemplateModel();
        String modelText = tm.getText();
        request.setAttribute("hello", modelText);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/module/index.jsp");
        dispatcher.forward(request, response) ;
    }
}

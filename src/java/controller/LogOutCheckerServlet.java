package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogOutCheckerServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        HttpSession session= request.getSession();
        session.removeAttribute("username");
        session.invalidate();
        response.sendRedirect("userLogin.jsp");
    }
}

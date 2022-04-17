package controller;

import dto.UserDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.UserLoginAuthenticator;

/**
 *
 * @author Admin
 */
public class UserLoginCheckerServlet extends HttpServlet 
{
public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
{
    String userid=request.getParameter("userid"); 
    if(userid==null)
    {
        response.sendRedirect("userLogin.jsp"); 
    }
}
public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
{
    String userid=request.getParameter("userid");
    String password=request.getParameter("password");
    String mode=request.getParameter("mode");
    HttpSession session=request.getSession(true);
    
    UserDTO user=new UserDTO();
    user.setPassword(password);
    user.setUserid(userid);
    user.setMode(mode);
    
    UserLoginAuthenticator auth=new UserLoginAuthenticator();
    String chk =auth.isLogin(user);
    
    if(!(chk.equals("false")))
    {
        session.setAttribute("userid",chk);
        request.setAttribute("Login", "Login Successful !!");
        getServletContext().getRequestDispatcher("/userDashboard.jsp").forward(request, response);
    }
    else
    {
        request.setAttribute("NotLogin", "Login Failed !!");
        getServletContext().getRequestDispatcher("/userLogin.jsp").forward(request, response);
    }
}
}

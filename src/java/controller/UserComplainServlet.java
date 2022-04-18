package controller;

import dto.UserDTO;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.UserComplainAuthenticator;


public class UserComplainServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        HttpSession session=request.getSession();
        String userid=(String)session.getAttribute("userid");
        if(userid==null)
        {
            response.sendRedirect("userLogin.html");
        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        String userid=request.getParameter("user_id");
        String policeid=request.getParameter("policeid");
        String complain_category=request.getParameter("category");
        String complain_title=request.getParameter("title");
        String complain_description=request.getParameter("description");
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        String date_time=dtf.format(now);
        
        UserDTO user=new UserDTO();
        user.setUserid(userid);
        user.setPoliceid(policeid);
        user.setComplain_category(complain_category);
        user.setComplain_title(complain_title);
        user.setComplain_description(complain_description);
        user.setComplain_date_time(date_time);
        
        UserComplainAuthenticator complain=new UserComplainAuthenticator();
        boolean isregister=complain.isregisterComplain(user);
        
        if(isregister)
        {
            request.setAttribute("user_id", userid);
            request.getRequestDispatcher("userDetails.jsp").forward(request,response);
        }
        else
        {
            request.setAttribute("user_id", userid);
            request.getRequestDispatcher("userDetails.jsp").forward(request,response);
        }
    }
}

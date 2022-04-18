package controller;

import dto.TrafficPoliceDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.TrafficPoliceUpdateAuthenticator;


public class TrafficPoliceUpdateServlet extends HttpServlet {

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
        HttpSession session=request.getSession();
        String userid=(String)session.getAttribute("userid");
        String contact=request.getParameter("contact");
        String address=request.getParameter("address");
        
        TrafficPoliceDTO dto=new TrafficPoliceDTO();
        dto.setUserid(userid);
        dto.setContact(contact);
        dto.setAddress(address);
        
        TrafficPoliceUpdateAuthenticator updt=new TrafficPoliceUpdateAuthenticator();
        boolean check=updt.isUpdate(dto);
        
        if(check)
        {
            response.sendRedirect("trafficPoliceDashboard.jsp");
        }
        else
        {
            response.sendRedirect("trafficPoliceDashboard.jsp");
        }
    }
}

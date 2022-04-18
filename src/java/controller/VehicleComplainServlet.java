package controller;

import dto.VehicleDTO;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.VehicleComplainAuthenticator;


public class VehicleComplainServlet extends HttpServlet {

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
        String vehicleid=request.getParameter("vehicleid");
        String policeid=request.getParameter("policeid");
        String complain_category=request.getParameter("category");
        String complain_title=request.getParameter("title");
        String complain_description=request.getParameter("description");
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        String date_time=dtf.format(now);
        
        VehicleDTO vehicle=new VehicleDTO();
        vehicle.setChassis(vehicleid);
        vehicle.setPoliceid(policeid);
        vehicle.setComplain_category(complain_category);
        vehicle.setComplain_title(complain_title);
        vehicle.setComplain_description(complain_description);
        vehicle.setComplain_date_time(date_time);
        
        VehicleComplainAuthenticator complain=new VehicleComplainAuthenticator();
        boolean isregister=complain.isregisterComplain(vehicle);
        
        if(isregister)
        {
            request.setAttribute("vehicle_id", vehicleid);
            request.getRequestDispatcher("vehicleOwnerDetails.jsp").forward(request,response);
        }
        else
        {
            request.setAttribute("vehicle_id", vehicleid);
            request.getRequestDispatcher("vehicleOwnerDetails.jsp").forward(request,response);
        }
    }
}

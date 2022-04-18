
package controller;

import dao.VehicleDAO;
import dto.RtoDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.RtoVehicleVerificationAuthenticator;


public class RtoVehicleVerificationServlet extends HttpServlet {

   public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
   {

       HttpSession session = request.getSession(true);
       String userid= (String)session.getAttribute("userid");
       if(userid==null)
       {
           response.sendRedirect("/userLogin.jsp");
       }
       
   }
   
      public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
      {
          HttpSession session = request.getSession(true);
          String userid= (String)session.getAttribute("userid");
          String category = request.getParameter("button");
          String vehicleid = request.getParameter("vehicleid");
          
          RtoDTO dto = new RtoDTO();
          dto.setCategory(category);
          dto.setVehicleid(vehicleid);
          
          RtoVehicleVerificationAuthenticator auth = new RtoVehicleVerificationAuthenticator();
          boolean check = auth.updatePendingList(dto);
          
          if(check)
          {
              response.sendRedirect("rtoVehiclePendingList.jsp");
          }
          
          else
          {
              response.sendRedirect("/rtoVehiclePendingList.jsp");
          }
      }
              
}

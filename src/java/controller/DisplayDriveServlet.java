package controller;

import dto.FilesDTO;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DisplayDriveAuthenticator;

/**
 *
 * @author Admin
 */
public class DisplayDriveServlet extends HttpServlet {

    public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        HttpSession session=request.getSession(true);
        String userid=(String)session.getAttribute("userid");
        if(userid==null)
        {
            response.sendRedirect("userLogin.jsp");
        }
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
      HttpSession session=request.getSession(true);
      String userid=(String)session.getAttribute("userid");
      OutputStream outStream1 = response.getOutputStream();
      String doc=request.getParameter("doc");
      
      FilesDTO file=new FilesDTO();
      file.setId(userid);
      file.setDoc(doc);
      
      DisplayDriveAuthenticator show=new DisplayDriveAuthenticator();
      show.isDisplayDrive(file,outStream1);
    }
}

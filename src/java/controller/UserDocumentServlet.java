package controller;

import dto.DocsDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.UserDocumentAuthenticator;

public class UserDocumentServlet extends HttpServlet {

    public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        HttpSession session=request.getSession();
        String userid=(String)session.getAttribute("userid");
        if(userid==null)
        {
            response.sendRedirect("userLogin.jsp");
        }
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        HttpSession session=request.getSession();
        String userid=(String)session.getAttribute("userid");
        String name=request.getParameter("name");
        String document_type=request.getParameter("document_type");
        String document_id=request.getParameter("document_id");
        
        DocsDTO docs=new DocsDTO();
        docs.setName(name);
        docs.setDocument_type(document_type);
        docs.setDocument_id(document_id);
        
        UserDocumentAuthenticator document=new UserDocumentAuthenticator();
        boolean getdoc=false;
        
        if(document_type.equals("license"))
        {
            getdoc=document.checkLicense(userid,document_id);
        }
        else if(document_type.equals("vaccine"))
        {
            getdoc=document.checkVaccine(userid,document_id);
        }
        else if(document_type.equals("pan"))
        {
            getdoc=document.checkPassport(userid,document_id);
        }
        if(getdoc)
        {
            response.sendRedirect("userDocs.jsp");
        }
        else
        {
            response.sendRedirect("userDocs.jsp");
        }
    }    
}

<%@page import="dao.UserDAO"%>
<%@page import="java.io.OutputStream"%>
<%
    
            String userid=String.valueOf(session.getAttribute("userid"));
            UserDAO dao=new UserDAO();
            byte byteArray[]=dao.getUserProfile(userid);
            response.setContentType("image/gif");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close();
       
    
%>

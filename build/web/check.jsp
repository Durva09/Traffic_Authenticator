<%@page import="dao.UserDAO"%>
<%
   
    if(request.getParameter("uname")!=null) //get "uname" jQuery & Ajax part this line 'data:"uname="+username' from index.jsp file check not null
    {
        String user_name=request.getParameter("uname"); //getable "uname" store in new "user_name variable"
        
        try
        {
            UserDAO dao = new UserDAO();
            boolean check= dao.checkEmail(user_name);
            if(!check)               
            {  
                %>
                <span class="text-danger" style="color: red;">Sorry, <%=user_name%> Already Exists ! </span>
                <%
            }
            else
            {
                %>
                <span class="text-success" style="color: green;">Username is available</span>
                <div  class="button step_1" style="margin-top: 13%">
                <button type="submit" value="Send" class="next_btn">
                  Get OTP&nbsp;
                  <i
                    class="fa fa-arrow-circle-right"
                    style="font-size: 3vh"
                  ></i>
                </button>
                </div>
                <%
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
%>
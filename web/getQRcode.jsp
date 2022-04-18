<%@page import="dto.UserDTO"%>
<%@page import="dao.UserDAO"%>
<%@page import="dto.VehicleDTO"%>
<%@page import="dao.VehicleDAO"%>
<%@page import="java.io.OutputStream"%>
<%
            String userid=String.valueOf(session.getAttribute("userid"));
            String chassis_no=request.getParameter("id");
            String user_id=request.getParameter("uid");
             
            if(chassis_no==null){
            out.println("hey"+chassis_no);
            VehicleDAO dao=new VehicleDAO();
            VehicleDTO dto=dao.getVehicleDetails(chassis_no);
            byte byteArray[]= dto.getByt();
            response.setContentType("image/gif");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close();
            }
            else{
                out.println("hey"+user_id);
                UserDAO dao=new UserDAO();
                UserDTO dto=dao.getUserData(user_id);
                byte byteArray[]=dto.getByt();
                response.setContentType("image/gif");
                OutputStream os = response.getOutputStream();
                os.write(byteArray);
                os.flush();
                os.close();
            }
            
%>

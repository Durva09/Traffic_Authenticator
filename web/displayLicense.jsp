<%-- 
    Document   : displayLicense
    Created on : 17 Apr, 2022, 3:07:03 PM
    Author     : Admin
--%>

<%@page import="dto.DocsDTO"%>
<%@page import="dao.DocsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Additional Assets/docs-pop.css">
    </head>
    <body>
       <% String license=(String)request.getAttribute("Message"); 
          DocsDAO doc=new DocsDAO();
          DocsDTO dto2=doc.getLicenseInfo(license);%>
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myLargeModalLabel">Large modal</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <section class="final">
                    <div class="another">
                        <table>
                            <tr>
                                <td class="col1">
                                    <img src="Additional Assets/images/ashoka.png" alt="Ashoka Sthabh" class="logoa">
                                </td>
                                <td class="col2">
                                    <ul style="list-style: none;">
                                        <li>
                                            UNION OF INDIAN DRIVING LICENSE
                                        </li>
                                        <li>
                                            <%=dto2.getState()%> RTO
                                        </li>
                                    </ul>
                                </td>
                            </tr>
            
                        </table>
                    </div>
            
                    <div class="section">
            
                        <table class="left">
                            <tr>
                                <td>Authorization to Drive</td>
                                <td>:</td>
                                <td><%=dto2.getDrive()%></td>
                            </tr>
                            <tr>
                                <td>License No.</td>
                                <td>:</td>
                                <td><%=license%></td>
                            </tr>
                        </table>
            
            
                        <table class="right">
                            <tr>
                                <td>Date of Issue</td>
                                <td>:</td>
                                <td><%=dto2.getIssue()%></td>
                            </tr>
                            <tr>
                                <td>Valid upto</td>
                                <td>:</td>
                                <td><%=dto2.getExpire()%></td>
                            </tr>
                        </table>
            
                    </div>
            
            <hr width="99%">
            
                    <div class="section">
            
                        <table class="details">
                            <tbody style="width: 100%;">
                                <tr>
                                    <td>Name</td>
                                    <td>:</td>
                                    <td><%=dto2.getName()%></td>
                                </tr>
                                <tr>
                                    <td>DOB</td>
                                    <td>:</td>
                                    <td><%=dto2.getDob()%></td>
                                </tr>
                                <tr>
                                    <td>Blood Group</td>
                                    <td>:</td>
                                    <td><%=dto2.getBlood()%></td>
                                </tr>
                                <tr>
                                    <td>S/W/D</td>
                                    <td>:</td>
                                    <td><%=dto2.getSwd()%></td>
                                </tr>
                                <tr>
                                    <td>Present Address</td>
                                    <td>:</td>
                                    <td><%=dto2.getPresent()%></td>
                                </tr>
                                <tr>
                                    <td>Permanent Address</td>
                                    <td>:</td>
                                    <td><%=dto2.getPermanent()%></td>
                                </tr>
                            </tbody>
                        </table>
            
                        <div style="width: 20%;">
                            <img src="Additional Assets/images/photu.jpg" alt="photu" class="photu">
                        </div>
            
            
                    </div>
            
                    <hr width="99%;">
                </section>
        
            </div>
        </div><!-- /.modal-content -->
    </body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
     "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Verify</title>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <link rel="stylesheet" href="style.css">
    <style>
      .container .card {
        height: 300px;
      }
    </style>
</head>
<body>
 
    <div class="container">
    <%String b=(String)request.getAttribute("Message");
      if(b==null)
      {
          response.sendRedirect("userGetOTP.jsp");
      }%>
        
    
    <div class="card">
        <form class="form" method="Post" action="FinalServlet">
            <input type="hidden" name="page" value="getotp">
            <input type="hidden" name="userotp" value="<%=request.getAttribute("Message")%>">
            <div class="right-side ">
                <div class="main active">
                    <div class="manage" style="margin: 0px; padding: 0%; font-size: 10px;font-weight: bolder;">
                        <h1>Creating account is fast and easy!</h1>
                    </div>
                    <div class="input_div">
                        <div class="input_text"> <input type="text" name="otp" require required> <label>Enter OTP</label><div>
                    </div>
                    <div class="button step_1" style="margin-top:13%;"> 
                        <button value="submit" class="next_btn">Verify OTP&nbsp;
                        <i class="fa fa-arrow-circle-right" style="font-size:3vh;"></i>
                        </button>
                    </div>
                </div>
            </div>
    </div>
</div> 
</form>
</div>
</div>  
</body>
</html>
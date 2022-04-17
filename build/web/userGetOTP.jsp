<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get OTP</title>
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
    />
    <script
      type="text/javascript"
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
    ></script>
    <link rel="stylesheet" href="style.css" />
    <style>
      .container .card {
        height: auto;
        min-height: 176px;
      }
    </style>
</head>
<body>
    <div class="container">
      <div class="card">
         <form action="EmailSendingServlet" class="form" method="post">
          <div class="right-side">
            <div class="main active">
              <div
                class="manage"
                style="
                  margin: 0px;
                  padding: 0%;
                  font-size: 10px;
                  font-weight: bolder;
                  ">
                  
                <h1>Creating account is fast and easy!</h1>
              </div>
              <div class="input_div">
                <div class="input_text">
                    <input type="hidden" name="page" value="verify_otp.jsp">
                  <input type="email" name="recipient" id="username" require required />
                  <label>Enter Email</label>
                </div>
              </div>
                <span id="available"> <!--- data show this span tag --->
                </span>
              <div id="but">
                
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
    
<script type="text/javascript">
$(document).ready(function(){
   
    $("#username").blur(function(){
        
        var username =$("#username").val();
   
        if(username.length >= 3)
        {
            console.log("hey");
            $.ajax({
                url:"check.jsp",
                type:"post",
                data:"uname="+username,
                dataType:"text",
                success:function(data)
                {
                    $("#available").html(data)
                    $("#but").html(info)
                } 
            });
        }
        else
        {
          $("#available").html(" ");
        }
        
   }); 
   
});    
</script>
    
</body>
</html>

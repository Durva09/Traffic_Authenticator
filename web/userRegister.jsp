<!doctype html>
<html>
<head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>Register</title>
        <link href='' rel='stylesheet'>
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <link rel="stylesheet" href="style.css">                 
</head>
<body>
    <%String email=(String)session.getAttribute("email");%>
    <%
        if(email.equals("null"))
        {
            response.sendRedirect("userGetOTP.jsp");
        }
    %>

<div class="container">
    <div class="card">
        <!--<div class="form">-->
          <form class="form" method="post" action="UserRegisterCheckerServlet" enctype="multipart/form-data">
            <div class="right-side ">
                <div class="main active">
                    <div class="manage" style="margin: 0px; padding: 0%; font-size: 10px;font-weight: bolder;">
                        <h1>Creating account is fast and easy!</h1>
                    </div>
                    <input type="file" value="profile_1.png" src="profile_1.png" name="profile" multiple hidden>
                    <div class="input_div" >
                        <div class="input_text"> <input class="written_name" type="text" name="name" require required> <label>Full Name</label> </div>
                    </div>
                    <div class="input_div" >
                        <div class="input_text"> <input  type="text" name="dob" onfocus="(this.type='Date')" onblur="(this.type='text')" require required> <label>DOB</label> </div>
                    </div>
                    <div class="input_div">
                        <p>Gender : </p>
                        <div class="blood" style="margin: 2px;"> 
                            <input type="radio" id="male" name="gender" value="Male" require required> <label for="male"> Male</label>
                            &nbsp;&nbsp;&nbsp;
                            <input type="radio" id="female" name="gender" value="Female" require required><label for="female"> Female</label>
                            &nbsp;&nbsp;&nbsp;
                            <input type="radio" id="other" name="gender" value="Other" require required><label for="other"> Other</label>
                         </div>
                    </div>
                    <div class="input_div" >
                        <div class="input_text"> <input type="number" name="contact" require required> <label>Phone No.</label> </div>
                    </div>
                    <div class="input_div">
                        <div class="input_text"> <input type="text" name="email" value="<%out.println(email);%>" disabled> <label></label> </div>
                    </div>
                    <div class="input_div">
                        <div class="input_text"> <input type="number" onkeyup="this.value=removeSpaces(this.value);" name="aadhar" class="aadhar" required> <label>Aadhar No.</label></div>
                    </div>
                    <div class="agree"> <span><i class="fa fa-check"></i></span>
                        <p style="font-size: 12px; font-weight: 600;">DigiLocker uses Aadhaar to verify identity of the user and also enable authentic document access</p>
                    </div>
                    <div class="button step_1" style="margin:3%;"> 
                        <button class="next_btn" >Register&nbsp;
                        <i class="fa fa-arrow-circle-right" style="font-size:3vh;"></i>
                    </button>
                     </div>
                </div>
                <div class="main ">
                    <div class="manage">
                        <h3>Security</h3>
                    </div>
                    <div class="input_div">
                        <div class="input_text"> <input type="text" name="userid" id="userid" require required> <label> Create User ID</label> <i class="fa fa-eye-slash password_eye"></i></div>
                    </div>
                    <span id="available">
                    </span>
                    <div class="input_div">

                        <div class="input_text"> <input class="confirm_pass_type" name="password" type="password" require required> <label>Security PIN</label> <i class="fa fa-eye-slash con_eye"></i> </div>
                    </div>
                   
                    <div class="agree_submit"> <span><i class="fa fa-check"></i></span>
                        <p>I hereby declare that information provided in the online registration form is true to the best of my knowledge and I accept motes,terms,disclaimer and policies by clicking "Submit Form" button.</p>
                    </div>
                    <div class="button step_2 step_4"><button class="next_btn">Submit&nbsp;<i class="fa fa-send" style="font-size: 3.5vh;"></i></button> </div>
                </div>
<!--                <div class="main ">
                    <div class="manage">
                        <h3>Congratulations <span class="shown_name"></span></h3>
                        <p>You Have Entered all details Successfully.</p>
                    </div> <svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52">
                        <circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none" />
                        <path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8" /> </svg>
                        <div class="button step_1"> <button class="next_btn" >Login</button> </div>
                    </div>-->
                </div>
            </form>
            <!--</div>-->
        </div>
    </div>
<script type='text/javascript' src=''></script>
<script type='text/javascript' src=''></script>
<script type='text/javascript' src=''></script>
<script src="app.js"></script>

<script>
            function removeSpaces(string) {
            return string.split(' ').join('');
           }
</script>  
<script type="text/javascript">
$(document).ready(function(){
   
    $("#username").blur(function(){
        
        var username =$("#username").val();
   
        if(username.length >= 3)
        {
            $.ajax({
                url:"check.jsp",
                type:"post",
                data:"uname="+username,
                dataType:"text",
                success:function(data)
                {
                    $("#available").html(data)
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
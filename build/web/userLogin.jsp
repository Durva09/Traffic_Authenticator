<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Login</title>
    <link rel="stylesheet" href="style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <style>
      @import url("https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap");

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }
      html,
      body {
        display: grid;
        height: 100%;
        width: 100%;
        place-items: center;
        /* background: -webkit-linear-gradient(left, #a445b2, #fa4299); */
      }
      ::selection {
        /* background: #fa4299; */
        color: #fff;
      }
      .wrapper {
        overflow: hidden;
        max-width: 390px;
        background: #fff;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0px 15px 20px rgba(0, 0, 0, 0.1);
        border-bottom: 6px solid blue;
      }
      .wrapper .title-text {
        display: flex;
        width: 200%;
      }
      .wrapper .title {
        width: 50%;
        font-size: 20px;
        font-weight: 600;
        text-align: center;
        /* transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55); */
      }
      .wrapper .slide-controls {
        position: relative;
        display: flex;
        height: 50px;
        width: 100%;
        overflow: hidden;
        margin: 30px 0 10px 0;
        justify-content: space-between;
        /* border: 1px solid lightgrey; */
        border-radius: 5px;
      }
      .slide-controls .slide {
        height: 100%;
        width: 100%;
        color: #fff;
        font-size: 18px;
        font-weight: 500;
        text-align: center;
        line-height: 48px;
        cursor: pointer;
        z-index: 1;
        transition: all 0.6s ease;
      }
      .slide-controls label.signup {
        color: #000;
      }
      .slide-controls .slider-tab {
        position: absolute;
        height: 100%;
        width: 50%;
        left: 0;
        z-index: 0;
        border-radius: 5px;
        background: #0d1449;
        /* transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55); */
      }
      input[type="radio"] {
        display: none;
      }
      #signup:checked ~ .slider-tab {
        left: 50%;
      }
      #signup:checked ~ label.signup {
        color: #fff;
        cursor: default;
        user-select: none;
      }
      #signup:checked ~ label.login {
        color: #000;
      }
      #login:checked ~ label.signup {
        color: #000;
      }
      #login:checked ~ label.login {
        cursor: default;
        user-select: none;
      }
      .wrapper .form-container {
        width: 100%;
        overflow: hidden;
      }
      .form-container .form-inner {
        display: flex;
        width: 200%;
      }
      .form-container .form-inner form {
        width: 50%;
        /* transition: all 0.6s cubic-bezier(0.68,-0.55,0.265,1.55); */
      }
      .form-inner form .field {
        height: 50px;
        width: 100%;
        margin-top: 20px;
      }
      .form-inner form .field input {
        height: 100%;
        width: 100%;
        outline: none;
        padding-left: 15px;
        border-radius: 5px;
        border: 1px solid lightgrey;
        border-bottom-width: 2px;
        font-size: 17px;
        /* transition: all 0.3s ease; */
      }
      .form-inner form .field input:focus {
        border-color: #0d1449;
        /* box-shadow: inset 0 0 3px #fb6aae; */
      }
      .form-inner form .field input::placeholder {
        color: #999;
        transition: all 0.3s ease;
      }
      form .field input:focus::placeholder {
        color: #b3b3b3;
      }
      .form-inner form .pass-link {
        margin-top: 5px;
      }
      .form-inner form .signup-link {
        text-align: center;
        margin-top: 30px;
      }
      .form-inner form .pass-link a,
      .form-inner form .signup-link a {
        color: #0d1449;
        text-decoration: none;
      }
      .form-inner form .pass-link a:hover,
      .form-inner form .signup-link a:hover {
        text-decoration: underline;
      }
      form .btn {
        height: 50px;
        width: 100%;
        border-radius: 5px;
        position: relative;
        overflow: hidden;
      }
      a{
        color: blue !important;
      }
      form .btn .btn-layer {
        height: 100%;
        width: 300%;
        position: absolute;
        left: -100%;
        background: #0d1449;
        border-radius: 5px;
        /* transition: all 0.4s ease;; */
      }
      /* form .btn:hover .btn-layer {
        left: 0;
      } */
      form .btn input[type="submit"] {
        height: 100%;
        width: 100%;
        z-index: 1;
        position: relative;
        background: none;
        border: none;
        color: #fff;
        padding-left: 0;
        border-radius: 5px;
        font-size: 20px;
        font-weight: 500;
        cursor: pointer;
      }
      .btn-layer:hover{
        background:blue !important;
      }
    </style>
  </head>
  <body>
      <%
         String log=(String)request.getAttribute("NotLogin");
         if(log!=null)
         {
             %>
             <script>
                $(document).ready(function(){
                        $('#danger-alert-modal').modal('show');
                    });
             </script>
             <%
         }
      %>
    <div class="wrapper">
      <div class="title-text">
        <div class="title login">Login with Aadhar</div>
        <div class="title signup">Login with User Id</div>
      </div>
      <div class="form-container">
        <div class="slide-controls">
          <input type="radio" name="slide" id="login" checked />
          <input type="radio" name="slide" id="signup" />
          <label for="login" class="slide login">Aadhar</label>
          <label for="signup" class="slide signup">User Id</label>
          <div class="slider-tab"></div>
        </div>
        <div class="form-inner">
            <form action="UserLoginCheckerServlet" class="login" method="post">
            <div class="field">
                <input type="hidden" value="aadhar" name="mode">
                <input type="text" name="userid" onkeyup="this.value=removeSpaces(this.value);" id="username" placeholder="Enter Aadhar" required />
            </div>
            <div class="field">
              <input type="password" name="password" placeholder="Password" required />
            </div>
            <div class="pass-link">
              <a href="#">Forgot password?</a>
            </div>
            <div class="field btn">
                <button class="btn-layer"
                type="submit"
                value="Send"
                class="next_btn"
                style="color: white; border:none;cursor: pointer;font-size: 18px;"
              >
                Login
              </button>
            </div>
                <div><br>
              Don't have account? <a href="userGetOTP.jsp">Register</a>
            </div>
          </form>
            <form action="UserLoginCheckerServlet" class="signup" method="post">
            <div class="field">
                <input type="hidden" value="userid" name="mode">
              <input type="text" name="userid" placeholder="Enter User Id" required />
            </div>
            <div class="field">
              <input type="password" name="password" placeholder="Password" required />
            </div>
            <div class="pass-link">
              <a href="#">Forgot password?</a>
            </div>
            <div class="field btn">
              
                <button class="btn-layer"
                  type="submit"
                  value="Send"
                  class="next_btn"
                  style="color: white;border:none;cursor: pointer; font-size: 18px;"
                >
                  Login
                </button>
              
            </div>
                <div><br>
              Don't have account? <a href="userGetOTP.jsp">Register</a>
            </div>
          </form>
        </div>
      </div>
    </div>
    
<!--Danger Pop-up modal-->
    <!-- Danger Alert Modal -->
        <div id="danger-alert-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content modal-filled bg-danger">
                    <div class="modal-body p-4">
                        <div class="text-center">
                            <i class="dripicons-wrong h1"></i>
                            <h4 class="mt-2">Oh snap!</h4>
                            <p class="mt-3">Wrong Username or Password...</p>
                            <button type="button" class="btn btn-light my-2" data-bs-dismiss="modal">Retry</button>
                        </div>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        
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
    <script>
      const loginText = document.querySelector(".title-text .login");
      const loginForm = document.querySelector("form.login");
      const loginBtn = document.querySelector("label.login");
      const signupBtn = document.querySelector("label.signup");
      const signupLink = document.querySelector("form .signup-link a");
      signupBtn.onclick = () => {
        loginForm.style.marginLeft = "-50%";
        loginText.style.marginLeft = "-50%";
      };
      loginBtn.onclick = () => {
        loginForm.style.marginLeft = "0%";
        loginText.style.marginLeft = "0%";
      };
      signupLink.onclick = () => {
        signupBtn.click();
        return false;
      };
    </script>
    <script src="assets/js/vendor.min.js"></script>
    <script src="assets/js/app.min.js"></script>

  </body>
</html>

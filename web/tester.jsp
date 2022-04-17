<!DOCTYPE html>
<html lang="en" class="menuitem-active"><!-- Mirrored from coderthemes.com/hyper_2/saas/apps-calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Feb 2022 12:46:37 GMT --><head>
  <meta charset="utf-8">
  <title>Dealer Dashboard</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
  <meta content="Coderthemes" name="author">
  <!-- App favicon -->
  <link rel="shortcut icon" href="assets/images/favicon.ico">

  <!-- User Profile CSS  -->
  <link rel="stylesheet" href="Additional Assets/user-profile.css">
  <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>

  <!-- third party css -->
  <link href="assets/css/vendor/fullcalendar.min.css" rel="stylesheet" type="text/css">
  <!-- third party css end -->

  <!-- App css -->
  <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css">
  <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" id="light-style">
  <link href="assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style" disabled="disabled">

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
  <style>
    .btn1 {
      max-width: 125px;
    }

    .p1 {
      padding-right: 4rem;
    }

    .date1 {
      font-size: 1.5rem;
      font-weight: 700;
      font-family: fantasy;
      margin: 0.2rem;
    }

    @media screen and (max-width: 560px) {
      .media1 {
        padding-top: 3rem;
      }
    }

    @media (min-width: 576px) {
      .col-sm-6 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 auto;
        flex: 1 0 auto;
        width: 50%;
      }
    }

    @media (min-width: 992px) {
      .col-lg-3 {
        -webkit-box-flex: 0;
        -ms-flex: 0 0 auto;
        flex: 0 0 auto;
        width: 33%;
      }
    }

    .row {
      --bs-gutter-x: 0px;
    }

    .fa-fingerprint:before {
      content: "\f577";
      color: red;

      font-size: 42px;
    }

    .dripicons-download:before {
      color: green;

      font-size: 38.7px;
    }

    .dripicons-folder-open:before {
      color: #ffc409;

      font-size: 42px;
    }
  </style>
</head>
     
<body class="show" data-layout-config="{&quot;leftSideBarTheme&quot;:&quot;dark&quot;,&quot;layoutBoxed&quot;:false, &quot;leftSidebarCondensed&quot;:false, &quot;leftSidebarScrollable&quot;:false,&quot;darkMode&quot;:false, &quot;showRightSidebarOnStart&quot;: true}" style="visibility: visible;" data-leftbar-theme="dark">
<% String userotp = (String)request.getAttribute("Message");
      if(userotp!=null)
      {  
      %>
      <script>
      $(document).ready(function(){
      $("#otp-modal").modal('show');
      });
      </script>
      <%
       }  
      %>
      
      <form action="EmailSendingServlet" method="post">
          <input type="email" name="recipient">
          <input type="hidden" name="page" value="tester.jsp">
          <input type="submit" value="done">
      </form>
      <!-- Enter OTP modal content -->
  <div id="otp-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <a href="index.html" class="text-success">
                        <span><img src="assets/images/logo-dark.png" alt="" height="18"></span>
                    </a>
                </div>
                <form class="ps-3 pe-3" action="FinalServlet" method="post">

                    <div class="mb-3">
                        <label for="otp" class="form-label">Enter OTP</label>
                        <input class="form-control" type="text" name="otp" id="otp" required="" placeholder="Enter OTP">
                    </div>
                    <input type="hidden" name="page" value="dealermail">
                    <input type="hidden" name="userotp" value="<%=userotp%>">
                    <div class="mb-3 text-center">
                        <button class="btn btn-primary"> Verify OTP</button>
                    </div>

                </form>

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body></html>
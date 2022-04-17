<%-- 
    Document   : medicalForm
    Created on : 1 Mar, 2022, 2:11:16 AM
    Author     : 91934
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dto.MedicalDTO"%>
<%@page import="dao.UserMedicalDAO"%>
<%@page import="dto.UserDTO"%>
<%@page import="dao.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="menuitem-active"><!-- Mirrored from coderthemes.com/hyper_2/saas/apps-calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Feb 2022 12:46:37 GMT --><head>
  <meta charset="utf-8">
  <title>Medical Details</title>
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

    @media (min-width: 992px) {
      .form-control, .form-select{
      width: 85%;
    }

    .select2-container {
    width: 85%!important;
}
    }
    
  </style>
</head>

<body class="show" data-layout-config="{&quot;leftSideBarTheme&quot;:&quot;dark&quot;,&quot;layoutBoxed&quot;:false, &quot;leftSidebarCondensed&quot;:false, &quot;leftSidebarScrollable&quot;:false,&quot;darkMode&quot;:false, &quot;showRightSidebarOnStart&quot;: true}" style="visibility: visible;" data-leftbar-theme="dark">
  
    <%
        
          String userid=(String)session.getAttribute("userid");
          if(userid==null)
          {
              response.sendRedirect("userLogin.jsp");
              return ;
          }
          
          UserDAO dao=new UserDAO();
          UserDTO dto=dao.getUserData(userid);
          String age = dto.getAge();
          String gender = dto.getGender();
          
          //Calling UserMedicalDAO
          MedicalDTO medDTO = new MedicalDTO();
          UserMedicalDAO medDAO = new UserMedicalDAO();
          medDTO = medDAO.getMedicalDetails(userid);
          String temp = medDTO.getUserid();
          
          
          
          if(temp==null)
          {
              
          
      %>
      
      
    <!-- Begin page -->
  <div class="wrapper menuitem-active">
    <!-- ========== Left Sidebar Start ========== -->
    <div class="leftside-menu menuitem-active show">
      <!-- LOGO -->
      <a href="index.html" class="logo text-center logo-light">
        <span class="logo-lg">
          <img src="assets/images/logo.png" alt="" height="16">
        </span>
        <span class="logo-sm">
          <img src="assets/images/logo_sm.png" alt="" height="16">
        </span>
      </a>

      <!-- LOGO -->
      <a href="index.html" class="logo text-center logo-dark">
        <span class="logo-lg">
          <img src="assets/images/logo-dark.png" alt="" height="16">
        </span>
        <span class="logo-sm">
          <img src="assets/images/logo_sm_dark.png" alt="" height="16">
        </span>
      </a>

      <div
          class="h-100 show"
          id="leftside-menu-container"
          data-simplebar="init"
        >
          <div class="simplebar-wrapper menuitem-active" style="margin: 0px">
            <div class="simplebar-height-auto-observer-wrapper">
              <div class="simplebar-height-auto-observer"></div>
            </div>
            <div class="simplebar-mask show">
              <div class="simplebar-offset" style="right: 0px; bottom: 0px">
                <div
                  class="simplebar-content-wrapper menuitem-active"
                  tabindex="0"
                  role="region"
                  aria-label="scrollable content"
                  style="height: 100%; overflow: hidden"
                >
                  <div class="simplebar-content show" style="padding: 0px">
                    <!--- Sidemenu -->
                    <ul class="side-nav">
                     
<!--                       <li class="side-nav-item">
                  <a href="userDashboard.jsp" class="side-nav-link collapsed">
                    <i class="uil-home-alt"></i>
                     <span class="badge bg-success float-end">4</span> 
                    <span> Dashboards </span>
                  </a>
                </li>-->

                <li class="side-nav-title side-nav-item">Dashboard</li>

                <li class="side-nav-item ">
                  <a href="userDashboard.jsp" class="side-nav-link active">
                    <i class="uil-user"></i>
                    <span> Profile </span>
                  </a>
                </li>

                <li class="side-nav-item ">
                  <a href="userDocs.jsp" class="side-nav-link">
                    <i class="uil-folder"></i>
                    <span> Fetch Docs </span>
                  </a>
                </li>

                      <li class="side-nav-item">
                        <a
                          data-bs-toggle="collapse"
                          href="#sidebarEcommerce"
                          aria-expanded="false"
                          aria-controls="sidebarEcommerce"
                          class="side-nav-link collapsed"
                        >
                          <i class="uil-file-medical-alt"></i>
                          <span> Medical </span>
                          <span class="menu-arrow"></span>
                        </a>
                        <div class="collapse" id="sidebarEcommerce">
                          <ul class="side-nav-second-level">
                            <li>
                              <a href="medicalStatus.jsp"
                                ><i class="uil-file-medical-alt"></i
                                >&nbsp;&nbsp;Basic Health Status</a
                              >
                            </li>
                            <li>
                              <a href="medicalReports.jsp"
                                ><i class="uil-file-medical"></i
                                >&nbsp;&nbsp;Medical Reports</a
                              >
                            </li>
                          </ul>
                        </div>
                      </li>

                      <li class="side-nav-item ">
                        <a href="personalDrive.jsp" class="side-nav-link">
                          <i class="uil-folder"></i>
                          <span> Personal Drive </span>
                        </a>
                      </li>
                      <li class="side-nav-item">
                        <a href="LogOutCheckerServlet" class="side-nav-link">
                          <i class="uil-sign-out-alt"></i>
                          <span> Logout </span>
                        </a>
                      </li>
                      
                    <div class="clearfix"></div>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="simplebar-placeholder" style="width: auto; height: 1150px"></div>
        </div>
        <div class="simplebar-track simplebar-horizontal" style="visibility: hidden">
          <div class="simplebar-scrollbar" style="width: 0px; display: none"></div>
        </div>
        <div class="simplebar-track simplebar-vertical" style="visibility: hidden">
          <div class="simplebar-scrollbar" style="
                height: 0px;
                transform: translate3d(0px, 0px, 0px);
                display: none;
              "></div>
        </div>
      </div>
      <!-- Sidebar -left -->
    </div>
    <!-- Left Sidebar End -->

    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
      <div class="content">
        <!-- Topbar Start -->
        <div class="navbar-custom">
          <ul class="list-unstyled topbar-menu float-end mb-0">
            <li class="dropdown notification-list d-lg-none">
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <i class="dripicons-search noti-icon"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
                <form class="p-3">
                  <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                </form>
              </div>
            </li>
            <li class="dropdown notification-list topbar-dropdown">
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <img src="assets/images/flags/us.jpg" alt="user-image" class="me-0 me-sm-1" height="12">
                <span class="align-middle d-none d-sm-inline-block">Theme</span>
                <i class="mdi mdi-chevron-down d-none d-sm-inline-block align-middle"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu">
                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <img src="assets/images/flags/germany.jpg" alt="user-image" class="me-1" height="12">
                  <span class="align-middle">Light</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <img src="assets/images/flags/italy.jpg" alt="user-image" class="me-1" height="12">
                  <span class="align-middle">Dark</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <img src="assets/images/flags/spain.jpg" alt="user-image" class="me-1" height="12">
                  <span class="align-middle">Grey</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <img src="assets/images/flags/russia.jpg" alt="user-image" class="me-1" height="12">
                  <span class="align-middle">Default</span>
                </a>
              </div>
            </li>

            <li class="dropdown notification-list">
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <i class="dripicons-bell noti-icon"></i>
                <span class="noti-icon-badge"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg">
                <!-- item-->
                <div class="dropdown-item noti-title">
                  <h5 class="m-0">
                    <span class="float-end">
                      <a href="javascript: void(0);" class="text-dark">
                        <small>Clear All</small>
                      </a> </span>Notification
                  </h5>
                </div>

                <div style="max-height: 230px" data-simplebar="init">
                  <div class="simplebar-wrapper" style="margin: 0px">
                    <div class="simplebar-height-auto-observer-wrapper">
                      <div class="simplebar-height-auto-observer"></div>
                    </div>
                    <div class="simplebar-mask">
                      <div class="simplebar-offset" style="right: 0px; bottom: 0px">
                        <div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: auto; overflow: hidden">
                          <div class="simplebar-content" style="padding: 0px">
                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon bg-primary">
                                <i class="mdi mdi-comment-account-outline"></i>
                              </div>
                              <p class="notify-details">
                                Caleb Flakelar commented on Admin
                                <small class="text-muted">1 min ago</small>
                              </p>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon bg-info">
                                <i class="mdi mdi-account-plus"></i>
                              </div>
                              <p class="notify-details">
                                New user registered.
                                <small class="text-muted">5 hours ago</small>
                              </p>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon">
                                <img src="assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="">
                              </div>
                              <p class="notify-details">Cristina Pride</p>
                              <p class="text-muted mb-0 user-msg">
                                <small>Hi, How are you? What about our next
                                  meeting</small>
                              </p>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon bg-primary">
                                <i class="mdi mdi-comment-account-outline"></i>
                              </div>
                              <p class="notify-details">
                                Caleb Flakelar commented on Admin
                                <small class="text-muted">4 days ago</small>
                              </p>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon">
                                <img src="assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="">
                              </div>
                              <p class="notify-details">Karen Robinson</p>
                              <p class="text-muted mb-0 user-msg">
                                <small>Wow ! this admin looks good and awesome
                                  design</small>
                              </p>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon bg-info">
                                <i class="mdi mdi-heart"></i>
                              </div>
                              <p class="notify-details">
                                Carlos Crouch liked
                                <b>Admin</b>
                                <small class="text-muted">13 days ago</small>
                              </p>
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="simplebar-placeholder" style="width: 0px; height: 0px"></div>
                  </div>
                  <div class="simplebar-track simplebar-horizontal" style="visibility: hidden">
                    <div class="simplebar-scrollbar" style="width: 0px; display: none"></div>
                  </div>
                  <div class="simplebar-track simplebar-vertical" style="visibility: hidden">
                    <div class="simplebar-scrollbar" style="height: 0px; display: none"></div>
                  </div>
                </div>

                <!-- All-->
                <a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item notify-all">
                  View All
                </a>
              </div>
            </li>

            <li class="dropdown notification-list d-none d-sm-inline-block">
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <i class="dripicons-view-apps noti-icon"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg p-0">
                <div class="p-2">
                  <div class="row g-0">
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/slack.png" alt="slack">
                        <span>Slack</span>
                      </a>
                    </div>
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/github.png" alt="Github">
                        <span>GitHub</span>
                      </a>
                    </div>
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/dribbble.png" alt="dribbble">
                        <span>Dribbble</span>
                      </a>
                    </div>
                  </div>

                  <div class="row g-0">
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/bitbucket.png" alt="bitbucket">
                        <span>Bitbucket</span>
                      </a>
                    </div>
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/dropbox.png" alt="dropbox">
                        <span>Dropbox</span>
                      </a>
                    </div>
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/g-suite.png" alt="G Suite">
                        <span>G Suite</span>
                      </a>
                    </div>
                  </div>
                  <!-- end row-->
                </div>
              </div>
            </li>

            <li class="notification-list">
              <a class="nav-link end-bar-toggle" href="javascript: void(0);">
                <i class="dripicons-gear noti-icon"></i>
              </a>
            </li>

            <li class="dropdown notification-list">
              <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <span class="account-user-avatar">
                  <img src="assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
                </span>
                <span>
                  <span class="account-user-name">Dominic Keller</span>
                  <span class="account-position">Founder</span>
                </span>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">
                <!-- item-->
                <div class="dropdown-header noti-title">
                  <h6 class="text-overflow m-0">Welcome !</h6>
                </div>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-account-circle me-1"></i>
                  <span>My Account</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-account-edit me-1"></i>
                  <span>Settings</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-lifebuoy me-1"></i>
                  <span>Support</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-lock-outline me-1"></i>
                  <span>Lock Screen</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-logout me-1"></i>
                  <span>Logout</span>
                </a>
              </div>
            </li>
          </ul>
          <button class="button-menu-mobile open-left">
            <i class="mdi mdi-menu"></i>
          </button>
          <div class="app-search dropdown d-none d-lg-block">
            <form>
              <div class="input-group">
                <input type="text" class="form-control dropdown-toggle" placeholder="Search..." id="top-search">
                <span class="mdi mdi-magnify search-icon"></span>
                <button class="input-group-text btn-primary" type="submit">
                  Search
                </button>
              </div>
            </form>

            <div class="dropdown-menu dropdown-menu-animated dropdown-lg" id="search-dropdown">
              <!-- item-->
              <div class="dropdown-header noti-title">
                <h5 class="text-overflow mb-2">
                  Found <span class="text-danger">17</span> results
                </h5>
              </div>

              <!-- item-->
              <a href="javascript:void(0);" class="dropdown-item notify-item">
                <i class="uil-notes font-16 me-1"></i>
                <span>Analytics Report</span>
              </a>

              <!-- item-->
              <a href="javascript:void(0);" class="dropdown-item notify-item">
                <i class="uil-life-ring font-16 me-1"></i>
                <span>How can I help you?</span>
              </a>

              <!-- item-->
              <a href="javascript:void(0);" class="dropdown-item notify-item">
                <i class="uil-cog font-16 me-1"></i>
                <span>User profile settings</span>
              </a>

              <!-- item-->
              <div class="dropdown-header noti-title">
                <h6 class="text-overflow mb-2 text-uppercase">Users</h6>
              </div>

              <div class="notification-list">
                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <div class="d-flex">
                    <img class="d-flex me-2 rounded-circle" src="assets/images/users/avatar-2.jpg" alt="Generic placeholder image" height="32">
                    <div class="w-100">
                      <h5 class="m-0 font-14">Erwin Brown</h5>
                      <span class="font-12 mb-0">UI Designer</span>
                    </div>
                  </div>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <div class="d-flex">
                    <img class="d-flex me-2 rounded-circle" src="assets/images/users/avatar-5.jpg" alt="Generic placeholder image" height="32">
                    <div class="w-100">
                      <h5 class="m-0 font-14">Jacob Deo</h5>
                      <span class="font-12 mb-0">Developer</span>
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!-- end Topbar -->

        <!-- Start Content-->
        <div class="container-fluid">
          <!-- start page title -->
          <div class="row">
            <div class="col-12">
              <div class="page-title-box">
                <div class="page-title-right">
                  <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item">
                      <a href="javascript: void(0);">Hyper</a>
                    </li>
                    <li class="breadcrumb-item">
                      <a href="javascript: void(0);">Apps</a>
                    </li>
                    <li class="breadcrumb-item active">Calendar</li>
                  </ol>
                </div>
                <h4 class="page-title">Add Medical Details</h4>
              </div>
            </div>
          </div>


          <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="header-title mb-3">Add Medical Details</h4>

                                        <form action="MedicalRegisterServlet" method="post">
                                            <div id="progressbarwizard">

                                                <ul class="nav nav-pills nav-justified form-wizard-header mb-3">
                                                    <li class="nav-item">
                                                        <a href="#account-2" data-bs-toggle="tab" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2 active">
                                                            <i class="mdi mdi-account-circle me-1"></i>
                                                            <span class="d-none d-sm-inline">Basic Details</span>
                                                        </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="#profile-tab-2" data-bs-toggle="tab" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                            <i class="mdi mdi-face-profile me-1"></i>
                                                            <span class="d-none d-sm-inline">Additional Details</span>
                                                        </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="#finish-2" data-bs-toggle="tab" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                            <i class="mdi mdi-checkbox-marked-circle-outline me-1"></i>
                                                            <span class="d-none d-sm-inline">Finish</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            
                                                <div class="tab-content b-0 mb-0">

                                                    <div id="bar" class="progress mb-3" style="height: 7px;">
                                                        <div class="bar progress-bar progress-bar-striped progress-bar-animated bg-success" style="width: 33.3333%;"></div>
                                                    </div>
                                            
                                                    
                                                    
                                                            <div class="tab-pane show active" id="account-2">
                                                                <div class="row">
                                                                  <div class="col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Age</label>
                                                                        
                                                                        <input type="text" id="age" name="age" class="form-control" value="<%=age%>" readonly>
                                                                  </div>
                                                                </div> <!-- end col -->
                        
                                                                    <div class="col-lg-6 mt-3 mt-lg-0">
                                                                        <div class="mb-3">
                                                                            <label class="form-label">Gender</label>
                                                                            
                                                                            <input type="text" id="gender" name="gender" class="form-control" value="<%=gender%>" readonly>
                                                                        </div>
                                                                    </div> <!-- end col -->
                                                                </div>
                                                                <!-- end row -->
                        
                                                                <div class="row">
                                                                    
                                                                    <div class="col-lg-6">
                                                                      <div class="mb-3">
                                                                          <label class="form-label">Blood Group</label>
                                                                          <select class="form-select" id="example-select" name="bloodgroup">
                                                                            <option value="A+">A+</option>
                                                                            <option value="A-">A-</option>
                                                                            <option value="B+">B+</option>
                                                                            <option value="B-">B-</option>
                                                                            <option value="AB+">AB+</option>
                                                                            <option value="AB-">AB-</option>
                                                                            <option value="O+">O+</option>
                                                                            <option value="O-">O-</option>
                                                                        </select>
                                                                          </div>
                                                                  </div> <!-- end col -->
                                                                  
                                                                  <div class="col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Are You Specially-Abled ?</label>
                                                                        <select class="form-select" id="specially-abled" name="specially_abled">
                                                                          <option value="N/A">N/A</option>
                                                                          <option value="Yes">Yes</option>
                                                                        </select>
                                                                        </div>
                                                                </div> <!-- end col -->

                                                                  <div class="col-lg-6" id="please-select">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Please Select</label> <br>
                                                                        <select name="ability_desc" id="please-select-in" class="form-control select2 select2-hidden-accessible" data-toggle="select2" data-select2-id="select2-data-1-t4p0" tabindex="-1" aria-hidden="true" id="select-ability">
                                                                          <option data-select2-id="select2-data-3-zj4t" value="N/A" selected="selected">Select</option>
                                                                          <optgroup label="Physical" data-select2-id="select2-data-20-gl92">
                                                                              <option value="Handicapped" data-select2-id="select2-data-21-3wrm">Handicapped</option>
                                                                              <option value="Visually-Impairment" data-select2-id="select2-data-22-we41">Visually-Impairment</option>
                                                                              <option value="Hearing-Impairment" data-select2-id="select2-data-22-we42">Hearing-Impairment</option>
                                                                              <option value="Mute" data-select2-id="select2-data-22-we43">Mute</option>
                                                                              <option value="Visually-Impairment" data-select2-id="select2-data-22-we44">Visually-Impairment</option>
                                                                          </optgroup>
                                                                          <optgroup label="Mental" data-select2-id="select2-data-23-4dcu">
                                                                              <option value="Mental" data-select2-id="select2-data-24-r5m0">Mental</option>
                                                                          </optgroup>
                                                                          <optgroup label="Other" data-select2-id="select2-data-23-4dcv" >
                                                                            <option value="other" data-select2-id="select2-data-24-r5m1">Other</option>
                                                                        </optgroup>
                                                                      </select>
                                                                        </div>
                                                                </div> <!-- end col -->
                                                                    
                                                                <div class="col-lg-6" id="other-ability">
                                                                  <div class="mb-3">
                                                                      <label class="form-label">Other Special-Ability</label>
                                                                      
                                                                      <input name="ability_desc" type="text" id="email" class="form-control">
                                                                </div>
                                                              </div> <!-- end col -->

                                                                </div>
                                                                <!-- end row -->

                                                                

                                                                <!-- Field Visible Code : Show-Hide -->
                                                                <script>

                                                                  $("#specially-abled").change(function() {
                                                                    if ($(this).val() == "Yes") {
                                                                      $('#please-select').show();
                                                                    } else {
                                                                      $('#please-select').hide();
                                                                      $("#select-ability").val("N/A");
                                                                    }
                                                                  });
                                                                  $("#specially-abled").trigger("change");

                                                                  $("#other-ability").change(function() {
                                                                    if ($(this).val() == "other") {
                                                                      $('#other-ability').show();
                                                                    } else {
                                                                      $('#other-ability').hide();
                                                                    }
                                                                  });
                                                                  $("#other-ability").trigger("change");

                                                                </script>


                        
                                                                <div class="row">
                                                                  <div class="col-lg-6 mt-3 mt-lg-0">
                                                                    <div class="mb-3"  style="width: 85%;">
                                                                        <label class="form-label">Weight (in kgs)</label>
                                                                        <input name="weight" data-toggle="touchspin" type="text" data-bts-button-down-class="btn btn-danger" data-bts-button-up-class="btn btn-info" class="form-control">
                                                                        </div>
                                                                </div> <!-- end col -->

                                                                  <div class="col-lg-6 mt-3 mt-lg-0">
                                                                    <div class="mb-3"  style="width: 85%;">
                                                                        <label class="form-label">Height (in cms)</label>
                                                                        <input name="height" data-toggle="touchspin" type="text" data-bts-button-down-class="btn btn-danger" data-bts-button-up-class="btn btn-info" class="form-control">
                                                                        </div>
                                                                </div> <!-- end col -->
                        
                                                                    
                                                                </div>
                                                                <!-- end row -->
                                                                
                                                            </div> <!-- end preview-->
                                                        
                                                            <div class="tab-pane" id="typeahead-code">
                                                                <pre class="mb-0">                                                    <span class="html escape hljs xml"><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>The Basics<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">data-provide</span>=<span class="hljs-string">"typeahead"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"the-basics"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"Basic Example"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Bloodhound (Suggestion Engine)<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"bloodhound"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"States of USA"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Prefetch<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">data-provide</span>=<span class="hljs-string">"typeahead"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"prefetch"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"States of USA"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Remote<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">data-provide</span>=<span class="hljs-string">"typeahead"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"remote"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"States of USA"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Custom Templates<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"custom-templates"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"States of USA"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Default Suggestions<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">data-provide</span>=<span class="hljs-string">"typeahead"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"default-suggestions"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Multiple Datasets<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">data-provide</span>=<span class="hljs-string">"typeahead"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"multiple-datasets"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span></span>
                                                                </pre> <!-- end highlight-->
                                                            </div> <!-- end preview code-->
                                                        

                                                    <div class="tab-pane" id="profile-tab-2">
                                                      <div class="row">

                                                        <div class="col-lg-6">
                                                          <div class="mb-3">
                                                              <label class="form-label">Are you a diabetic person ?</label>
                                                              <select class="form-select" name="diabetes">
                                                                <option value="N/A">N/A</option>
                                                                <option value="Yes">Yes</option>
                                                              </select>
                                                              </div>
                                                      </div> <!-- end col -->

                                                      <div class="col-lg-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Do you have blood pressure ?</label>
                                                            <select class="form-select" name="blood_pressure" >
                                                              <option value="N/A">N/A</option>
                                                              <option value="Low">Low Blood Pressure</option> 
                                                              <option value="High">High Blood Pressure</option> 
                                                            </select>
                                                            </div>
                                                    </div> <!-- end col -->
                                                      </div>
                                                      <!-- end row -->

                                                      

                                                      <div class="row">

                                                        <div class="col-lg-6">
                                                          <div class="mb-3">
                                                              <label class="form-label">Are you currently taking any medication?</label>
                                                              <select class="form-select" id="any-medication" name="any_medication">
                                                                <option value="N/A">N/A</option>
                                                                <option value="Yes">Yes</option>
                                                              </select>
                                                              </div>
                                                      </div> <!-- end col -->

                                                      <div class="col-lg-6" id="medication-desc">
                                                        <div class="mb-3">
                                                            <label class="form-label">Please Describe</label>
                                                            <textarea name="medication_desc" id="medication-desc-in" data-toggle="maxlength" class="form-control" maxlength="225" rows="3" placeholder="This textarea has a limit of 225 chars."></textarea>
                                                            </div>
                                                    </div> <!-- end col -->

                                                      <!-- Field Visible Code : Show-Hide -->
                                                      <script>

                                                        $("#any-medication").change(function() {
                                                          if ($(this).val() == "Yes") {
                                                            $('#medication-desc').show();
                                                          } else {
                                                            $('#medication-desc').hide();
                                                            $('#medication-desc-in').val("N/A");
                                                          }
                                                        });
                                                        $("#any-medication").trigger("change");

                                                      </script>

                                                      <div class="col-lg-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Do you have any medication allergies?</label>
                                                            <select class="form-select" id="medication-allergy" name="med_allergy">
                                                              <option value="N/A">N/A</option>
                                                              <option value="Yes">Yes</option>
                                                            </select>
                                                            </div>
                                                    </div> <!-- end col -->

                                                    <div class="col-lg-6" id="allergy-desc">
                                                      <div class="mb-3">
                                                          <label class="form-label">Please Describe</label>
                                                          <textarea name="allergy_desc" data-toggle="maxlength" class="form-control" maxlength="225" rows="3" placeholder="This textarea has a limit of 225 chars."></textarea>
                                                          </div>
                                                  </div> <!-- end col -->

                                                    <!-- Field Visible Code : Show-Hide -->
                                                    <script>

                                                      $("#medication-allergy").change(function() {
                                                        if ($(this).val() == "Yes") {
                                                          $('#allergy-desc').show();
                                                        } else {
                                                          $('#allergy-desc').hide();
                                                        }
                                                      });
                                                      $("#medication-allergy").trigger("change");

                                                    </script>

                                                      </div>
                                                      <!-- end row -->
                                                      
                                                                   
                                                      <div class="row">

                                                        <div class="col-lg-6" >
                                                          <div class="mb-3">
                                                              <label class="form-label">Have you ever had (Please check all that apply)
                                                              </label>
                                                            
                                                              <div class="form-check mb-2">
                                                                  <input name="other_illness" value="Asthma" type="checkbox" class="form-check-input" id="customCheckcolor1" checked="">
                                                                <label class="form-check-label" for="customCheckcolor1">Asthma</label>
                                                              </div>
                                                              <div class="form-check mb-2">
                                                                <input name="other_illness" value="Cancer" type="checkbox" class="form-check-input" id="customCheckcolor1" checked="">
                                                                <label class="form-check-label" for="customCheckcolor1">Cancer</label>
                                                              </div>
                                                              <div class="form-check mb-2">
                                                                  <input name="other_illness" value="Covid" type="checkbox" class="form-check-input" id="customCheckcolor1" checked="">
                                                                <label class="form-check-label" for="customCheckcolor1">Covid</label>
                                                              </div>
                                                              <div class="form-check mb-2">
                                                                <input name="other_illness" value="Heart Disease" type="checkbox" class="form-check-input" id="customCheckcolor1" checked="">
                                                                <label class="form-check-label" for="customCheckcolor1">Heart Disease</label>
                                                              </div>
                                                              <div class="form-check mb-2">
                                                                <input name="other_illness" value="Heart Attack" type="checkbox" class="form-check-input" id="customCheckcolor1" checked="">
                                                                <label class="form-check-label" for="customCheckcolor1">Heart Attack</label>
                                                              </div>
                                                            </div>
                                                      </div> <!-- end col -->
                                                      
                                                      <div class="col-lg-6" >
                                                        <div class="mb-3">
                                                            <label class="form-label">Any Other Illness</label>
                                                            <textarea name="other_illness" data-toggle="maxlength" class="form-control" maxlength="225" rows="3" placeholder="This textarea has a limit of 225 chars."></textarea>
                                                            </div>
                                                    </div> <!-- end col --> 
                                                      
                                                      </div>
                                                      <!-- end row -->

                                                      <div class="row">

                                                        <div class="col-lg-6">
                                                          <div class="mb-3">
                                                              <label class="form-label">Do you use or do you have history of using tobacco?</label>
                                                              <select class="form-select" name="tobacco" >
                                                                <option value="N/A">N/A</option>
                                                                <option value="Yes">Yes</option>
                                                              </select>
                                                              </div>
                                                      </div> <!-- end col -->

                                                      <div class="col-lg-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Do you smoke?</label>
                                                            <select class="form-select" name="smoking">
                                                              <option value="N/A">N/A</option>
                                                              <option value="Yes">Yes</option>
                                                            </select>
                                                            </div>
                                                    </div> <!-- end col -->

                                                      <div class="col-lg-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">How often do you consume alcohol?</label>
                                                            <select class="form-select" name="alcohol" >
                                                              <option value="N/A">N/A</option>
                                                              <option value="Daily">Daily</option>
                                                              <option value="Weekly">Weekly</option>
                                                              <option value="Monthly">Monthly</option>
                                                              <option value="Occasionally">Occasionally</option>
                                                            </select>
                                                            </div>
                                                    </div> <!-- end col -->
                                                      </div>
                                                      <!-- end row -->
                                                      
                                                      <div class="row">

                                                        
                                                          <div class="mb-3">
                                                              <label class="form-label">Include Other Comments Regarding Your Medical History</label>
                                                              <textarea name="comment" data-toggle="maxlength" class="form-control" maxlength="500" rows="6" placeholder="This textarea has a limit of 500 chars."></textarea>
                                                              </div>
                                                      

                                                      </div>
                                                      <!-- end row -->
                                                    </div>

                                                    <div class="tab-pane" id="finish-2">
                                                        <div class="row">
                                                            <div class="col-12">
                                                                <div class="text-center">
                                                                    <br>
                                                                    <br>
                                                                    <input type="submit" class="btn btn-outline-danger" value="Submit">
                                                                    <br>
                                                                    <br>
                                                                    <h2 class="mt-0"><i class="mdi mdi-check-all"></i></h2>
                                                                    
                                                                    <h3 class="mt-0">Thank you !</h3>

                                                                    


                                                                </div>
                                                            </div> <!-- end col -->
                                                        </div> <!-- end row -->
                                                    </div>

                                                    <ul class="list-inline mb-0 wizard">
                                                        <li class="previous list-inline-item disabled">
                                                            <a href="#" class="btn btn-info">Previous</a>
                                                        </li>
                                                        <li class="next list-inline-item float-end">
                                                            <a href="#" class="btn btn-info">Next</a>
                                                        </li>
                                                    </ul>

                                                </div> <!-- tab-content -->
                                            </div> <!-- end #progressbarwizard-->
                                        </form>

                                    </div> <!-- end card-body -->
                                </div> <!-- end card-->
                            </div> <!-- end col -->

                             <!-- end col -->
                        </div>
          <!-- end page title -->

          
        <!-- container -->
      </div>
      <!-- content -->

      <!-- Footer Start -->
      <footer class="footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6">
              <script>
                document.write(new Date().getFullYear());
              </script>20222022
              202220222022 © Hyper - Coderthemes.com
            </div>
            <div class="col-md-6">
              <div class="text-md-end footer-links d-none d-md-block">
                <a href="javascript: void(0);">About</a>
                <a href="javascript: void(0);">Support</a>
                <a href="javascript: void(0);">Contact Us</a>
              </div>
            </div>
          </div>
        </div>
      </footer>
      <!-- end Footer -->
    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->
  </div>
  <!-- END wrapper -->


  <!-- Right Sidebar -->
  <div class="end-bar">
    <div class="rightbar-title">
      <a href="javascript:void(0);" class="end-bar-toggle float-end">
        <i class="dripicons-cross noti-icon"></i>
      </a>
      <h5 class="m-0">Settings</h5>
    </div>

    <div class="rightbar-content h-100" data-simplebar="init">
      <div class="simplebar-wrapper" style="margin: 0px">
        <div class="simplebar-height-auto-observer-wrapper">
          <div class="simplebar-height-auto-observer"></div>
        </div>
        <div class="simplebar-mask">
          <div class="simplebar-offset" style="right: 0px; bottom: 0px">
            <div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: 100%; overflow: hidden scroll">
              <div class="simplebar-content" style="padding: 0px">
                <div class="p-3">
                  <div class="alert alert-warning" role="alert">
                    <strong>Customize </strong> the overall color scheme,
                    sidebar menu, etc.
                  </div>

                  <!-- Settings -->
                  <h5 class="mt-3">Color Scheme</h5>
                  <hr class="mt-1">

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="light" id="light-mode-check" checked="">
                    <label class="form-check-label" for="light-mode-check">Light Mode</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="dark" id="dark-mode-check">
                    <label class="form-check-label" for="dark-mode-check">Dark Mode</label>
                  </div>

                  <!-- Width -->
                  <h5 class="mt-4">Width</h5>
                  <hr class="mt-1">
                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="width" value="fluid" id="fluid-check" checked="">
                    <label class="form-check-label" for="fluid-check">Fluid</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="width" value="boxed" id="boxed-check">
                    <label class="form-check-label" for="boxed-check">Boxed</label>
                  </div>

                  <!-- Left Sidebar-->
                  <h5 class="mt-4">Left Sidebar</h5>
                  <hr class="mt-1">
                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="theme" value="default" id="default-check">
                    <label class="form-check-label" for="default-check">Default</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="theme" value="light" id="light-check" checked="">
                    <label class="form-check-label" for="light-check">Light</label>
                  </div>

                  <div class="form-check form-switch mb-3">
                    <input class="form-check-input" type="checkbox" name="theme" value="dark" id="dark-check">
                    <label class="form-check-label" for="dark-check">Dark</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="compact" value="fixed" id="fixed-check" checked="">
                    <label class="form-check-label" for="fixed-check">Fixed</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="compact" value="condensed" id="condensed-check">
                    <label class="form-check-label" for="condensed-check">Condensed</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="compact" value="scrollable" id="scrollable-check">
                    <label class="form-check-label" for="scrollable-check">Scrollable</label>
                  </div>

                  <div class="d-grid mt-4">
                    <button class="btn btn-primary" id="resetBtn">
                      Reset to Default
                    </button>

                    <a href="https://themes.getbootstrap.com/product/hyper-responsive-admin-dashboard-template/" class="btn btn-danger mt-3" target="_blank"><i class="mdi mdi-basket me-1"></i> Purchase Now</a>
                  </div>
                </div>
                <!-- end padding-->
              </div>
            </div>
          </div>
        </div>
        <div class="simplebar-placeholder" style="width: auto; height: 756px"></div>
      </div>
      <div class="simplebar-track simplebar-horizontal" style="visibility: hidden">
        <div class="simplebar-scrollbar" style="width: 0px; display: none"></div>
      </div>
      <div class="simplebar-track simplebar-vertical" style="visibility: visible">
        <div class="simplebar-scrollbar" style="
              height: 463px;
              transform: translate3d(0px, 0px, 0px);
              display: block;
            "></div>
      </div>
    </div>
  </div>

  <div class="rightbar-overlay"></div>
  <!-- /End-bar -->

  <!-- bundle -->
  <script src="assets/js/vendor.min.js"></script>
  <script src="assets/js/app.min.js"></script>

  <!-- third party js -->
  <script src="assets/js/vendor/fullcalendar.min.js"></script>
  <!-- third party js ends -->

  <!-- demo app -->
  <script src="assets/js/pages/demo.calendar.js"></script>
  <!-- end demo js-->


  <!-- demo app -->
<script src="assets/js/pages/demo.form-wizard.js"></script>  
  <!-- Clock JS -->
  <script src="Additional Assets/clock.js"></script>

  <!-- Mirrored from coderthemes.com/hyper_2/saas/apps-calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Feb 2022 12:46:38 GMT -->




</div>

<%
        }
        else
        {       
//Converting String Array To ArrayList
              ArrayList<String> al = new ArrayList<>();
              for(String a : medDTO.getOther_illness())
              {
                  al.add(a);
              }
              int count=0;
%>


    <!-- Begin page -->
  <div class="wrapper menuitem-active">
    <!-- ========== Left Sidebar Start ========== -->
    <div class="leftside-menu menuitem-active show">
      <!-- LOGO -->
      <a href="index.html" class="logo text-center logo-light">
        <span class="logo-lg">
          <img src="assets/images/logo.png" alt="" height="16">
        </span>
        <span class="logo-sm">
          <img src="assets/images/logo_sm.png" alt="" height="16">
        </span>
      </a>

      <!-- LOGO -->
      <a href="index.html" class="logo text-center logo-dark">
        <span class="logo-lg">
          <img src="assets/images/logo-dark.png" alt="" height="16">
        </span>
        <span class="logo-sm">
          <img src="assets/images/logo_sm_dark.png" alt="" height="16">
        </span>
      </a>

      <div class="h-100 show" id="leftside-menu-container" data-simplebar="init">
        <div class="simplebar-wrapper menuitem-active" style="margin: 0px">
          <div class="simplebar-height-auto-observer-wrapper">
            <div class="simplebar-height-auto-observer"></div>
          </div>
          <div class="simplebar-mask show">
            <div class="simplebar-offset" style="right: 0px; bottom: 0px">
              <div class="simplebar-content-wrapper menuitem-active" tabindex="0" role="region" aria-label="scrollable content" style="height: 100%; overflow: hidden">
                <div class="simplebar-content show" style="padding: 0px">
                  <!--- Sidemenu -->
                  <ul class="side-nav">
                    <li class="side-nav-title side-nav-item">Navigation</li>

                    <li class="side-nav-item">
                      <a data-bs-toggle="collapse" href="#sidebarDashboards" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link collapsed">
                        <i class="uil-home-alt"></i>
                        <!-- <span class="badge bg-success float-end">4</span> -->
                        <span> Dashboards </span>
                      </a>
                    </li>

                    <li class="side-nav-title side-nav-item">Apps</li>

                    <li class="side-nav-item menuitem-active">
                      <a href="apps-calendar.html" class="side-nav-link active">
                        <i class="uil-user"></i>
                        <span> Profile </span>
                      </a>
                    </li>

                    <li class="side-nav-item">
                      <a href="apps-chat.html" class="side-nav-link">
                        <i class="uil-folder"></i>
                        <span> Fetch Docs </span>
                      </a>
                    </li>

                    <li class="side-nav-item">
                      <a data-bs-toggle="collapse" href="#sidebarEcommerce" aria-expanded="false" aria-controls="sidebarEcommerce" class="side-nav-link collapsed">
                        <i class="uil-file-medical-alt"></i>
                        <span> Medical </span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="collapse" id="sidebarEcommerce">
                        <ul class="side-nav-second-level">
                          <li>
                            <a href="apps-ecommerce-products.html"><i class="uil-file-medical-alt"></i>&nbsp;&nbsp;Basic
                              Health Status</a>
                          </li>
                          <li>
                            <a href="apps-ecommerce-products-details.html"><i class="uil-file-medical"></i>&nbsp;&nbsp;Medical Reports</a>
                          </li>
                        </ul>
                      </div>
                    </li>

                    <li class="side-nav-item">
                      <a data-bs-toggle="collapse" href="#sidebarEmail" aria-expanded="false" aria-controls="sidebarEmail" class="side-nav-link collapsed">
                        <i class="uil-folder-check"></i>
                        <span> Personal Details </span>
                        <span class="menu-arrow"></span>
                      </a>
                    </li>
                    <li class="side-nav-item">
                      <a href="apps-chat.html" class="side-nav-link">
                        <i class="uil-sign-out-alt"></i>
                        <span> Logout </span>
                      </a>
                    </li>

                    <div class="clearfix"></div>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="simplebar-placeholder" style="width: auto; height: 1150px"></div>
        </div>
        <div class="simplebar-track simplebar-horizontal" style="visibility: hidden">
          <div class="simplebar-scrollbar" style="width: 0px; display: none"></div>
        </div>
        <div class="simplebar-track simplebar-vertical" style="visibility: hidden">
          <div class="simplebar-scrollbar" style="
                height: 0px;
                transform: translate3d(0px, 0px, 0px);
                display: none;
              "></div>
        </div>
      </div>
      <!-- Sidebar -left -->
    </div>
    <!-- Left Sidebar End -->

    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
      <div class="content">
        <!-- Topbar Start -->
        <div class="navbar-custom">
          <ul class="list-unstyled topbar-menu float-end mb-0">
            <li class="dropdown notification-list d-lg-none">
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <i class="dripicons-search noti-icon"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
                <form class="p-3">
                  <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                </form>
              </div>
            </li>
            <li class="dropdown notification-list topbar-dropdown">
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <img src="assets/images/flags/us.jpg" alt="user-image" class="me-0 me-sm-1" height="12">
                <span class="align-middle d-none d-sm-inline-block">Theme</span>
                <i class="mdi mdi-chevron-down d-none d-sm-inline-block align-middle"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu">
                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <img src="assets/images/flags/germany.jpg" alt="user-image" class="me-1" height="12">
                  <span class="align-middle">Light</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <img src="assets/images/flags/italy.jpg" alt="user-image" class="me-1" height="12">
                  <span class="align-middle">Dark</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <img src="assets/images/flags/spain.jpg" alt="user-image" class="me-1" height="12">
                  <span class="align-middle">Grey</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <img src="assets/images/flags/russia.jpg" alt="user-image" class="me-1" height="12">
                  <span class="align-middle">Default</span>
                </a>
              </div>
            </li>

            <li class="dropdown notification-list">
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <i class="dripicons-bell noti-icon"></i>
                <span class="noti-icon-badge"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg">
                <!-- item-->
                <div class="dropdown-item noti-title">
                  <h5 class="m-0">
                    <span class="float-end">
                      <a href="javascript: void(0);" class="text-dark">
                        <small>Clear All</small>
                      </a> </span>Notification
                  </h5>
                </div>

                <div style="max-height: 230px" data-simplebar="init">
                  <div class="simplebar-wrapper" style="margin: 0px">
                    <div class="simplebar-height-auto-observer-wrapper">
                      <div class="simplebar-height-auto-observer"></div>
                    </div>
                    <div class="simplebar-mask">
                      <div class="simplebar-offset" style="right: 0px; bottom: 0px">
                        <div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: auto; overflow: hidden">
                          <div class="simplebar-content" style="padding: 0px">
                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon bg-primary">
                                <i class="mdi mdi-comment-account-outline"></i>
                              </div>
                              <p class="notify-details">
                                Caleb Flakelar commented on Admin
                                <small class="text-muted">1 min ago</small>
                              </p>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon bg-info">
                                <i class="mdi mdi-account-plus"></i>
                              </div>
                              <p class="notify-details">
                                New user registered.
                                <small class="text-muted">5 hours ago</small>
                              </p>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon">
                                <img src="assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="">
                              </div>
                              <p class="notify-details">Cristina Pride</p>
                              <p class="text-muted mb-0 user-msg">
                                <small>Hi, How are you? What about our next
                                  meeting</small>
                              </p>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon bg-primary">
                                <i class="mdi mdi-comment-account-outline"></i>
                              </div>
                              <p class="notify-details">
                                Caleb Flakelar commented on Admin
                                <small class="text-muted">4 days ago</small>
                              </p>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon">
                                <img src="assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="">
                              </div>
                              <p class="notify-details">Karen Robinson</p>
                              <p class="text-muted mb-0 user-msg">
                                <small>Wow ! this admin looks good and awesome
                                  design</small>
                              </p>
                            </a>

                            <!-- item-->
                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                              <div class="notify-icon bg-info">
                                <i class="mdi mdi-heart"></i>
                              </div>
                              <p class="notify-details">
                                Carlos Crouch liked
                                <b>Admin</b>
                                <small class="text-muted">13 days ago</small>
                              </p>
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="simplebar-placeholder" style="width: 0px; height: 0px"></div>
                  </div>
                  <div class="simplebar-track simplebar-horizontal" style="visibility: hidden">
                    <div class="simplebar-scrollbar" style="width: 0px; display: none"></div>
                  </div>
                  <div class="simplebar-track simplebar-vertical" style="visibility: hidden">
                    <div class="simplebar-scrollbar" style="height: 0px; display: none"></div>
                  </div>
                </div>

                <!-- All-->
                <a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item notify-all">
                  View All
                </a>
              </div>
            </li>

            <li class="dropdown notification-list d-none d-sm-inline-block">
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <i class="dripicons-view-apps noti-icon"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg p-0">
                <div class="p-2">
                  <div class="row g-0">
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/slack.png" alt="slack">
                        <span>Slack</span>
                      </a>
                    </div>
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/github.png" alt="Github">
                        <span>GitHub</span>
                      </a>
                    </div>
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/dribbble.png" alt="dribbble">
                        <span>Dribbble</span>
                      </a>
                    </div>
                  </div>

                  <div class="row g-0">
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/bitbucket.png" alt="bitbucket">
                        <span>Bitbucket</span>
                      </a>
                    </div>
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/dropbox.png" alt="dropbox">
                        <span>Dropbox</span>
                      </a>
                    </div>
                    <div class="col">
                      <a class="dropdown-icon-item" href="#">
                        <img src="assets/images/brands/g-suite.png" alt="G Suite">
                        <span>G Suite</span>
                      </a>
                    </div>
                  </div>
                  <!-- end row-->
                </div>
              </div>
            </li>

            <li class="notification-list">
              <a class="nav-link end-bar-toggle" href="javascript: void(0);">
                <i class="dripicons-gear noti-icon"></i>
              </a>
            </li>

            <li class="dropdown notification-list">
              <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                <span class="account-user-avatar">
                  <img src="assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
                </span>
                <span>
                  <span class="account-user-name">Dominic Keller</span>
                  <span class="account-position">Founder</span>
                </span>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">
                <!-- item-->
                <div class="dropdown-header noti-title">
                  <h6 class="text-overflow m-0">Welcome !</h6>
                </div>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-account-circle me-1"></i>
                  <span>My Account</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-account-edit me-1"></i>
                  <span>Settings</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-lifebuoy me-1"></i>
                  <span>Support</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-lock-outline me-1"></i>
                  <span>Lock Screen</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-logout me-1"></i>
                  <span>Logout</span>
                </a>
              </div>
            </li>
          </ul>
          <button class="button-menu-mobile open-left">
            <i class="mdi mdi-menu"></i>
          </button>
          <div class="app-search dropdown d-none d-lg-block">
            <form>
              <div class="input-group">
                <input type="text" class="form-control dropdown-toggle" placeholder="Search..." id="top-search">
                <span class="mdi mdi-magnify search-icon"></span>
                <button class="input-group-text btn-primary" type="submit">
                  Search
                </button>
              </div>
            </form>

            <div class="dropdown-menu dropdown-menu-animated dropdown-lg" id="search-dropdown">
              <!-- item-->
              <div class="dropdown-header noti-title">
                <h5 class="text-overflow mb-2">
                  Found <span class="text-danger">17</span> results
                </h5>
              </div>

              <!-- item-->
              <a href="javascript:void(0);" class="dropdown-item notify-item">
                <i class="uil-notes font-16 me-1"></i>
                <span>Analytics Report</span>
              </a>

              <!-- item-->
              <a href="javascript:void(0);" class="dropdown-item notify-item">
                <i class="uil-life-ring font-16 me-1"></i>
                <span>How can I help you?</span>
              </a>

              <!-- item-->
              <a href="javascript:void(0);" class="dropdown-item notify-item">
                <i class="uil-cog font-16 me-1"></i>
                <span>User profile settings</span>
              </a>

              <!-- item-->
              <div class="dropdown-header noti-title">
                <h6 class="text-overflow mb-2 text-uppercase">Users</h6>
              </div>

              <div class="notification-list">
                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <div class="d-flex">
                    <img class="d-flex me-2 rounded-circle" src="assets/images/users/avatar-2.jpg" alt="Generic placeholder image" height="32">
                    <div class="w-100">
                      <h5 class="m-0 font-14">Erwin Brown</h5>
                      <span class="font-12 mb-0">UI Designer</span>
                    </div>
                  </div>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <div class="d-flex">
                    <img class="d-flex me-2 rounded-circle" src="assets/images/users/avatar-5.jpg" alt="Generic placeholder image" height="32">
                    <div class="w-100">
                      <h5 class="m-0 font-14">Jacob Deo</h5>
                      <span class="font-12 mb-0">Developer</span>
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!-- end Topbar -->

        <!-- Start Content-->
        <div class="container-fluid">
          <!-- start page title -->
          <div class="row">
            <div class="col-12">
              <div class="page-title-box">
                <div class="page-title-right">
                  <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item">
                      <a href="javascript: void(0);">Hyper</a>
                    </li>
                    <li class="breadcrumb-item">
                      <a href="javascript: void(0);">Apps</a>
                    </li>
                    <li class="breadcrumb-item active">Calendar</li>
                  </ol>
                </div>
                <h4 class="page-title">Medical Status</h4>
              </div>
            </div>
          </div>


          <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="header-title mb-3">Medical Status</h4>

                                        <form action="EditMedicalServlet" method="post"> 
                                            <div id="progressbarwizard">

                                                <ul class="nav nav-pills nav-justified form-wizard-header mb-3">
                                                    <li class="nav-item">
                                                        <a href="#account-2" data-bs-toggle="tab" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2 active">
                                                            <i class="mdi mdi-account-circle me-1"></i>
                                                            <span class="d-none d-sm-inline">Basic Details</span>
                                                        </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a href="#profile-tab-2" data-bs-toggle="tab" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                            <i class="mdi mdi-face-profile me-1"></i>
                                                            <span class="d-none d-sm-inline">Update Health Status</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            
                                                <div class="tab-content b-0 mb-0">

                                                    
                                            
                                                    
                                                            <div class="tab-pane show active" id="account-2">
                                                                
                                                              <h5 class="mb-3">Basic Details</h5>
                                                              <div class="card mb-3" style="flex-direction: row">
                                                                
                                                                  
                                                                  
                                                                  <div class="card-body">
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">User ID</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%=medDTO.getUserid()%>
                                                                    </div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Age</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%=medDTO.getAge()%>
                                                                    </div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Weight</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary"><%=medDTO.getWeight()%> kgs</div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Specially-Abled</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%if(medDTO.getSpecially_abled().equals("Yes"))
                                                                           {%>
                                                                           <%=medDTO.getSpecially_abled()%>
                                                                      <%}
                                                                      else
                                                                       {
                                                                            %>N/A<%
                                                                       }

%>
                                                                    </div>
                                                                  </div>
                                                                </div>
                                    
                                                                <div class="card-body">
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Gender</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%=medDTO.getGender()%>
                                                                    </div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Blood Group</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%=medDTO.getBloodgroup()%>
                                                                    </div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Height</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%=medDTO.getHeight()%> cms
                                                                    </div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Ability Desc.</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%if(medDTO.getSpecially_abled().equals("Yes"))
                                                                           {%>
                                                                           <%=medDTO.getAbility_desc()%>
                                                                      <%}
                                                                      else
                                                                       {
                                                                            %>N/A<%
                                                                       }

%>  
                                                                      
                                                                    </div>
                                                                  </div>
                                                                </div>
                                                              </div>
                                                              <!-- End Basic Details  -->

                                                              <h5 class="mb-3">Additional Details</h5>
                                                              <div class="card mb-3" style="flex-direction: row">
                                                                <div class="card-body">
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Diabetes</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%=medDTO.getDiabetes()%>
                                                                    </div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Blood Pressure</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%=medDTO.getBlood_pressure()%>
                                                                    </div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Ongoing Medications</h6>
                                                                    </div>
                                                                      <div class="col-sm-9 text-secondary">
                                                                          <%if(medDTO.getAny_medication().equals("Yes"))
                                                                           {%>
                                                                           <%=medDTO.getMedication_desc()%>
                                                                      <%}
                                                                      else
                                                                       {
                                                                            %>N/A<%
                                                                       }

%>
                                                                      </div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Medication Allergies</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%if(medDTO.getMed_allergy().equals("Yes"))
                                                                           {%>
                                                                           <%=medDTO.getAllergy_desc()%>
                                                                      <%}
                                                                      else
                                                                       {
                                                                            %>N/A<%
                                                                       }

%>
                                                                    </div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Diseases You Suffered</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%
                                                                          
                                                                      for(String a : medDTO.getOther_illness())
                                                                      {
                                                                            %><%=a%><br><%
                                                                      }

                                                                      %>
                                                                    </div>
                                                                  </div>
                                                                  
                                                                </div>
                                                              </div>
                                                              <!-- End Additional Details -->

                                                              <h5 class="mb-3">Habit Details</h5>
                                                              <div class="card mb-3" style="flex-direction: row">
                                                                <div class="card-body">
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Tobacco</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%=medDTO.getTobacco()%>
                                                                    </div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Smoking</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%=medDTO.getSmoking()%>
                                                                    </div>
                                                                  </div>
                                                                  <hr>
                                                                  <div class="row">
                                                                    <div class="col-sm-3">
                                                                      <h6 class="mb-0">Alcohol</h6>
                                                                    </div>
                                                                    <div class="col-sm-9 text-secondary">
                                                                      <%=medDTO.getAlcohol()%>
                                                                    </div>
                                                                  </div>
                                                                  <hr>
                                                                </div>
                                                              </div>
                                                              <!-- End Habit Details -->

                                                              <h5 class="mb-3">Personal Health Note</h5>
                                                              <div class="card mb-3" style="flex-direction: row">
                                                                <div class="card-body">
                                                                  <div class="row">
                                                                      <h6 class="mb-0"><%=medDTO.getComment()%></h6>
                                                                    
                                                                    
                                                                  </div>
                                                                  
                                                                </div>
                                                              </div>
                                                              <!-- End Personal Health Note -->

                                                            </div> <!-- end preview-->
                                                        
                                                            <div class="tab-pane" id="typeahead-code">
                                                                <pre class="mb-0">                                                    <span class="html escape hljs xml"><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>The Basics<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">data-provide</span>=<span class="hljs-string">"typeahead"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"the-basics"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"Basic Example"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Bloodhound (Suggestion Engine)<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"bloodhound"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"States of USA"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Prefetch<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">data-provide</span>=<span class="hljs-string">"typeahead"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"prefetch"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"States of USA"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Remote<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">data-provide</span>=<span class="hljs-string">"typeahead"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"remote"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"States of USA"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Custom Templates<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"custom-templates"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"States of USA"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Default Suggestions<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">data-provide</span>=<span class="hljs-string">"typeahead"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"default-suggestions"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span><br><br><span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"mb-3"</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span>&gt;</span>Multiple Datasets<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span><br>    <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">data-provide</span>=<span class="hljs-string">"typeahead"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"multiple-datasets"</span>&gt;</span><br><span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span></span>
                                                                </pre> <!-- end highlight-->
                                                            </div> <!-- end preview code-->
                                                        

                                                    <div class="tab-pane" id="profile-tab-2">

                                                        
                                                      <div class="row">
                                                                  <div class="col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Age</label>
                                                                        
                                                                        <input type="text" id="age" name="age" class="form-control" value="<%=medDTO.getAge()%>" readonly>
                                                                  </div>
                                                                </div> <!-- end col -->
                        
                                                                    <div class="col-lg-6 mt-3 mt-lg-0">
                                                                        <div class="mb-3">
                                                                            <label class="form-label">Gender</label>
                                                                            
                                                                            <input type="text" id="gender" name="gender" class="form-control" value="<%=medDTO.getGender()  %>" readonly>
                                                                        </div>
                                                                    </div> <!-- end col -->
                                                                </div>
                                                                <!-- end row -->
                        
                                                                <div class="row">
                                                                    
                                                                    <div class="col-lg-6">
                                                                      <div class="mb-3">
                                                                          <label class="form-label">Blood Group</label>
                                                                          <select class="form-select" id="example-select" name="bloodgroup">
                                                                                <option value="<%=medDTO.getBloodgroup()%>" selected="selected"><%=medDTO.getBloodgroup()%></option>
                                                                            <option value="A+">A+</option>
                                                                            <option value="A-">A-</option>
                                                                            <option value="B+">B+</option>
                                                                            <option value="B-">B-</option>
                                                                            <option value="AB+">AB+</option>
                                                                            <option value="AB-">AB-</option>
                                                                            <option value="O+">O+</option>
                                                                            <option value="O-">O-</option>
                                                                        </select>
                                                                          </div>
                                                                  </div> <!-- end col -->
                                                                  
                                                                  <div class="col-lg-6">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Are You Specially-Abled ?</label>
                                                                        <select class="form-select" id="specially-abled" name="specially_abled">
                                                                              <option value="<%=medDTO.getSpecially_abled()%>" selected="selected"><%=medDTO.getSpecially_abled()%></option>
                                                                          <option value="N/A">N/A</option>
                                                                          <option value="Yes">Yes</option>
                                                                        </select>
                                                                        </div>
                                                                </div> <!-- end col -->

                                                                  <div class="col-lg-6" id="please-select">
                                                                    <div class="mb-3">
                                                                        <label class="form-label">Please Select</label> <br>
                                                                        <select name="ability_desc" class="form-control select2 select2-hidden-accessible" data-toggle="select2" data-select2-id="select2-data-1-t4p0" tabindex="-1" aria-hidden="true" id="select-ability">
                                                                          <option data-select2-id="select2-data-3-kj4t" value="<%=medDTO.getAbility_desc()%>" selected="selected"><%=medDTO.getAbility_desc()%></option>
                                                                          <option data-select2-id="select2-data-3-zj4t" value="N/A">Select</option>
                                                                          <optgroup label="Physical" data-select2-id="select2-data-20-gl92">
                                                                              <option value="Handicapped" data-select2-id="select2-data-21-3wrm">Handicapped</option>
                                                                              <option value="Visually-Impairment" data-select2-id="select2-data-22-we41">Visually-Impairment</option>
                                                                              <option value="Hearing-Impairment" data-select2-id="select2-data-22-we42">Hearing-Impairment</option>
                                                                              <option value="Mute" data-select2-id="select2-data-22-we43">Mute</option>
                                                                              <option value="Visually-Impairment" data-select2-id="select2-data-22-we44">Visually-Impairment</option>
                                                                          </optgroup>
                                                                          <optgroup label="Mental" data-select2-id="select2-data-23-4dcu">
                                                                              <option value="Mental" data-select2-id="select2-data-24-r5m0">Mental</option>
                                                                          </optgroup>
                                                                          <optgroup label="Other" data-select2-id="select2-data-23-4dcv" >
                                                                            <option value="other" data-select2-id="select2-data-24-r5m1">Other</option>
                                                                        </optgroup>
                                                                      </select>
                                                                        </div>
                                                                </div> <!-- end col -->
                                                                    
                                                                <div class="col-lg-6" id="other-ability">
                                                                  <div class="mb-3">
                                                                      <label class="form-label">Other Special-Ability</label>
                                                                      
                                                                      <input name="ability_desc" type="text" id="email" class="form-control">
                                                                </div>
                                                              </div> <!-- end col -->

                                                                </div>
                                                                <!-- end row -->

                                                                

                                                                <!-- Field Visible Code : Show-Hide -->
                                                                <script>

                                                                  $("#specially-abled").change(function() {
                                                                    if ($(this).val() == "Yes") {
                                                                      $('#please-select').show();
                                                                    } else {
                                                                      $('#please-select').hide();
                                                                    }
                                                                  });
                                                                  $("#specially-abled").trigger("change");

                                                                  $("#select-ability").change(function() {
                                                                    if ($(this).val() == "other") {
                                                                      $('#other-ability').show();
                                                                    } else {
                                                                      $('#other-ability').hide();
                                                                    }
                                                                  });
                                                                  $("#select-ability").trigger("change");

                                                                </script>


                        
                                                                <div class="row">
                                                                  <div class="col-lg-6 mt-3 mt-lg-0">
                                                                    <div class="mb-3"  style="width: 85%;">
                                                                        <label class="form-label">Weight (in kgs)</label>
                                                                        <input value="<%=medDTO.getWeight()%>" name="weight" data-toggle="touchspin" type="text" data-bts-button-down-class="btn btn-danger" data-bts-button-up-class="btn btn-info" class="form-control">
                                                                        </div>
                                                                </div> <!-- end col -->

                                                                  <div class="col-lg-6 mt-3 mt-lg-0">
                                                                    <div class="mb-3"  style="width: 85%;">
                                                                        <label class="form-label">Height (in cms)</label>
                                                                        <input value="<%=medDTO.getHeight()%>" name="height" data-toggle="touchspin" type="text" data-bts-button-down-class="btn btn-danger" data-bts-button-up-class="btn btn-info" class="form-control">
                                                                        </div>
                                                                </div> <!-- end col -->
                        
                                                                    
                                                                </div>
                                                                <!-- end row -->
                                                                
                                                      

                                                      <div class="row">

                                                        <div class="col-lg-6">
                                                          <div class="mb-3">
                                                              <label class="form-label">Are you a diabetic person ?</label>
                                                              <select class="form-select" name="diabetes">
                                                                    <option value="<%=medDTO.getDiabetes()%>" selected="selected"><%=medDTO.getDiabetes()%></option>
                                                                <option value="N/A">N/A</option>
                                                                <option value="Yes">Yes</option>
                                                              </select>
                                                              </div>
                                                      </div> <!-- end col -->

                                                      <div class="col-lg-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Do you have blood pressure ?</label>
                                                            <select class="form-select" name="blood_pressure" >
                                                                  <option value="<%=medDTO.getBlood_pressure()%>" selected="selected"><%=medDTO.getBlood_pressure()%></option>
                                                              <option value="N/A">N/A</option>
                                                              <option value="Low">Low Blood Pressure</option> 
                                                              <option value="High">High Blood Pressure</option> 
                                                            </select>
                                                            </div>
                                                    </div> <!-- end col -->
                                                      </div>
                                                      <!-- end row -->

                                                      

                                                      <div class="row">

                                                        <div class="col-lg-6">
                                                          <div class="mb-3">
                                                              <label class="form-label">Are you currently taking any medication?</label>
                                                              <select class="form-select" id="any-medication" name="any_medication">
                                                                    <option value="<%=medDTO.getAny_medication()%>" selected="selected"><%=medDTO.getAny_medication()%></option>
                                                                <option value="N/A">N/A</option>
                                                                <option value="Yes">Yes</option>
                                                              </select>
                                                              </div>
                                                      </div> <!-- end col -->

                                                      <div class="col-lg-6" id="medication-desc">
                                                        <div class="mb-3">
                                                            <label class="form-label">Please Describe</label>
                                                            <textarea name="medication_desc" data-toggle="maxlength" class="form-control" maxlength="225" rows="3" placeholder="This textarea has a limit of 225 chars."><%=medDTO.getMedication_desc()%></textarea>
                                                            </div>
                                                    </div> <!-- end col -->

                                                      <!-- Field Visible Code : Show-Hide -->
                                                      <script>

                                                        $("#any-medication").change(function() {
                                                          if ($(this).val() == "Yes") {
                                                            $('#medication-desc').show();
                                                          } else {
                                                            $('#medication-desc').hide();
                                                          }
                                                        });
                                                        $("#any-medication").trigger("change");

                                                      </script>

                                                      <div class="col-lg-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Do you have any medication allergies?</label>
                                                            <select class="form-select" id="medication-allergy" name="med_allergy">
                                                                  <option value="<%=medDTO.getMed_allergy()%>" selected="selected"><%=medDTO.getMed_allergy()%></option>
                                                              <option value="N/A">N/A</option>
                                                              <option value="Yes">Yes</option>
                                                            </select>
                                                            </div>
                                                    </div> <!-- end col -->

                                                    <div class="col-lg-6" id="allergy-desc">
                                                      <div class="mb-3">
                                                          <label class="form-label">Please Describe</label>
                                                          <textarea name="allergy_desc" data-toggle="maxlength" class="form-control" maxlength="225" rows="3" placeholder="This textarea has a limit of 225 chars."><%=medDTO.getAllergy_desc()%></textarea>
                                                          </div>
                                                  </div> <!-- end col -->

                                                    <!-- Field Visible Code : Show-Hide -->
                                                    <script>

                                                      $("#medication-allergy").change(function() {
                                                        if ($(this).val() == "Yes") {
                                                          $('#allergy-desc').show();
                                                        } else {
                                                          $('#allergy-desc').hide();
                                                        }
                                                      });
                                                      $("#medication-allergy").trigger("change");

                                                    </script>

                                                      </div>
                                                      <!-- end row -->
                                                      
                                                                   
                                                      <div class="row">

                                                        <div class="col-lg-6" >
                                                          <div class="mb-3">
                                                              <label class="form-label">Have you ever had (Please check all that apply)
                                                              </label>
                                                            
                                                              <div class="form-check mb-2">
                                                                  <input name="other_illness" value="Asthma" type="checkbox" class="form-check-input" id="customCheckcolor1" 
                                                                         
                                                                         <% if(al.contains("Asthma"))
                                                                                 {count++;
                                                                                     
        %>
        checked<%}
else{}%>
        >
                                                                <label class="form-check-label" for="customCheckcolor1">Asthma</label>
                                                              </div>
                                                              <div class="form-check mb-2">
                                                                <input name="other_illness" value="Cancer" type="checkbox" class="form-check-input" id="customCheckcolor1" 
                                                                       
                                                                       <% if(al.contains("Cancer"))
                                                                                 {count++;
                                                                                     
        %>
        checked<%}
else{}%>
        >
                                                                
                                                                <label class="form-check-label" for="customCheckcolor1">Cancer</label>
                                                              </div>
                                                              <div class="form-check mb-2">
                                                                  <input name="other_illness" value="Covid" type="checkbox" class="form-check-input" id="customCheckcolor1" 
                                                                         <% if(al.contains("Covid"))
                                                                                 {count++;
                                                                                     
        %>
        checked<%}
else{}%>
        >
                                                                <label class="form-check-label" for="customCheckcolor1">Covid</label>
                                                              </div>
                                                              <div class="form-check mb-2">
                                                                <input name="other_illness" value="Heart Disease" type="checkbox" class="form-check-input" id="customCheckcolor1" 
                                                                       
                                                                       <% if(al.contains("Heart Disease"))
                                                                                 {count++;
                                                                                     
        %>
        checked<%}
else{}%>
        >
                                                                
                                                                <label class="form-check-label" for="customCheckcolor1">Heart Disease</label>
                                                              </div>
                                                              <div class="form-check mb-2">
                                                                <input name="other_illness" value="Heart Attack" type="checkbox" class="form-check-input" id="customCheckcolor1" 
                                                                       <% if(al.contains("Heart Attack"))
                                                                                 {count++;
                                                                                     
        %>
        checked<%}
else{}%>
        >
                                                                <label class="form-check-label" for="customCheckcolor1">Heart Attack</label>
                                                              </div>
                                                            </div>
                                                      </div> <!-- end col -->
                                                      
                                                      <div class="col-lg-6" >
                                                        <div class="mb-3">
                                                            <label class="form-label">Any Other Illness</label>
                                                            <%
                                                                String other = "";
                                                                int i;
                                                                for( i=count;i<al.size()-1;i++)
                                                                {
                                                                    other += al.get(i) + ", ";
                                                                }
                                                                other += al.get(i) + "  ";
                                                                
                                                            %>
                                                            <textarea name="other_illness" data-toggle="maxlength" class="form-control" maxlength="225" rows="3" placeholder="This textarea has a limit of 225 chars."><%=other%></textarea>
                                                            </div>
                                                    </div> <!-- end col --> 
                                                      
                                                      </div>
                                                      <!-- end row -->

                                                      <div class="row">

                                                        <div class="col-lg-6">
                                                          <div class="mb-3">
                                                              <label class="form-label">Do you use or do you have history of using tobacco?</label>
                                                              <select class="form-select" name="tobacco" >
                                                                    <option value="<%=medDTO.getTobacco()%>" selected="selected"><%=medDTO.getTobacco()%></option>
                                                                <option value="N/A">N/A</option>
                                                                <option value="Yes">Yes</option>
                                                              </select>
                                                              </div>
                                                      </div> <!-- end col -->

                                                      <div class="col-lg-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">Do you smoke?</label>
                                                            <select class="form-select" name="smoking">
                                                                <option value="<%=medDTO.getSmoking()%>" selected="selected"><%=medDTO.getSmoking()%></option>
                                                              <option value="N/A">N/A</option>
                                                              <option value="Yes">Yes</option>
                                                            </select>
                                                            </div>
                                                    </div> <!-- end col -->

                                                      <div class="col-lg-6">
                                                        <div class="mb-3">
                                                            <label class="form-label">How often do you consume alcohol?</label>
                                                            <select class="form-select" name="alcohol" >
                                                                <option value="<%=medDTO.getAlcohol()%>" selected="selected"><%=medDTO.getAlcohol()%></option>
                                                              <option value="N/A">N/A</option>
                                                              <option value="Daily">Daily</option>
                                                              <option value="Weekly">Weekly</option>
                                                              <option value="Monthly">Monthly</option>
                                                              <option value="Occasionally">Occasionally</option>
                                                            </select>
                                                            </div>
                                                    </div> <!-- end col -->
                                                      </div>
                                                      <!-- end row -->
                                                      
                                                      <div class="row">

                                                        
                                                          <div class="mb-3">
                                                              <label class="form-label">Include Other Comments Regarding Your Medical History</label>
                                                              <textarea name="comment" data-toggle="maxlength" class="form-control" maxlength="500" rows="6" placeholder="This textarea has a limit of 500 chars."><%=medDTO.getComment()%></textarea>
                                                              </div>
                                                      

                                                      </div>
                                                      <!-- end row -->
                                                      <div class="row">

                                                        
                                                        <input type="submit" class="btn btn-outline-success" value="Submit">

                                                    </div>
                                                    <!-- end row -->
                                                        
                                                    </div>

                                                    

                                                    

                                                </div> <!-- tab-content -->
                                            </div> <!-- end #progressbarwizard-->
                                        </form>

                                    </div> <!-- end card-body -->
                                </div> <!-- end card-->
                            </div> <!-- end col -->

                             <!-- end col -->
                        </div>
          <!-- end page title -->

          
        <!-- container -->
      </div>
      <!-- content -->

      <!-- Footer Start -->
      <footer class="footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6">
              <script>
                document.write(new Date().getFullYear());
              </script>20222022
              202220222022 © Hyper - Coderthemes.com
            </div>
            <div class="col-md-6">
              <div class="text-md-end footer-links d-none d-md-block">
                <a href="javascript: void(0);">About</a>
                <a href="javascript: void(0);">Support</a>
                <a href="javascript: void(0);">Contact Us</a>
              </div>
            </div>
          </div>
        </div>
      </footer>
      <!-- end Footer -->
    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->
  </div>
  <!-- END wrapper -->



  <!-- Right Sidebar -->
  <div class="end-bar">
    <div class="rightbar-title">
      <a href="javascript:void(0);" class="end-bar-toggle float-end">
        <i class="dripicons-cross noti-icon"></i>
      </a>
      <h5 class="m-0">Settings</h5>
    </div>

    <div class="rightbar-content h-100" data-simplebar="init">
      <div class="simplebar-wrapper" style="margin: 0px">
        <div class="simplebar-height-auto-observer-wrapper">
          <div class="simplebar-height-auto-observer"></div>
        </div>
        <div class="simplebar-mask">
          <div class="simplebar-offset" style="right: 0px; bottom: 0px">
            <div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content" style="height: 100%; overflow: hidden scroll">
              <div class="simplebar-content" style="padding: 0px">
                <div class="p-3">
                  <div class="alert alert-warning" role="alert">
                    <strong>Customize </strong> the overall color scheme,
                    sidebar menu, etc.
                  </div>

                  <!-- Settings -->
                  <h5 class="mt-3">Color Scheme</h5>
                  <hr class="mt-1">

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="light" id="light-mode-check" checked="">
                    <label class="form-check-label" for="light-mode-check">Light Mode</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="dark" id="dark-mode-check">
                    <label class="form-check-label" for="dark-mode-check">Dark Mode</label>
                  </div>

                  <!-- Width -->
                  <h5 class="mt-4">Width</h5>
                  <hr class="mt-1">
                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="width" value="fluid" id="fluid-check" checked="">
                    <label class="form-check-label" for="fluid-check">Fluid</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="width" value="boxed" id="boxed-check">
                    <label class="form-check-label" for="boxed-check">Boxed</label>
                  </div>

                  <!-- Left Sidebar-->
                  <h5 class="mt-4">Left Sidebar</h5>
                  <hr class="mt-1">
                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="theme" value="default" id="default-check">
                    <label class="form-check-label" for="default-check">Default</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="theme" value="light" id="light-check" checked="">
                    <label class="form-check-label" for="light-check">Light</label>
                  </div>

                  <div class="form-check form-switch mb-3">
                    <input class="form-check-input" type="checkbox" name="theme" value="dark" id="dark-check">
                    <label class="form-check-label" for="dark-check">Dark</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="compact" value="fixed" id="fixed-check" checked="">
                    <label class="form-check-label" for="fixed-check">Fixed</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="compact" value="condensed" id="condensed-check">
                    <label class="form-check-label" for="condensed-check">Condensed</label>
                  </div>

                  <div class="form-check form-switch mb-1">
                    <input class="form-check-input" type="checkbox" name="compact" value="scrollable" id="scrollable-check">
                    <label class="form-check-label" for="scrollable-check">Scrollable</label>
                  </div>

                  <div class="d-grid mt-4">
                    <button class="btn btn-primary" id="resetBtn">
                      Reset to Default
                    </button>

                    <a href="https://themes.getbootstrap.com/product/hyper-responsive-admin-dashboard-template/" class="btn btn-danger mt-3" target="_blank"><i class="mdi mdi-basket me-1"></i> Purchase Now</a>
                  </div>
                </div>
                <!-- end padding-->
              </div>
            </div>
          </div>
        </div>
        <div class="simplebar-placeholder" style="width: auto; height: 756px"></div>
      </div>
      <div class="simplebar-track simplebar-horizontal" style="visibility: hidden">
        <div class="simplebar-scrollbar" style="width: 0px; display: none"></div>
      </div>
      <div class="simplebar-track simplebar-vertical" style="visibility: visible">
        <div class="simplebar-scrollbar" style="
              height: 463px;
              transform: translate3d(0px, 0px, 0px);
              display: block;
            "></div>
      </div>
    </div>
  </div>

  <div class="rightbar-overlay"></div>
  <!-- /End-bar -->

  <!-- bundle -->
  <script src="assets/js/vendor.min.js"></script>
  <script src="assets/js/app.min.js"></script>

  <!-- third party js -->
  <script src="assets/js/vendor/fullcalendar.min.js"></script>
  <!-- third party js ends -->

  <!-- demo app -->
  <script src="assets/js/pages/demo.calendar.js"></script>
  <!-- end demo js-->


  <!-- demo app -->
<script src="assets/js/pages/demo.form-wizard.js"></script>  
  <!-- Clock JS -->
  <script src="Additional Assets/clock.js"></script>

  <!-- Mirrored from coderthemes.com/hyper_2/saas/apps-calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Feb 2022 12:46:38 GMT -->




</div>

<% }
%>
</body></html>    
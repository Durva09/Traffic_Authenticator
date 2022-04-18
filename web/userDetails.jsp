<%@page import="dto.DocsDTO"%>
<%@page import="dao.DocsDAO"%>
<%@page import="dto.UserDTO"%>
<%@page import="dao.UserDAO"%>
<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from coderthemes.com/hyper_2/saas/apps-ecommerce-products.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Feb 2022 12:46:39 GMT -->
<head>
        <meta charset="utf-8" />
        <title>User Details</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- third party css -->
        <link href="assets/css/vendor/dataTables.bootstrap5.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/vendor/responsive.bootstrap5.css" rel="stylesheet" type="text/css" />
        <!-- third party css end -->

        <!-- App css -->
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" id="light-style" />
        <link href="assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

  
      <link rel="stylesheet" href="Additional Assets/docs-pop.css">
      
      <style>
      #Body2{
          display: none;
      }

      #Button2{
          display: none;
      }
     </style>
     
    </head>

    <body class="loading" data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'>
        <!-- Begin page -->
        <%
          String userid=(String)session.getAttribute("userid");
          if(session.getAttribute("userid")==null)
          {
              response.sendRedirect("userLogin.jsp");
              return ;
          }
          String user_id=(String)request.getAttribute("Message");
          if(user_id==null)
          {
              user_id=(String)request.getAttribute("user_id");
          }
          UserDAO user=new UserDAO();
          UserDTO dto=user.getUserData(user_id);
          DocsDAO docs=new DocsDAO();
          DocsDTO doc=docs.getUserDocs(user_id);
          DocsDTO udto=docs.getUserDocs(user_id);
          String license=udto.getLicense();
          DocsDTO dto2=docs.getLicenseInfo(license); 
          
          String aadhar=udto.getAadhar();
          DocsDTO dto3= docs.getAadharInfo(aadhar);
          UserDTO dto1=user.getUserHistory(user_id);
          UserDTO dto4=user.getUserComplain(user_id);
          
        %>
        <div class="wrapper">
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
                        <div class="simplebar-content-wrapper menuitem-active" tabindex="0" role="region"
                          aria-label="scrollable content" style="height: 100%; overflow: hidden">
                          <div class="simplebar-content show" style="padding: 0px">
                            <!--- Sidemenu -->
                            <ul class="side-nav">
                              <li class="side-nav-title side-nav-item">Navigation</li>
          
                              <li class="side-nav-item">
                                <a data-bs-toggle="collapse" href="#sidebarDashboards" aria-expanded="false"
                                  aria-controls="sidebarDashboards" class="side-nav-link collapsed">
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
                                  <i class="fa fa-car"></i>
                                  <span> Vehical Registion </span>
                                </a>
                              </li>
          
                              <li class="side-nav-item">
                                <a data-bs-toggle="collapse" href="#sidebarEcommerce" aria-expanded="false"
                                  aria-controls="sidebarEcommerce" class="side-nav-link collapsed">
                                  <i class="fa fa-car-alt"></i>
                                  <span>Registered Vehical</span>
                                  <span class="menu-arrow"></span>
                                </a>
                                <div class="collapse" id="sidebarEcommerce">
                                  <ul class="side-nav-second-level">
                                    <li>
                                      <a href="apps-ecommerce-products.html"><i class="fa fa-car-alt"></i>&nbsp;&nbsp;
                                        2-Wheeler Vehical</a>
                                    </li>
                                    <li>
                                      <a href="apps-ecommerce-products.html"><i class="fa fa-car-alt"></i>&nbsp;&nbsp;
                                        4-Wheeler Vehical</a>
                                    </li>
                                    <li>
                                      <a href="apps-ecommerce-products.html"><i class="fa fa-car-alt"></i>&nbsp;&nbsp;
                                        6-Wheeler Vehical</a>
                                    </li>
                                    <li>
                                      <a href="apps-ecommerce-products.html"><i class="fa fa-car-alt"></i>&nbsp;&nbsp;
                                        8-Wheeler Vehical</a>
                                    </li>
                                  </ul>
                                </div>
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
                                    <span class="align-middle d-none d-sm-inline-block">English</span> <i class="mdi mdi-chevron-down d-none d-sm-inline-block align-middle"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu">

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <img src="assets/images/flags/germany.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">German</span>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <img src="assets/images/flags/italy.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Italian</span>
                                    </a>
                
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <img src="assets/images/flags/spain.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Spanish</span>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <img src="assets/images/flags/russia.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Russian</span>
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
                                                </a>
                                            </span>Notification
                                        </h5>
                                    </div>

                                    <div style="max-height: 230px;" data-simplebar>
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon bg-primary">
                                                <i class="mdi mdi-comment-account-outline"></i>
                                            </div>
                                            <p class="notify-details">Caleb Flakelar commented on Admin
                                                <small class="text-muted">1 min ago</small>
                                            </p>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon bg-info">
                                                <i class="mdi mdi-account-plus"></i>
                                            </div>
                                            <p class="notify-details">New user registered.
                                                <small class="text-muted">5 hours ago</small>
                                            </p>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon">
                                                <img src="assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                            <p class="notify-details">Cristina Pride</p>
                                            <p class="text-muted mb-0 user-msg">
                                                <small>Hi, How are you? What about our next meeting</small>
                                            </p>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon bg-primary">
                                                <i class="mdi mdi-comment-account-outline"></i>
                                            </div>
                                            <p class="notify-details">Caleb Flakelar commented on Admin
                                                <small class="text-muted">4 days ago</small>
                                            </p>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon">
                                                <img src="assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                            <p class="notify-details">Karen Robinson</p>
                                            <p class="text-muted mb-0 user-msg">
                                                <small>Wow ! this admin looks good and awesome design</small>
                                            </p>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon bg-info">
                                                <i class="mdi mdi-heart"></i>
                                            </div>
                                            <p class="notify-details">Carlos Crouch liked
                                                <b>Admin</b>
                                                <small class="text-muted">13 days ago</small>
                                            </p>
                                        </a>
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
                                        </div> <!-- end row-->
                                    </div>

                                </div>
                            </li>

                            <li class="notification-list">
                                <a class="nav-link end-bar-toggle" href="javascript: void(0);">
                                    <i class="dripicons-gear noti-icon"></i>
                                </a>
                            </li>

                            <li class="dropdown notification-list">
                                <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false"
                                    aria-expanded="false">
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
                                    <div class=" dropdown-header noti-title">
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
                                    <input type="text" class="form-control dropdown-toggle"  placeholder="Search..." id="top-search">
                                    <span class="mdi mdi-magnify search-icon"></span>
                                    <button class="input-group-text btn-primary" type="submit">Search</button>
                                </div>
                            </form>

                            <div class="dropdown-menu dropdown-menu-animated dropdown-lg" id="search-dropdown">
                                <!-- item-->
                                <div class="dropdown-header noti-title">
                                    <h5 class="text-overflow mb-2">Found <span class="text-danger">17</span> results</h5>
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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Home</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Verify User</a></li>
                                            <li class="breadcrumb-item active">User Details </li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">User Details</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <!-- Invoice Logo-->
                                        <div class="clearfix">
                                            <div class="float-start mb-3">
                                                <h4 class="m-0 d-print-none ">User ID : <%=user_id%></h4>
                                            </div>
                                            <%if(dto4.getUser_complainid()!=null && !(dto4.getComplain_category().equals("Close_Complain"))){%>
                                            <div class="float-end">
                                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#danger-header-modal">ALERT</button>
                                            </div>
                                            <%}
                                            else{%>
                                            <div class="d-print-none mt-4">
                                           
                                            <div class="text-end">
                                                <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#suspicious-list"> Report</button>
                                               
                                            </div>
                                        </div>  
                                            <%}%>
                                        </div>

                                        <!-- Invoice Detail-->
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="float-end mt-3">
                                                    <p><b><%=dto.getName()%>, <%=dto.getEmail()%></b></p>
                                                    <p class="text-muted font-13">This vehicle belongs to <%=dto.getName()%> since 2019... It is a red colored vehicle. The driving license of the owner is attached below.</p>
                                                </div>
            
                                            </div><!-- end col -->
                                            <div class="col-sm-4 offset-sm-2">
                                                <div class="mt-3 float-sm-end">
                                                    <p class="font-13"><strong>Last Checked: </strong> <%if(dto1.getDatechecked()==null){out.println("N/A");}else{out.println(dto1.getDatechecked());}%></p>
<!--                                                    <p class="font-13"><strong>Vehicle Status: </strong> <span class="badge bg-success float-end"></span></p>-->
                                                    <p class="font-13"><strong>Police ID: </strong> <span class="float-end"><%=dto1.getPoliceid()%></span></p>
                                                    <p class="font-13"><strong>Location Checked: </strong> <span class="float-end"><%=dto1.getLocationchecked()%></span></p>
                                                    <p class="font-13"><strong>Time Checked: </strong> <span class="float-end"><%=dto1.getTimechecked()%></span></p>
                                                </div>
                                            </div><!-- end col -->
                                        </div>
                                        <!-- end row -->
            
                                        
                    </div> <!-- container -->

                </div> <!-- content -->

                

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>



        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title mb-3">Owner Information</h4>

                        <h5><%=dto.getName()%></h5>
                        
                        <address class="mb-0 font-14 address-lg">
                            <%=dto.getAddress()%><br><br>
                            <p class="mb-0"><span class="fw-bold me-2">License No. :</span> <%=doc.getLicense()%></p>
                                <p class="mb-0"><span class="fw-bold me-2">Phone :</span> <%=dto.getContact()%></p>
                                <p class="mb-0"><span class="fw-bold me-2">Email :</span> <%=dto.getEmail()%></p>
                        </address>

                    </div>
                </div>
            </div> <!-- end col -->

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title mb-3">User Details</h4>
                        <div class="col-sm-12"> 
                          <div class="text-sm">
                              <img src="assets/images/barcode.png" alt="barcode-image" class="img-fluid me-2"/>
                              <span style="margin: 5.5vw;"></span>
                              <img src="getQRcode.jsp?uid='<%=user_id%>'" alt="qr_code">
                          </div>
                      </div> <!-- end col-->

                    </div>
                </div>
            </div> <!-- end col -->

             <!-- end col -->
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        
                        <div class="row">
                            <div class="col-12">
                                <br>
                                <br>
                                <h4 class="m-0 d-print-none">View User License</h4>
                                <div class="card mb-0 mt-2">

                                    <div class="card-body p-3">
                                      <div class="d-flex align-items-start">
                                        <img src="Additional Assets/images/ashoka.png" alt="image" class="me-3 d-none d-sm-block avatar-sm rounded-circle">
                                        <div class="w-100 overflow-hidden">
                                          <h5 class="mb-1 mt-1">Driving License</h5>
                                          <p class="mb-0"> <%=license%> </p>
                                        </div> <!-- end w-100 -->
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#driving-license">View</button>
                                        
                                      </div> <!-- end d-flex -->
                                    </div> <!-- end card-body -->
                                  </div>

                                  <br>
                            <br>

                            <h4 class="m-0 d-print-none">View User Aadhar</h4>
                            <div class="card mb-0 mt-2">

                                <div class="card-body p-3">
                                  <div class="d-flex align-items-start">
                                    <img src="Additional Assets/images/Aadhar.svg" alt="image" class="me-3 d-none d-sm-block avatar-sm rounded-circle">
                                    <div class="w-100 overflow-hidden">
                                      <h5 class="mb-1 mt-1">Aadhar Card</h5>
                                      <p class="mb-0"> <%=aadhar%> </p>
                                    </div> <!-- end w-100 -->
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#aadhar-card">View</button>
                                    
                                  </div> <!-- end d-flex -->
                                </div> <!-- end card-body -->
                              </div>
                        </div>
                            </div> <!-- end col -->

                            
                        <!-- end row -->
<br>
<br>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="clearfix pt-3">
                                    <h6 class="text-muted">Notes:</h6>
                                    <small>
                                        All accounts are to be paid within 7 days from receipt of
                                        invoice. To be paid by cheque or credit card or direct payment
                                        online. If account is not paid within 7 days the credits details
                                        supplied as confirmation of work undertaken will be charged the
                                        agreed quoted fee noted above.
                                    </small>
                                </div>
                            </div> <!-- end col -->
                            
                        </div>
                        <!-- end row-->

                        
                        <!-- end buttons -->

                    </div> <!-- end card-body-->
                </div> <!-- end card -->
            </div> <!-- end col-->
        </div>
        <!-- end row -->
        

                        
    </div> <!-- container -->

</div> <!-- content -->

<!-- Footer Start -->
<footer class="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <script>document.write(new Date().getFullYear())</script> © Hyper - Coderthemes.com
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



        <!-- Modals -->


        
<!-- Suspicious List Modal -->
<div id="suspicious-list" class="modal fade" tabindex="-1" aria-modal="true" role="dialog">
  <div class="modal-dialog">
      <div class="modal-content">

          <div class="modal-body">
              <div class="text-center mt-2 mb-4">
                  <a href="index.html" class="text-success">
                      <span><img src="assets/images/logo-dark.png" alt="" height="18"></span>
                      <h4 class="modal-title" id="myLargeModalLabel">Report User</h4>

                  </a>
              </div>

              <form class="ps-3 pe-3" action="UserComplainServlet" method="post">

                  <div class="mb-3">
                      <label for="username" class="form-label">User ID</label>
                      <input class="form-control" type="text" name="user_id" value="<%=user_id%>" readonly>
                  </div>
                   <div class="mb-3">
                      <label for="username" class="form-label">Police ID</label>
                      <input class="form-control" type="text" name="police_id" value="<%=userid%>" readonly>
                  </div>
                  <div class="mb-3">
                      <label for="username" class="form-label">Complain Title</label>
                      <input class="form-control" type="text" name="title" >
                  </div>
                  <div class="mb-3">
                    <label for="example-select" class="form-label">Complain Type</label>
                    <select class="form-select" id="example-select" name="category">
                        <option value="">Select Complaint Type</option>
                        <option value="Criminal">Criminal</option>
                        <option value="Suspect">Suspect</option>
                        <option value="Close_Complain">Close_Complain</option>
                    </select>
                  </div>

                  <div class="mb-3">
                      <label for="password" class="form-label">Description</label>
                      <textarea name="description" cols="30" rows="2" class="form-control"></textarea>
                  </div>

                  <div class="mb-3">
                      <div class="form-check">
                          <input type="checkbox" class="form-check-input" id="customCheck1">
                          <label class="form-check-label" for="customCheck1">I accept <a href="#">Terms and Conditions</a></label>
                      </div> 
                  </div>

                  <div class="mb-3 text-center">
                      <button class="btn btn-primary" type="submit">Report</button>
                  </div>

              </form>

          </div>
      </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div>

            <!--  Modal Code : Aadhar Card -->
    <div class="modal fade" id="aadhar-card" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
          <div class="modal-content">
              <div class="modal-header">
                  <h4 class="modal-title" id="myLargeModalLabel">Large modal</h4>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                  
                  <div >
                      <img src="Additional Assets/images/top.png" alt="top" class="top">
                  </div>
                  <div class="table1">
                      <table>
                          <tr class="trow">
                              <td class="tcol">
                                  <img src="Additional Assets/images/profile.png" alt="profile" class="profile">
                              </td>
                              <td class="tcol">
                                  <ul style="list-style-type: none;">
                                    <li>
                                          <%=dto3.getName()%>
                                      </li>
                                      <li>
                                          <%=dto3.getDob()%>
                                      </li>
                                      <li>
                                          <%=dto3.getGender()%>
                                      </li>
                                      <li>
                                          <%=aadhar%>
                                      </li>
                                  </ul>
                              </td>
                          </tr>
                      </table>
                  </div>
                  <div>
                      <table>
                          <tr>
                              <p style=" width:80%; margin-left: 5%;"><b>Address</b></p>
                          </tr>
                          <tr>
                              <p style=" width:80%; margin-left: 5%;"><%=dto.getAddress()%></p>
                              <hr style="width: 90%; color: black;">
                          </tr>
                      </table>
                  </div>
                  
                  <div >
                      <img src="Additional Assets/images/bottom.png" alt="bottom" class="bottom">
                  </div>

              </div>
          </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->

            <!--  Modal Code : Driving License -->
  <div class="modal fade" id="driving-license" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
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
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


  <!-- ALERT MODAL -->
  <div id="danger-header-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="danger-header-modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form class="ps-3 pe-3" action="UserComplainServlet" method="post">
        <div class="modal-content">
            <div class="modal-header modal-colored-header bg-danger">
                <h4 class="modal-title" id="danger-header-modalLabel"><%=dto4.getComplain_title()%></h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" onclick="switchVisible2();" aria-label="Close"></button>
            </div>
            <div class="modal-body" id="Body1">
                <h5 class="mt-0"><%=dto4.getComplain_category()%></h5>
                <p><%=dto4.getComplain_description()%>....</p>
            </div>
            <div class="modal-body" id="Body2"><!-- Modal Body Hidden Open -->
                

                    <div class="mb-3">
                        <label for="username" class="form-label">User ID </label>
                        <input class="form-control" type="text" name="user_id" value="<%=user_id%>" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="username" class="form-label">Police ID </label>
                        <input class="form-control" type="text"  value="<%=userid%>" name="policeid" readonly>
                    </div>
                    <div class="mb-3">
                        <input class="form-control" type="hidden"  value="<%=dto4.getComplain_title()%>" name="title">
                    </div>
                    <div class="mb-3">
                        <label for="example-select" class="form-label">Complain Type</label>
                        <select class="form-select" id="example-select" name="category">
                           <option value="">Select Complaint Type</option>
                        <option value="Criminal">Criminal</option>
                        <option value="Suspect">Suspect</option>
                        <option value="Close_Complain">Close_Complain</option>
                        </select>
                      </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Description</label>
                        <textarea name="description" cols="30" rows="2" class="form-control"></textarea>
                    </div>

                    <div class="mb-3">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="customCheck1">
                            <label class="form-check-label" for="customCheck1">I accept <a href="#">Terms and Conditions</a></label>
                        </div> 
                    </div>

                  
               

            </div>
                    <!-- Modal Body Hidden Close -->

            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-bs-dismiss="modal" onclick="switchVisible2();">Close</button>
                <button type="button" id="Button1" class="btn btn-danger" onclick="switchVisible1();">Update Status</button>
                <button id="Button2" type="submit" class="btn btn-warning" >Update Status</button>
            </div>
        </div>
       </form><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- MODAL CLOSED-->
        <!-- Right Sidebar -->
        <div class="end-bar">

            <div class="rightbar-title">
                <a href="javascript:void(0);" class="end-bar-toggle float-end">
                    <i class="dripicons-cross noti-icon"></i>
                </a>
                <h5 class="m-0">Settings</h5>
            </div>

            <div class="rightbar-content h-100" data-simplebar>

                <div class="p-3">
                    <div class="alert alert-warning" role="alert">
                        <strong>Customize </strong> the overall color scheme, sidebar menu, etc.
                    </div>

                    <!-- Settings -->
                    <h5 class="mt-3">Color Scheme</h5>
                    <hr class="mt-1" />

                    <div class="form-check form-switch mb-1">
                        <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="light" id="light-mode-check" checked>
                        <label class="form-check-label" for="light-mode-check">Light Mode</label>
                    </div>

                    <div class="form-check form-switch mb-1">
                        <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="dark" id="dark-mode-check">
                        <label class="form-check-label" for="dark-mode-check">Dark Mode</label>
                    </div>
       

                    <!-- Width -->
                    <h5 class="mt-4">Width</h5>
                    <hr class="mt-1" />
                    <div class="form-check form-switch mb-1">
                        <input class="form-check-input" type="checkbox" name="width" value="fluid" id="fluid-check" checked>
                        <label class="form-check-label" for="fluid-check">Fluid</label>
                    </div>

                    <div class="form-check form-switch mb-1">
                        <input class="form-check-input" type="checkbox" name="width" value="boxed" id="boxed-check">
                        <label class="form-check-label" for="boxed-check">Boxed</label>
                    </div>
        

                    <!-- Left Sidebar-->
                    <h5 class="mt-4">Left Sidebar</h5>
                    <hr class="mt-1" />
                    <div class="form-check form-switch mb-1">
                        <input class="form-check-input" type="checkbox" name="theme" value="default" id="default-check">
                        <label class="form-check-label" for="default-check">Default</label>
                    </div>

                    <div class="form-check form-switch mb-1">
                        <input class="form-check-input" type="checkbox" name="theme" value="light" id="light-check" checked>
                        <label class="form-check-label" for="light-check">Light</label>
                    </div>

                    <div class="form-check form-switch mb-3">
                        <input class="form-check-input" type="checkbox" name="theme" value="dark" id="dark-check">
                        <label class="form-check-label" for="dark-check">Dark</label>
                    </div>

                    <div class="form-check form-switch mb-1">
                        <input class="form-check-input" type="checkbox" name="compact" value="fixed" id="fixed-check" checked>
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
                        <button class="btn btn-primary" id="resetBtn">Reset to Default</button>
            
                        <a href="https://themes.getbootstrap.com/product/hyper-responsive-admin-dashboard-template/"
                            class="btn btn-danger mt-3" target="_blank"><i class="mdi mdi-basket me-1"></i> Purchase Now</a>
                    </div>
                </div> <!-- end padding-->

            </div>
        </div>

        <div class="rightbar-overlay"></div>
        <!-- /End-bar -->


        <!-- bundle -->
        <script src="assets/js/vendor.min.js"></script>
        <script src="assets/js/app.min.js"></script>

        <!-- third party js -->
        <script src="assets/js/vendor/jquery.dataTables.min.js"></script>
        <script src="assets/js/vendor/dataTables.bootstrap5.js"></script>
        <script src="assets/js/vendor/dataTables.responsive.min.js"></script>
        <script src="assets/js/vendor/responsive.bootstrap5.min.js"></script>
        <script src="assets/js/vendor/dataTables.checkboxes.min.js"></script>

        <!-- third party js ends -->

        <!-- demo app -->
        <script src="assets/js/pages/demo.products.js"></script>
        <!-- end demo js-->
<script>
    function switchVisible1() {
            if (document.getElementById('Body1')) {

                if (document.getElementById('Body1').style.display == 'none') {
                    document.getElementById('Body1').style.display = 'block';
                    document.getElementById('Body1').style.display = 'none';
                    document.getElementById('Button1').style.display= 'block';
                    document.getElementById('Button1').style.display= 'none';
                }
                else {
                    document.getElementById('Body1').style.display = 'none';
                    document.getElementById('Button1').style.display= 'none';
                    document.getElementById('Body2').style.display = 'block';
                    document.getElementById('Button2').style.display= 'block';
                    
                }
            }
}

function switchVisible2() {
            if (document.getElementById('Body2')) {

                if (document.getElementById('Body2').style.display == 'none') {
                    document.getElementById('Body2').style.display = 'block';
                    document.getElementById('Body2').style.display = 'none';
                    document.getElementById('Button2').style.display= 'block';
                    document.getElementById('Button2').style.display= 'none';
                }
                else {
                    document.getElementById('Body2').style.display = 'none';
                    document.getElementById('Button2').style.display= 'none';
                    document.getElementById('Body1').style.display = 'block';
                    document.getElementById('Button1').style.display= 'block';
                }
            }
}
</script><!-- Modal Switching Script Close -->
<!-- MODAL CLOSED-->

    </body>

<!-- Mirrored from coderthemes.com/hyper_2/saas/apps-ecommerce-products.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Feb 2022 12:46:46 GMT -->
</html>

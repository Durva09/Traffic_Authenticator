<%@page import="dto.DealerDTO"%>
<%@page import="dao.DealerDAO"%>
<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from coderthemes.com/hyper_2/saas/extended-dragula.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Feb 2022 12:47:09 GMT -->

<head>
  <meta charset="utf-8">
  <title>Vehicle Registration</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
  <meta content="Coderthemes" name="author">
  <!-- App favicon -->
  <link rel="shortcut icon" href="assets/images/favicon.ico">
  <link rel="stylesheet" href="Additional Assets/docs-pop.css">

  <!-- App css -->
  <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css">
  <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" id="light-style">
  <link href="assets/css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style" disabled="disabled">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
    integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!-- <style>
      @media screen and (min-width:760px){
          .alternateno{
            margin-top:10px !important;
            
          }
      }
    </style> -->

</head>

<body class="show"
  data-layout-config="{&quot;leftSideBarTheme&quot;:&quot;dark&quot;,&quot;layoutBoxed&quot;:false, &quot;leftSidebarCondensed&quot;:false, &quot;leftSidebarScrollable&quot;:false,&quot;darkMode&quot;:false, &quot;showRightSidebarOnStart&quot;: true}"
  style="visibility: visible;" data-leftbar-theme="dark">
    <%
          String userid=(String)session.getAttribute("userid");
          if(session.getAttribute("userid")==null)
          {
              response.sendRedirect("userLogin.jsp");
              return ;
          }
          
          DealerDAO dealer=new DealerDAO();
          DealerDTO dealerdto=dealer.getDealerData(userid);
          String showroom=dealerdto.getAddress();
          
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

                    <li class="side-nav-item">
                      <a href="apps-calendar.html" class="side-nav-link active">
                        <i class="uil-user"></i>
                        <span> Profile </span>
                      </a>
                    </li>

                    <li class="side-nav-item menuitem-active">
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
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button"
                aria-haspopup="false" aria-expanded="false">
                <i class="dripicons-search noti-icon"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
                <form class="p-3">
                  <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                </form>
              </div>
            </li>
            <li class="dropdown notification-list topbar-dropdown">
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button"
                aria-haspopup="false" aria-expanded="false">
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
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button"
                aria-haspopup="false" aria-expanded="false">
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
                        <div class="simplebar-content-wrapper" tabindex="0" role="region"
                          aria-label="scrollable content" style="height: auto; overflow: hidden">
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
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button"
                aria-haspopup="false" aria-expanded="false">
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
              <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#"
                role="button" aria-haspopup="false" aria-expanded="false">
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
                    <img class="d-flex me-2 rounded-circle" src="assets/images/users/avatar-2.jpg"
                      alt="Generic placeholder image" height="32">
                    <div class="w-100">
                      <h5 class="m-0 font-14">Erwin Brown</h5>
                      <span class="font-12 mb-0">UI Designer</span>
                    </div>
                  </div>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <div class="d-flex">
                    <img class="d-flex me-2 rounded-circle" src="assets/images/users/avatar-5.jpg"
                      alt="Generic placeholder image" height="32">
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
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Hyper</a></li>
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Extended UI</a></li>
                    <li class="breadcrumb-item active">Vehicle Registration</li>
                  </ol>
                </div>
                <h4 class="page-title">Vehicle Registration</h4>
              </div>
            </div>
          </div>
          <!-- end page title -->

          <!-- end row -->


          <!-- end row -->


          <div class="row">
            <div class="col-xl-12">
              <div class="card">
                <div class="card-body">

                  <h4 class="header-title mb-3">Vehicle Registration</h4>

                  <form action="VehicleRegistrationServlet" method="post" enctype="multipart/form-data">
                    <div id="progressbarwizard">

                      <!-- <ul class="nav nav-pills nav-justified form-wizard-header mb-3">
                        <li class="nav-item">
                          <a href="#account-2" data-bs-toggle="tab" data-toggle="tab"
                            class="nav-link rounded-0 pt-2 pb-2 active">
                            <i class="mdi mdi-card-account-details-star me-1" style="font-size: 1.5rem;"></i>
                            <span class="d-none d-sm-inline">Customer Details</span>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="#profile-tab-2" data-bs-toggle="tab" data-toggle="tab"
                            class="nav-link rounded-0 pt-2 pb-2">
                            <i class="mdi mdi-car me-1" style="font-size: 1.5rem;"></i>
                            <span class="d-none d-sm-inline">Vehicle Details</span>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="#finish-2" data-bs-toggle="tab" data-toggle="tab"
                            class="nav-link rounded-0 pt-2 pb-2">
                            <i class="mdi mdi-checkbox-marked-circle-outline me-1" style="font-size: 1.5rem;"></i>
                            <span class="d-none d-sm-inline">Finish</span>
                          </a>
                        </li>
                      </ul> -->
                      <ul class="nav nav-pills nav-justified form-wizard-header mb-3">
                        <li class="nav-item">
                            <a href="#account-2" data-bs-toggle="tab" data-toggle="tab"
                            class="nav-link rounded-0 pt-2 pb-2 active">
                                <i class="mdi mdi-card-account-details-star me-1 font-22"></i>
                                <span class="d-none d-lg-block">Billing Info</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#profile-tab-2" data-bs-toggle="tab" data-toggle="tab"
                            class="nav-link rounded-0 pt-2 pb-2">
                            <i class="mdi mdi-car me-1 font-22"></i>
                                <span class="d-none d-lg-block">Shipping Info</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#finish-2" data-bs-toggle="tab" data-toggle="tab"
                            class="nav-link rounded-0 pt-2 pb-2">
                            <i class="mdi mdi-checkbox-marked-circle-outline me-1 font-22"></i>
                                <span class="d-none d-lg-block">Payment Info</span>
                            </a>
                        </li>
                    </ul>

                      <div class="tab-content b-0 mb-0">

                        <div id="bar" class="progress mb-3" style="height: 7px;">
                          <div class="bar progress-bar progress-bar-striped progress-bar-animated bg-success"
                            style="width: 33.3333%;"></div>
                        </div>

                        <div class="tab-pane active" id="account-2">
                          <div class="row">
                            <div class="col-12">
	            <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="soldby">Sold By</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" id="soldby" name="soldby" placeholder="Sold By" required>
                                </div>
                             </div>	
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="name">Name</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Father Name</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" id="userName1" name="fname" placeholder="Enter father's name" required>
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">DOB</label>
                                <div class="col-md-9">
                                  <input type="date" class="form-control" name="dob"  data-mask-format="00-00-0000" maxlength="10">
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Address</label>
                                <div class="col-md-9">
                                  <textarea data-toggle="maxlength" class="form-control" name="address" maxlength="225" rows="2" placeholder="Enter your aadress"></textarea>
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">State</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" id="userName1" name="state">
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">City</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" id="userName1" name="city">
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">PinCode</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" data-toggle="input-mask" name="pincode" data-mask-format="000000" maxlength="6">
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Phone no.</label>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" data-toggle="input-mask" name="contact1" placeholder="Enter phone no.1" data-mask-format="00000-00000" maxlength="11">
                                </div>
                                <div class="col-md-4">
                                  <input type="text" class="form-control" data-toggle="input-mask" name="contact2" placeholder="Enter phone no.2" data-mask-format="00000-00000" maxlength="11" class="alternateno">
                                </div>
                              </div>
                              
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Email Id</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" id="userName1" name="email">
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Aadhar no.</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" data-toggle="input-mask" name="aadhar" data-mask-format="000000000000" maxlength="12">
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">License no.</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control"  name="license"  maxlength="18">
                                </div>
                              </div>
                                                        <ul class="list-inline mb-0 wizard">
                          <li class="previous list-inline-item disabled">
                            <a href="#" class="btn btn-info">Previous</a>
                          </li>
                          <li class="next list-inline-item float-end">
                            <a href="#" class="btn btn-info">Next</a>
                          </li>
                        </ul>
                            </div> <!-- end col -->
                          </div> <!-- end row -->
                        </div>

                        <div class="tab-pane" id="profile-tab-2">
                          <div class="row">
                            <div class="col-12">
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Showroom Address</label>
                                <div class="col-md-9">
                                    <textarea data-toggle="maxlength" class="form-control" name="showroom_address" maxlength="225" rows="2" disabled><%out.print(showroom);%></textarea>
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Vehicle New No.</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" id="userName1" name="vehicleno">
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Engine No.</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" id="userName1" name="engineno">
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Chassis No.</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" name="chassis" maxlength="15">
                                </div>
                              </div>
                              
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">RC No.</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" id="userName1" name="rcno" >
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Engine Type</label>
                                <div class="col-md-9">
                                    <select name="enginetype" class="form-control" required>
                                        <option value="">---SELECT ANY---</option>
                                        <option value="diesel">Diesel</option>
                                        <option value="petrol">Petrol</option>
                                    </select>
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Vehicle Company</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" id="userName1" name="vehiclecompany">
                                </div>
                              </div>
                              
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Model No.</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" id="userName1" name="modelno">
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">RTO Name</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" name="rtoname" >
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Year of Manufacture</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" name="yearofmanufacture" >
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Vehicle Color</label>
                                <div class="col-md-9">
                                  <input type="text" class="form-control" name="vehiclecolor" >
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Registration Validity</label>
                                <div class="col-md-9">
                                  <input type="date" class="form-control" name="registrationvalidity">
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Vehicle Type</label>
                                <div class="col-md-9">
                                    <select name="vehicletype" class="form-control" required>
                                        <option value="">---SELECT ANY---</option>
                                        <option value="two">2</option>
                                        <option value="three">3</option>
                                        <option value="four">4</option>
                                        <option value="six">6</option>
                                        <option value="eight">8</option>
                                    </select>
                                </div>
                              </div>
                              <div class="row mb-3">
                                <label class="col-md-3 col-form-label" for="userName1">Vehicle Image</label>
                                <div class="col-md-9">
                                  <input type="file" name="vehicleimage" class="form-control" accept="image/png, image/jpeg">
                                </div>
                              </div>
                                                        <ul class="list-inline mb-0 wizard">
                          <li class="previous list-inline-item disabled">
                            <a href="#" class="btn btn-info">Previous</a>
                          </li>
                          <li class="next list-inline-item float-end">
                            <a href="#" class="btn btn-info">Next</a>
                          </li>
                        </ul>
                            </div> <!-- end col -->
                          </div> <!-- end row -->
                        </div>

                        <div class="tab-pane" id="finish-2">
                          <div class="row">
                            <div class="col-12">
                              <div class="text-center">
                                <h2 class="mt-0"><i class="mdi mdi-check-all"></i></h2>
                                <h3 class="mt-0">Thank you !</h3>

                                <button type="submit" class="btn btn-success" style="margin: 1.8rem 1.8rem;">Success</button>

                                <div class="mb-3">
                                  <div class="form-check d-inline-block">
                                    <input type="checkbox" class="form-check-input" id="customCheck3">
                                    <label class="form-check-label" for="customCheck3">I agree with the Terms and
                                      Conditions</label>
                                  </div>
                                </div>
                              </div>
                            </div> <!-- end col -->
                          </div> <!-- end row -->
                        </div>

<!--                        <ul class="list-inline mb-0 wizard">
                          <li class="previous list-inline-item disabled">
                            <a href="#" class="btn btn-info">Previous</a>
                          </li>
                          <li class="next list-inline-item float-end">
                            <a href="#" class="btn btn-info">Next</a>
                          </li>
                        </ul>-->

                      </div> <!-- tab-content -->
                    </div> <!-- end #progressbarwizard-->
                   
                  </form>

                </div> <!-- end card-body -->
              </div> <!-- end card-->
            </div> <!-- end col -->

            <div class="col-xl-6">
              <div class="card">
                <!-- end card-body -->
              </div> <!-- end card-->
            </div> <!-- end col -->
          </div> <!-- container -->

        </div> <!-- content -->

        <!-- Footer Start -->
        <footer class="footer">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-6">
                <script>document.write(new Date().getFullYear())</script> &nbsp;D&D company.com
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

    <!-- Popups -->
    <!-- Modal Code : Fetch Doc -->



    <!--  Modal Code : Aadhar Card -->



    <!--  Modal Code : Driving License -->




    <!-- Right Sidebar -->
    <div class="end-bar">

      <div class="rightbar-title">
        <a href="javascript:void(0);" class="end-bar-toggle float-end">
          <i class="dripicons-cross noti-icon"></i>
        </a>
        <h5 class="m-0">Settings</h5>
      </div>

      <div class="rightbar-content h-100" data-simplebar="init">
        <div class="simplebar-wrapper" style="margin: 0px;">
          <div class="simplebar-height-auto-observer-wrapper">
            <div class="simplebar-height-auto-observer"></div>
          </div>
          <div class="simplebar-mask">
            <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
              <div class="simplebar-content-wrapper" tabindex="0" role="region" aria-label="scrollable content"
                style="height: 100%; overflow: hidden scroll;">
                <div class="simplebar-content" style="padding: 0px;">

                  <div class="p-3">
                    <div class="alert alert-warning" role="alert">
                      <strong>Customize </strong> the overall color scheme, sidebar menu, etc.
                    </div>

                    <!-- Settings -->
                    <h5 class="mt-3">Color Scheme</h5>
                    <hr class="mt-1">

                    <div class="form-check form-switch mb-1">
                      <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="light"
                        id="light-mode-check" checked="">
                      <label class="form-check-label" for="light-mode-check">Light Mode</label>
                    </div>

                    <div class="form-check form-switch mb-1">
                      <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="dark"
                        id="dark-mode-check">
                      <label class="form-check-label" for="dark-mode-check">Dark Mode</label>
                    </div>


                    <!-- Width -->
                    <h5 class="mt-4">Width</h5>
                    <hr class="mt-1">
                    <div class="form-check form-switch mb-1">
                      <input class="form-check-input" type="checkbox" name="width" value="fluid" id="fluid-check"
                        checked="">
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
                      <input class="form-check-input" type="checkbox" name="theme" value="light" id="light-check"
                        checked="">
                      <label class="form-check-label" for="light-check">Light</label>
                    </div>

                    <div class="form-check form-switch mb-3">
                      <input class="form-check-input" type="checkbox" name="theme" value="dark" id="dark-check">
                      <label class="form-check-label" for="dark-check">Dark</label>
                    </div>

                    <div class="form-check form-switch mb-1">
                      <input class="form-check-input" type="checkbox" name="compact" value="fixed" id="fixed-check"
                        checked="">
                      <label class="form-check-label" for="fixed-check">Fixed</label>
                    </div>

                    <div class="form-check form-switch mb-1">
                      <input class="form-check-input" type="checkbox" name="compact" value="condensed"
                        id="condensed-check">
                      <label class="form-check-label" for="condensed-check">Condensed</label>
                    </div>

                    <div class="form-check form-switch mb-1">
                      <input class="form-check-input" type="checkbox" name="compact" value="scrollable"
                        id="scrollable-check">
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
            </div>
          </div>
          <div class="simplebar-placeholder" style="width: auto; height: 755px;"></div>
        </div>
        <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;">
          <div class="simplebar-scrollbar" style="width: 0px; display: none;"></div>
        </div>
        <div class="simplebar-track simplebar-vertical" style="visibility: visible;">
          <div class="simplebar-scrollbar"
            style="height: 171px; transform: translate3d(0px, 0px, 0px); display: block;"></div>
        </div>
      </div>
    </div>

    <div class="rightbar-overlay"></div>
    <!-- /End-bar -->


    <!-- bundle -->
    <script src="assets/js/vendor.min.js"></script>
    <script src="assets/js/app.min.js"></script>

    <!-- dragula js-->
    <script src="assets/js/vendor/dragula.min.js"></script>

    <!-- component js -->
    <script src="assets/js/ui/component.dragula.js"></script>
    <script src="assets/js/pages/demo.form-wizard.js"></script>


    <!-- Mirrored from coderthemes.com/hyper_2/saas/extended-dragula.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Feb 2022 12:47:09 GMT -->

    <!-- Code injected by live-server -->
  </div>
</body>

</html>
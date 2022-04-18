<%@page import="dto.DealerDTO"%>
<%@page import="dao.DealerDAO"%>

<!DOCTYPE html>
<html lang="en" class="menuitem-active">
  <!-- Mirrored from coderthemes.com/hyper_2/saas/apps-calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Feb 2022 12:46:37 GMT --><head>
    <meta charset="utf-8" />
    <title>Dealer Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta
      content="A fully featured admin theme which can be used to build CRM, CMS, etc."
      name="description"
    />
    <meta content="Coderthemes" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico" />

    <!-- User Profile CSS  -->
    <link rel="stylesheet" href="Additional Assets/user-profile.css" />
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <!-- third party css -->
    <link
      href="assets/css/vendor/fullcalendar.min.css"
      rel="stylesheet"
      type="text/css"
    />
    <!-- third party css end -->

    <!-- App css -->
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link
      href="assets/css/app.min.css"
      rel="stylesheet"
      type="text/css"
      id="light-style"
    />
    <link
      href="assets/css/app-dark.min.css"
      rel="stylesheet"
      type="text/css"
      id="dark-style"
      disabled="disabled"
    />

    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
      integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
      crossorigin="anonymous"
    />
    <script
      src="https://kit.fontawesome.com/a076d05399.js"
      crossorigin="anonymous"
    ></script>

    <style>
        .zoom:hover{
            transform: scale(1.2);
        }
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
      
      @media screen and(max-width:353px){
          
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

  <body
    class="show"
    data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'
    style="visibility: visible"
    data-leftbar-theme="dark"
  >
      <%
          String userid=(String)session.getAttribute("userid");
           if(session.getAttribute("userid")==null)
          {
              response.sendRedirect("userLogin.jsp");
              return ;
          }
      %>
      
      <%
       DealerDAO dealer=new DealerDAO();
       DealerDTO dealers=dealer.getDealerData(userid);
      String userotp = (String)request.getAttribute("Message");
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
      
      
      
      
    <!-- Begin page -->
    <div class="wrapper menuitem-active">
      <!-- ========== Left Sidebar Start ========== -->
      <div class="leftside-menu menuitem-active show">
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
                        <i class="fa fa-car"></i>
                        <span> Vehicle Registration </span>
                      </a>
                    </li>

                    <li class="side-nav-item">
                      <a data-bs-toggle="collapse" href="#sidebarEcommerce" aria-expanded="false" aria-controls="sidebarEcommerce" class="side-nav-link collapsed">
                        <i class="fa fa-car-alt"></i>
                        <span>Registered Vehicle</span>
                        <span class="menu-arrow"></span>
                      </a>
                      <div class="collapse" id="sidebarEcommerce">
                        <ul class="side-nav-second-level">
                          <li>
                            <a href="apps-ecommerce-products.html"><i class="fa fa-car-alt"></i>&nbsp;&nbsp;
                              2-Wheeler Vehicle</a>
                          </li>
                          <li>
                            <a href="apps-ecommerce-products.html"><i class="fa fa-car-alt"></i>&nbsp;&nbsp;
                              4-Wheeler Vehicle</a>
                          </li>
                          <li>
                            <a href="apps-ecommerce-products.html"><i class="fa fa-car-alt"></i>&nbsp;&nbsp;
                              6-Wheeler Vehicle</a>
                          </li>
                          <li>
                            <a href="apps-ecommerce-products.html"><i class="fa fa-car-alt"></i>&nbsp;&nbsp;
                              8-Wheeler Vehicle</a>
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
                <a
                  class="nav-link dropdown-toggle arrow-none"
                  data-bs-toggle="dropdown"
                  href="#"
                  role="button"
                  aria-haspopup="false"
                  aria-expanded="false"
                >
                  <i class="dripicons-search noti-icon"></i>
                </a>
                <div
                  class="dropdown-menu dropdown-menu-animated dropdown-lg p-0"
                >
                  <form class="p-3">
                    <input
                      type="text"
                      class="form-control"
                      placeholder="Search ..."
                      aria-label="Recipient's username"
                    />
                  </form>
                </div>
              </li>
              <li class="dropdown notification-list topbar-dropdown">
                <a
                  class="nav-link dropdown-toggle arrow-none"
                  data-bs-toggle="dropdown"
                  href="#"
                  role="button"
                  aria-haspopup="false"
                  aria-expanded="false"
                >
                  <img
                    src="assets/images/flags/us.jpg"
                    alt="user-image"
                    class="me-0 me-sm-1"
                    height="12"
                  />
                  <span class="align-middle d-none d-sm-inline-block"
                    >Theme</span
                  >
                  <i
                    class="mdi mdi-chevron-down d-none d-sm-inline-block align-middle"
                  ></i>
                </a>
                <div
                  class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu"
                >
                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <img
                      src="assets/images/flags/germany.jpg"
                      alt="user-image"
                      class="me-1"
                      height="12"
                    />
                    <span class="align-middle">Light</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <img
                      src="assets/images/flags/italy.jpg"
                      alt="user-image"
                      class="me-1"
                      height="12"
                    />
                    <span class="align-middle">Dark</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <img
                      src="assets/images/flags/spain.jpg"
                      alt="user-image"
                      class="me-1"
                      height="12"
                    />
                    <span class="align-middle">Grey</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <img
                      src="assets/images/flags/russia.jpg"
                      alt="user-image"
                      class="me-1"
                      height="12"
                    />
                    <span class="align-middle">Default</span>
                  </a>
                </div>
              </li>

              <li class="dropdown notification-list">
                <a
                  class="nav-link dropdown-toggle arrow-none"
                  data-bs-toggle="dropdown"
                  href="#"
                  role="button"
                  aria-haspopup="false"
                  aria-expanded="false"
                >
                  <i class="dripicons-bell noti-icon"></i>
                  <span class="noti-icon-badge"></span>
                </a>
                <div
                  class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg"
                >
                  <!-- item-->
                  <div class="dropdown-item noti-title">
                    <h5 class="m-0">
                      <span class="float-end">
                        <a href="javascript: void(0);" class="text-dark">
                          <small>Clear All</small>
                        </a> </span
                      >Notification
                    </h5>
                  </div>

                  <div style="max-height: 230px" data-simplebar="init">
                    <div class="simplebar-wrapper" style="margin: 0px">
                      <div class="simplebar-height-auto-observer-wrapper">
                        <div class="simplebar-height-auto-observer"></div>
                      </div>
                      <div class="simplebar-mask">
                        <div
                          class="simplebar-offset"
                          style="right: 0px; bottom: 0px"
                        >
                          <div
                            class="simplebar-content-wrapper"
                            tabindex="0"
                            role="region"
                            aria-label="scrollable content"
                            style="height: auto; overflow: hidden"
                          >
                            <div class="simplebar-content" style="padding: 0px">
                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item notify-item"
                              >
                                <div class="notify-icon bg-primary">
                                  <i
                                    class="mdi mdi-comment-account-outline"
                                  ></i>
                                </div>
                                <p class="notify-details">
                                  Caleb Flakelar commented on Admin
                                  <small class="text-muted">1 min ago</small>
                                </p>
                              </a>

                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item notify-item"
                              >
                                <div class="notify-icon bg-info">
                                  <i class="mdi mdi-account-plus"></i>
                                </div>
                                <p class="notify-details">
                                  New user registered.
                                  <small class="text-muted">5 hours ago</small>
                                </p>
                              </a>

                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item notify-item"
                              >
                                <div class="notify-icon">
                                  <img
                                    src="assets/images/users/avatar-2.jpg"
                                    class="img-fluid rounded-circle"
                                    alt=""
                                  />
                                </div>
                                <p class="notify-details">Cristina Pride</p>
                                <p class="text-muted mb-0 user-msg">
                                  <small
                                    >Hi, How are you? What about our next
                                    meeting</small
                                  >
                                </p>
                              </a>

                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item notify-item"
                              >
                                <div class="notify-icon bg-primary">
                                  <i
                                    class="mdi mdi-comment-account-outline"
                                  ></i>
                                </div>
                                <p class="notify-details">
                                  Caleb Flakelar commented on Admin
                                  <small class="text-muted">4 days ago</small>
                                </p>
                              </a>

                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item notify-item"
                              >
                                <div class="notify-icon">
                                  <img
                                    src="assets/images/users/avatar-4.jpg"
                                    class="img-fluid rounded-circle"
                                    alt=""
                                  />
                                </div>
                                <p class="notify-details">Karen Robinson</p>
                                <p class="text-muted mb-0 user-msg">
                                  <small
                                    >Wow ! this admin looks good and awesome
                                    design</small
                                  >
                                </p>
                              </a>

                              <!-- item-->
                              <a
                                href="javascript:void(0);"
                                class="dropdown-item notify-item"
                              >
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
                      <div
                        class="simplebar-placeholder"
                        style="width: 0px; height: 0px"
                      ></div>
                    </div>
                    <div
                      class="simplebar-track simplebar-horizontal"
                      style="visibility: hidden"
                    >
                      <div
                        class="simplebar-scrollbar"
                        style="width: 0px; display: none"
                      ></div>
                    </div>
                    <div
                      class="simplebar-track simplebar-vertical"
                      style="visibility: hidden"
                    >
                      <div
                        class="simplebar-scrollbar"
                        style="height: 0px; display: none"
                      ></div>
                    </div>
                  </div>

                  <!-- All-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item text-center text-primary notify-item notify-all"
                  >
                    View All
                  </a>
                </div>
              </li>

              <li class="dropdown notification-list d-none d-sm-inline-block">
                <a
                  class="nav-link dropdown-toggle arrow-none"
                  data-bs-toggle="dropdown"
                  href="#"
                  role="button"
                  aria-haspopup="false"
                  aria-expanded="false"
                >
                  <i class="dripicons-view-apps noti-icon"></i>
                </a>
                <div
                  class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg p-0"
                >
                  <div class="p-2">
                    <div class="row g-0">
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="assets/images/brands/slack.png"
                            alt="slack"
                          />
                          <span>Slack</span>
                        </a>
                      </div>
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="assets/images/brands/github.png"
                            alt="Github"
                          />
                          <span>GitHub</span>
                        </a>
                      </div>
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="assets/images/brands/dribbble.png"
                            alt="dribbble"
                          />
                          <span>Dribbble</span>
                        </a>
                      </div>
                    </div>

                    <div class="row g-0">
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="assets/images/brands/bitbucket.png"
                            alt="bitbucket"
                          />
                          <span>Bitbucket</span>
                        </a>
                      </div>
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="assets/images/brands/dropbox.png"
                            alt="dropbox"
                          />
                          <span>Dropbox</span>
                        </a>
                      </div>
                      <div class="col">
                        <a class="dropdown-icon-item" href="#">
                          <img
                            src="assets/images/brands/g-suite.png"
                            alt="G Suite"
                          />
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
                <a
                  class="nav-link dropdown-toggle nav-user arrow-none me-0"
                  data-bs-toggle="dropdown"
                  href="#"
                  role="button"
                  aria-haspopup="false"
                  aria-expanded="false"
                >
                  <span class="account-user-avatar">
                    <img
                      src="assets/images/users/avatar-1.jpg"
                      alt="user-image"
                      class="rounded-circle"
                    />
                  </span>
                  <span>
                    <span class="account-user-name">Dominic Keller</span>
                    <span class="account-position">Founder</span>
                  </span>
                </a>
                <div
                  class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown"
                >
                  <!-- item-->
                  <div class="dropdown-header noti-title">
                    <h6 class="text-overflow m-0">Welcome !</h6>
                  </div>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <i class="mdi mdi-account-circle me-1"></i>
                    <span>My Account</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <i class="mdi mdi-account-edit me-1"></i>
                    <span>Settings</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <i class="mdi mdi-lifebuoy me-1"></i>
                    <span>Support</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <i class="mdi mdi-lock-outline me-1"></i>
                    <span>Lock Screen</span>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
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
                  <input
                    type="text"
                    class="form-control dropdown-toggle"
                    placeholder="Search..."
                    id="top-search"
                  />
                  <span class="mdi mdi-magnify search-icon"></span>
                  <button class="input-group-text btn-primary" type="submit">
                    Search
                  </button>
                </div>
              </form>

              <div
                class="dropdown-menu dropdown-menu-animated dropdown-lg"
                id="search-dropdown"
              >
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
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <div class="d-flex">
                      <img
                        class="d-flex me-2 rounded-circle"
                        src="assets/images/users/avatar-2.jpg"
                        alt="Generic placeholder image"
                        height="32"
                      />
                      <div class="w-100">
                        <h5 class="m-0 font-14">Erwin Brown</h5>
                        <span class="font-12 mb-0">UI Designer</span>
                      </div>
                    </div>
                  </a>

                  <!-- item-->
                  <a
                    href="javascript:void(0);"
                    class="dropdown-item notify-item"
                  >
                    <div class="d-flex">
                      <img
                        class="d-flex me-2 rounded-circle"
                        src="assets/images/users/avatar-5.jpg"
                        alt="Generic placeholder image"
                        height="32"
                      />
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
                      
                    </ol>
                  </div>
                  <h4 class="page-title">Dealer Dashboard</h4>
                </div>
              </div>
            </div>
            <!-- end page title -->

            <div class="row">
              <!-- User Profile Code -->

              
            <div class="row">
              <div class="col-md-15 mx-auto">
                <!-- Profile widget -->
                

                <div class="card z-depth-3">
                  
                  <!-- end card-box-->

                  <div class="card-body">
                    <ul class="nav nav-pills nav-pills-primary nav-justified">
                      <li class="nav-item">
                        <a href="javascript:void();" data-target="#profile" data-toggle="pill" class="nav-link active show"><i class="icon-user"></i>
                          <span class="hidden-xs">Profile</span></a>
                      </li>
                      <!-- <li class="nav-item">
                        <a href="javascript:void();" data-target="#messages" data-toggle="pill" class="nav-link"><i
                            class="icon-envelope-open"></i>
                          <span class="hidden-xs">Messages</span></a>
                      </li> -->
                      <li class="nav-item">
                        <a href="javascript:void();" data-target="#edit" data-toggle="pill" class="nav-link"><i class="icon-note"></i>
                          <span class="hidden-xs">Edit</span></a>
                      </li>
                    </ul>
                    <div class="tab-content p-3">
                      <!-- User Profile -->
                      <div class="tab-pane active show" id="profile">
                        <h5 class="mb-3">User Profile</h5>
                        <div class="card mb-3" style="flex-direction: row">
                          <div class="card-body">
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Shop Owner</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                <%out.println(dealers.getName());%>
                              </div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Liencese Issue Date</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                <%out.println(dealers.getIssue_Date());%>
                              </div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Address</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                <%out.println(dealers.getAddress());%>
                              </div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Mobile</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                <%out.println(dealers.getContact());%>
                              </div>
                            </div>
                          </div>
                              
                          <div class="card-body">
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Email</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                <%out.println(dealers.getEmail());%>
                              </div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">License No.</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                <%out.println(dealers.getLicense_No());%>
                              </div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">UserId</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                <%out.println(userid);%>
                              </div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Password</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                *******
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- extra add by dj -->
                      </div>

                      <!-- <div class="tab-pane" id="messages">
                        <h5 class="mb-3">Government Id's</h5>
                        <div class="card mb-3">
                          <div class="card-body">
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Aadhar No.</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                1234-5678-0000
                                <i class="fa fa-check-circle" aria-hidden="true" style="color: green"></i>
                              </div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Liencese No.</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                1234-5678-0000
                                <a class="btn btn-info" target="__blank"
                                  href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Add Doc</a>
                              </div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Passport</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                1234-5678-0000
                                <a class="btn btn-info" target="__blank"
                                  href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Add Doc</a>
                              </div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Pancard</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                1234-5678-0000
                                <a class="btn btn-info" target="__blank"
                                  href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Add Doc</a>
                              </div>
                            </div>
                            <hr>
                            <div class="row">
                              <div class="col-sm-3">
                                <h6 class="mb-0">Vaccine Certificate</h6>
                              </div>
                              <div class="col-sm-9 text-secondary">
                                1234-5678-0000

                                <a class="btn btn-info" target="__blank"
                                  href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Add Doc</a>
                              </div>
                            </div>
                            <hr>
                          </div>
                        </div>
                      </div> -->

                      <div class="tab-pane" id="edit">
                        <div class="card mb-4">
                          <div class="card-header">Edit Details</div>

                          <div class="card">
                            <div class="card-body">



                              <!-- end nav-->
                              <div class="tab-content">
                                <div class="tab-pane show active" id="tooltips-validation-preview">
                                    <div class="position-relative mb-3">
                                      <label class="form-label" for="validationTooltip01">Owner Name</label>
                                      <input type="text" class="form-control" id="validationTooltip01" placeholder="First name" value="<%out.println(dealers.getName());%>" readonly required="">


                                    </div>
                                    <div class="position-relative mb-3">
                                      <label class="form-label" for="validationTooltip02">License No.</label>
                                      <input type="text" class="form-control" id="validationTooltip02" placeholder="Last name" value="<%out.print(dealers.getLicense_No());%>" readonly required="">
                                    </div>
                                    <div class="position-relative mb-3">
                                      <label class="form-label" for="validationTooltipUsername">Email</label>
                                      <div class="input-group">
                                        <span class="input-group-text" id="validationTooltipUsernamePrepend">@</span>
                                        <input type="text" class="form-control" id="validationTooltipUsername" value="<%out.print(dealers.getEmail());%>" name="email" aria-describedby="validationTooltipUsernamePrepend" required="">
                                        <button class="btn btn-dark" type="button" data-bs-toggle="modal" data-bs-target="#email-modal" >Change Email</button>
                                      </div>
                                    </div>
                                    <div class="position-relative mb-3">
                                      <label class="form-label" for="validationTooltip02">Address</label>
                                      <input type="text" class="form-control" id="validationTooltip02" placeholder="Last name" value="<%out.println(dealers.getAddress());%>" readonly required="">


                                    </div>
                                      <form action="DealerUpdateServlet" method="post">
                                    <div class="position-relative mb-3">
                                      <label class="form-label" for="validationTooltip04">Mobile No.</label>
                                      <input type="text" class="form-control" name="contact" id="validationTooltip04" value="<%out.print(dealers.getContact());%>" required="">
                                      <button class="btn btn-dark" type="submit">Change Mobile No</button>
                                    </div>
                                      </form>
                                    <div class="position-relative mb-3">
                                      <label class="form-label" for="validationTooltip05">Password</label>
                                      <input type="text" class="form-control" id="validationTooltip05" placeholder="*****" required="">
                                      <button class="btn btn-dark" type="button" data-bs-toggle="modal" data-bs-target="#password-modal" >Change Password</button>
                                    </div>
                                </div> <!-- end preview-->

                                <div class="tab-pane" id="tooltips-validation-code">
                                  <pre class="mb-0">                                                    <span class="html escape hljs xml"><span class="hljs-tag">&lt;<span class="hljs-name">form</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"needs-validation"</span> <span class="hljs-attr">novalidate</span>&gt;</span>    <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"position-relative mb-3"</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span> <span class="hljs-attr">for</span>=<span class="hljs-string">"validationTooltip01"</span>&gt;</span>First name<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"validationTooltip01"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"First name"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">"Mark"</span> <span class="hljs-attr">required</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"valid-tooltip"</span>&gt;</span>            Looks good!        <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"invalid-tooltip"</span>&gt;</span>            Please enter first name.        <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"position-relative mb-3"</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span> <span class="hljs-attr">for</span>=<span class="hljs-string">"validationTooltip02"</span>&gt;</span>Last name<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"validationTooltip02"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"Last name"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">"Otto"</span> <span class="hljs-attr">required</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"valid-tooltip"</span>&gt;</span>            Looks good!        <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"invalid-tooltip"</span>&gt;</span>            Please enter last name.        <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"position-relative mb-3"</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span> <span class="hljs-attr">for</span>=<span class="hljs-string">"validationTooltipUsername"</span>&gt;</span>Username<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"input-group"</span>&gt;</span>            <span class="hljs-tag">&lt;<span class="hljs-name">span</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"input-group-text"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"validationTooltipUsernamePrepend"</span>&gt;</span>@<span class="hljs-tag">&lt;/<span class="hljs-name">span</span>&gt;</span>            <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"validationTooltipUsername"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"Username"</span>                <span class="hljs-attr">aria-describedby</span>=<span class="hljs-string">"validationTooltipUsernamePrepend"</span> <span class="hljs-attr">required</span>&gt;</span>            <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"invalid-tooltip"</span>&gt;</span>                Please choose a unique and valid username.            <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>        <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"position-relative mb-3"</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span> <span class="hljs-attr">for</span>=<span class="hljs-string">"validationTooltip03"</span>&gt;</span>City<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"validationTooltip03"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"City"</span> <span class="hljs-attr">required</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"invalid-tooltip"</span>&gt;</span>            Please provide a valid city.        <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"position-relative mb-3"</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span> <span class="hljs-attr">for</span>=<span class="hljs-string">"validationTooltip04"</span>&gt;</span>State<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"validationTooltip04"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"State"</span> <span class="hljs-attr">required</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"invalid-tooltip"</span>&gt;</span>            Please provide a valid state.        <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"position-relative mb-3"</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">label</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-label"</span> <span class="hljs-attr">for</span>=<span class="hljs-string">"validationTooltip05"</span>&gt;</span>Zip<span class="hljs-tag">&lt;/<span class="hljs-name">label</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"form-control"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"validationTooltip05"</span> <span class="hljs-attr">placeholder</span>=<span class="hljs-string">"Zip"</span> <span class="hljs-attr">required</span>&gt;</span>        <span class="hljs-tag">&lt;<span class="hljs-name">div</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"invalid-tooltip"</span>&gt;</span>            Please provide a valid zip.        <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;/<span class="hljs-name">div</span>&gt;</span>    <span class="hljs-tag">&lt;<span class="hljs-name">button</span> <span class="hljs-attr">class</span>=<span class="hljs-string">"btn btn-primary"</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"submit"</span>&gt;</span>Submit form<span class="hljs-tag">&lt;/<span class="hljs-name">button</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">form</span>&gt;</span></span>
                                                </pre> <!-- end highlight-->
                                </div> <!-- end preview code-->
                              </div> <!-- end tab-content-->
                            </div> <!-- end card-body-->
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          </div>
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
                </script>
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
              <div
                class="simplebar-content-wrapper"
                tabindex="0"
                role="region"
                aria-label="scrollable content"
                style="height: 100%; overflow: hidden scroll"
              >
                <div class="simplebar-content" style="padding: 0px">
                  <div class="p-3">
                    <div class="alert alert-warning" role="alert">
                      <strong>Customize </strong> the overall color scheme,
                      sidebar menu, etc.
                    </div>

                    <!-- Settings -->
                    <h5 class="mt-3">Color Scheme</h5>
                    <hr class="mt-1" />

                    <div class="form-check form-switch mb-1">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="color-scheme-mode"
                        value="light"
                        id="light-mode-check"
                        checked=""
                      />
                      <label class="form-check-label" for="light-mode-check"
                        >Light Mode</label
                      >
                    </div>

                    <div class="form-check form-switch mb-1">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="color-scheme-mode"
                        value="dark"
                        id="dark-mode-check"
                      />
                      <label class="form-check-label" for="dark-mode-check"
                        >Dark Mode</label
                      >
                    </div>

                    <!-- Width -->
                    <h5 class="mt-4">Width</h5>
                    <hr class="mt-1" />
                    <div class="form-check form-switch mb-1">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="width"
                        value="fluid"
                        id="fluid-check"
                        checked=""
                      />
                      <label class="form-check-label" for="fluid-check"
                        >Fluid</label
                      >
                    </div>

                    <div class="form-check form-switch mb-1">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="width"
                        value="boxed"
                        id="boxed-check"
                      />
                      <label class="form-check-label" for="boxed-check"
                        >Boxed</label
                      >
                    </div>

                    <!-- Left Sidebar-->
                    <h5 class="mt-4">Left Sidebar</h5>
                    <hr class="mt-1" />
                    <div class="form-check form-switch mb-1">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="theme"
                        value="default"
                        id="default-check"
                      />
                      <label class="form-check-label" for="default-check"
                        >Default</label
                      >
                    </div>

                    <div class="form-check form-switch mb-1">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="theme"
                        value="light"
                        id="light-check"
                        checked=""
                      />
                      <label class="form-check-label" for="light-check"
                        >Light</label
                      >
                    </div>

                    <div class="form-check form-switch mb-3">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="theme"
                        value="dark"
                        id="dark-check"
                      />
                      <label class="form-check-label" for="dark-check"
                        >Dark</label
                      >
                    </div>

                    <div class="form-check form-switch mb-1">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="compact"
                        value="fixed"
                        id="fixed-check"
                        checked=""
                      />
                      <label class="form-check-label" for="fixed-check"
                        >Fixed</label
                      >
                    </div>

                    <div class="form-check form-switch mb-1">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="compact"
                        value="condensed"
                        id="condensed-check"
                      />
                      <label class="form-check-label" for="condensed-check"
                        >Condensed</label
                      >
                    </div>

                    <div class="form-check form-switch mb-1">
                      <input
                        class="form-check-input"
                        type="checkbox"
                        name="compact"
                        value="scrollable"
                        id="scrollable-check"
                      />
                      <label class="form-check-label" for="scrollable-check"
                        >Scrollable</label
                      >
                    </div>

                    <div class="d-grid mt-4">
                      <button class="btn btn-primary" id="resetBtn">
                        Reset to Default
                      </button>

                      <a
                        href="https://themes.getbootstrap.com/product/hyper-responsive-admin-dashboard-template/"
                        class="btn btn-danger mt-3"
                        target="_blank"
                        ><i class="mdi mdi-basket me-1"></i> Purchase Now</a
                      >
                    </div>
                  </div>
                  <!-- end padding-->
                </div>
              </div>
            </div>
          </div>
          <div
            class="simplebar-placeholder"
            style="width: auto; height: 756px"
          ></div>
        </div>
        <div
          class="simplebar-track simplebar-horizontal"
          style="visibility: hidden"
        >
          <div
            class="simplebar-scrollbar"
            style="width: 0px; display: none"
          ></div>
        </div>
        <div
          class="simplebar-track simplebar-vertical"
          style="visibility: visible"
        >
          <div
            class="simplebar-scrollbar"
            style="
              height: 463px;
              transform: translate3d(0px, 0px, 0px);
              display: block;
            "
          ></div>
        </div>
      </div>
    </div>

    <div class="rightbar-overlay"></div>
    <!-- /End-bar -->
    <!-- Modal Code -->

    
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





  <!-- Email modal content -->
  <div id="email-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <a href="index.html" class="text-success">
                        <span><img src="assets/images/logo-dark.png" alt="" height="18"></span>
                    </a>
                </div>

                <form class="ps-3 pe-3" action="EmailSendingServlet" method="post">

                    <div class="mb-3">
                        <label for="username" class="form-label">New Email ID</label>
                        <input class="form-control" name="recipient" type="email" id="username" required="" placeholder="Enter New Email">
                    </div>

                    
                    <input type="hidden" name="page" value="dealer_dashboard.jsp">
                    

                    <div class="mb-3 text-center">
                        <button class="btn btn-primary" type="submit"> Get OTP</button>
                    </div>

                </form>

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


  <!-- Password modal content -->
  <div id="password-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-body">
                <div class="text-center mt-2 mb-4">
                    <a href="index.html" class="text-success">
                        <span><img src="assets/images/logo-dark.png" alt="" height="18"></span>
                    </a>
                </div>

                <form class="ps-3 pe-3" action="EditPasswordServlet" method="post">

                    <div class="mb-3">
                        <label for="username" class="form-label">Current Password</label>
                        <input class="form-control" name="current" type="password" id="username" required="" placeholder="Current Password">
                    </div>

                    <div class="mb-3">
                        <label for="emailaddress" class="form-label">New Password</label>
                        <input class="form-control" name="newpass" type="password" id="emailaddress" required="" placeholder="Enter Password">
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Confirm Password</label>
                        <input class="form-control" name="conpass" type="password" required="" id="password" placeholder="Confirm Password">
                    </div>
                    <input type="hidden" name="page" value="dealer_dashboard.jsp">
                    <div class="mb-3 text-center">
                        <button class="btn btn-primary" type="submit">Change Password</button>
                    </div>

                </form>

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script>
    
    function myProfile() {
      document.getElementById("but").style.display="inline"; 
      document.getElementById("canc").style.display="inline"; 
      document.getElementById("demo").style.display="inline"; 
      document.getElementById("lab").style.display="none"; 
    }
    function myProfileUpload() {
    document.getElementById("but").style.display="none";
    document.getElementById("canc").style.display="none";
     document.getElementById("demo").style.display="none"; 
      document.getElementById("lab").style.display="block";
    }

</script>
    <!-- bundle -->
    <script src="assets/js/vendor.min.js"></script>
    <script src="assets/js/app.min.js"></script>

    <!-- third party js -->
    <script src="assets/js/vendor/fullcalendar.min.js"></script>
    <!-- third party js ends -->

    <!-- demo app -->
    <script src="assets/js/pages/demo.calendar.js"></script>
    <!-- end demo js-->

    <!-- Clock JS -->
    <script src="Additional Assets/clock.js"></script>

    <!-- Mirrored from coderthemes.com/hyper_2/saas/apps-calendar.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Feb 2022 12:46:38 GMT -->
  </body>
</html>

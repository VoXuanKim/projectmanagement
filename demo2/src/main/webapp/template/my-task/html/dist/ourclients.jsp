<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>:: My-Task:: Ourclients</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- project css file  -->
    <link rel="stylesheet" href="assets/css/my-task.style.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/my-task/html/dist/assets/plugin/nestable/jquery-nestable.css"/>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/my-task/html/dist/assets/css/my-task.style.min.css">
</head>
<body  data-mytask="theme-indigo">

<div id="mytask-layout">

    <!-- sidebar -->
    <div class="sidebar px-4 py-4 py-md-5 me-0">
        <div class="d-flex flex-column h-100">
            <a href="Main-Page" class="mb-0 brand-icon">
                <span class="logo-icon">
                    <svg  width="35" height="35" fill="currentColor" class="bi bi-clipboard-check" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
                        <path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
                        <path d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z"/>
                    </svg>
                </span>
                <span class="logo-text">My-Task</span>
            </a>
            <!-- Menu: main ul -->
            <ul class="menu-list flex-grow-1 mt-3">
                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#dashboard-Components" href="#">
                        <i class="icofont-home fs-5"></i> <span>Main</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    <!-- Menu: Sub menu ul -->
                    <ul class="sub-menu collapse" id="dashboard-Components">
                        <li><a class="ms-link" href="Main-Page"> <span>Main Page</span></a></li>

                    </ul>
                </li>
                <li  class="collapsed">
                    <a class="m-link"  data-bs-toggle="collapse" data-bs-target="#project-Components" href="#">
                        <i class="icofont-briefcase"></i><span>Task</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    <!-- Menu: Sub menu ul -->
                    <ul class="sub-menu collapse" id="project-Components">
                        <li><a class="ms-link" href="Task-Project-page"><span>Tasks</span></a></li>
                    </ul>
                </li>


                <li class="collapsed">
                    <a class="m-link active" data-bs-toggle="collapse" data-bs-target="#client-Components" href="#"><i
                            class="icofont-user-male"></i> <span>Our Clients</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    <!-- Menu: Sub menu ul -->
                    <ul class="sub-menu collapse show" id="client-Components">
                        <li><a class="ms-link active" href="Clients-Project"> <span>Clients</span></a></li>
                        <li><a class="ms-link" href=""> <span>Client Profile</span></a></li>
                    </ul>
                </li>

                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#emp-Components" href="#"><i
                            class="icofont-users-alt-5"></i> <span>Employees</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    <!-- Menu: Sub menu ul -->
                    <ul class="sub-menu collapse" id="emp-Components">
                        <li><a class="ms-link" href="Members-Project"> <span>Members</span></a></li>
                        <li><a class="ms-link" href=""> <span>Members Profile</span></a></li>

                    </ul>
                </li>




            </ul>


            <!-- Menu: menu collepce btn -->
            <button type="button" class="btn btn-link sidebar-mini-btn text-light">
                <span class="ms-2"><i class="icofont-bubble-right"></i></span>
            </button>
        </div>
    </div>

    <!-- main body area -->
    <div class="main px-lg-4 px-md-4">

        <!-- Body: Header -->
        <div class="header">
            <nav class="navbar py-4">
                <div class="container-xxl">

                    <!-- header rightbar icon -->
                    <div class="h-right d-flex align-items-center mr-5 mr-lg-0 order-1">
                        <div class="d-flex">
                            <div class="avatar-list avatar-list-stacked px-3">
                                <img class="avatar rounded-circle" src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/images/xs/avatar2.jpg" alt="">
                                <img class="avatar rounded-circle" src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/images/xs/avatar1.jpg" alt="">
                                <img class="avatar rounded-circle" src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/images/xs/avatar3.jpg" alt="">
                                <img class="avatar rounded-circle" src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/images/xs/avatar4.jpg" alt="">
                                <img class="avatar rounded-circle" src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/images/xs/avatar7.jpg" alt="">
                                <img class="avatar rounded-circle" src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/images/xs/avatar8.jpg" alt="">
                                <span class="avatar rounded-circle text-center pointer" data-bs-toggle="modal" data-bs-target="#addUser"><i class="icofont-ui-add"></i></span>
                            </div>
                        </div>
                        <div class="dropdown notifications">

                            <div id="NotificationsDiv" class="dropdown-menu rounded-lg shadow border-0 dropdown-animation dropdown-menu-sm-end p-0 m-0">
                                <div class="card border-0 w380">
                                    <div class="card-header border-0 p-3">
                                        <h5 class="mb-0 font-weight-light d-flex justify-content-between">
                                            <span>Notifications</span>
                                            <span class="badge text-white">11</span>
                                        </h5>
                                    </div>
                                    <div class="tab-content card-body">
                                        <div class="tab-pane fade show active">
                                            <ul class="list-unstyled list mb-0">
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/images/xs/avatar1.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Xuân Kim</span> <small>2MIN</small></p>
                                                            <span class="">Added  2021-02-19 my-Task ui/ux Design <span class="badge bg-success">Review</span></span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <div class="avatar rounded-circle no-thumbnail">DF</div>
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Diane Fisher</span> <small>13MIN</small></p>
                                                            <span class="">Task added Get Started with Fast Cad project</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="assets/images/xs/avatar3.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Andrea Gill</span> <small>1HR</small></p>
                                                            <span class="">Quality Assurance Task Completed</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="assets/images/xs/avatar5.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Diane Fisher</span> <small>13MIN</small></p>
                                                            <span class="">Add New Project for App Developemnt</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="assets/images/xs/avatar6.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Andrea Gill</span> <small>1HR</small></p>
                                                            <span class="">Add Timesheet For Rhinestone project</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="assets/images/xs/avatar7.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Zoe Wright</span> <small class="">1DAY</small></p>
                                                            <span class="">Add Calander Event</span>
                                                        </div>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <a class="card-footer text-center border-top-0" href="#"> View all notifications</a>
                                </div>
                            </div>
                        </div>
                        <div class="dropdown user-profile ml-2 ml-sm-3 d-flex align-items-center">
                            <div class="u-info me-2">
                                <p class="mb-0 text-end line-height-sm "><span class="font-weight-bold">${userName}</span></p>
                            </div>
                            <a class="nav-link dropdown-toggle pulse p-0" href="#" role="button" data-bs-toggle="dropdown" data-bs-display="static">
                                <img class="avatar lg rounded-circle img-thumbnail" src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/images/profile_av.png" alt="profile">
                            </a>
                            <div class="dropdown-menu rounded-lg shadow border-0 dropdown-animation dropdown-menu-end p-0 m-0">
                                <div class="card border-0 w280">
                                    <div class="card-body pb-0">
                                        <div class="d-flex py-1">
                                            <img class="avatar rounded-circle" src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/images/profile_av.png" alt="profile">
                                            <div class="flex-fill ms-3">
                                                <p class="mb-0"><span class="font-weight-bold">${userName}</span></p>
                                                <small class="">${userEmail}</small>
                                            </div>
                                        </div>

                                        <div><hr class="dropdown-divider border-dark"></div>
                                    </div>
                                    <div class="list-group m-2 ">
                                        <a href="Login-User-Page" class="list-group-item list-group-item-action border-0 "><i class="icofont-logout fs-6 me-3"></i>Signout</a>
                                        <div><hr class="dropdown-divider border-dark"></div>
                                        <!-- <a href="ui-elements/auth-signup.html" class="list-group-item list-group-item-action border-0 "><i class="icofont-contact-add fs-5 me-3"></i>Add personal account</a> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="px-md-1">
                            <a href="#offcanvas_setting" data-bs-toggle="offcanvas" aria-expanded="false" title="template setting">
                                <svg class="svg-stroke" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                    <path d="M10.325 4.317c.426 -1.756 2.924 -1.756 3.35 0a1.724 1.724 0 0 0 2.573 1.066c1.543 -.94 3.31 .826 2.37 2.37a1.724 1.724 0 0 0 1.065 2.572c1.756 .426 1.756 2.924 0 3.35a1.724 1.724 0 0 0 -1.066 2.573c.94 1.543 -.826 3.31 -2.37 2.37a1.724 1.724 0 0 0 -2.572 1.065c-.426 1.756 -2.924 1.756 -3.35 0a1.724 1.724 0 0 0 -2.573 -1.066c-1.543 .94 -3.31 -.826 -2.37 -2.37a1.724 1.724 0 0 0 -1.065 -2.572c-1.756 -.426 -1.756 -2.924 0 -3.35a1.724 1.724 0 0 0 1.066 -2.573c-.94 -1.543 .826 -3.31 2.37 -2.37c1 .608 2.296 .07 2.572 -1.065z"></path>
                                    <path d="M9 12a3 3 0 1 0 6 0a3 3 0 0 0 -6 0"></path>
                                </svg>
                            </a>
                        </div>
                    </div>

                    <!-- menu toggler -->
                    <button class="navbar-toggler p-0 border-0 menu-toggle order-3" type="button" data-bs-toggle="collapse" data-bs-target="#mainHeader">
                        <span class="fa fa-bars"></span>
                    </button>

                    <!-- main menu Search-->
                    <div class="order-0 col-lg-4 col-md-4 col-sm-12 col-12 mb-3 mb-md-0 ">
                        <div class="input-group flex-nowrap input-group-lg">
                            <button type="button" class="input-group-text" id="addon-wrapping"><i class="fa fa-search"></i></button>
                            <input type="search" class="form-control" placeholder="Search" aria-label="search" aria-describedby="addon-wrapping">
                            <button type="button" class="input-group-text add-member-top" id="addon-wrappingone" data-bs-toggle="modal" data-bs-target="#addUser"><i class="fa fa-plus"></i></button>
                        </div>
                    </div>

                </div>
            </nav>
        </div>

        <!-- Body: Body -->
        <div class="body d-flex py-lg-3 py-md-2">
            <div class="container-xxl">
                <div class="row clearfix">
                    <div class="col-md-12">
                        <div class="card border-0 mb-4 no-bg">
                            <div class="card-header py-3 px-0 d-flex align-items-center  justify-content-between border-bottom">
                                <h3 class=" fw-bold flex-fill mb-0">Clients</h3>
                                <div class="col-auto d-flex">

                                    <button type="button" class="btn btn-dark ms-1 " data-bs-toggle="modal" data-bs-target="#createproject"><i class="icofont-plus-circle me-2 fs-6"></i>Add Client</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- Row End -->
                <div class="row g-3 row-cols-1 row-cols-sm-1 row-cols-md-1 row-cols-lg-2 row-cols-xl-2 row-cols-xxl-2 row-deck py-1 pb-4">



                    <c:forEach var="client" items="${clients}">
                    <div class="col">
                        <div class="card teacher-card">
                            <div class="card-body  d-flex">
                                <div class="profile-av pe-xl-4 pe-md-2 pe-sm-4 pe-4 text-center w220">
                                    <img src="${client.profileImageClient}"  alt="" class="avatar xl rounded-circle img-thumbnail shadow-sm">
                                    <div class="about-info d-flex align-items-center mt-1 justify-content-center flex-column">
                                        <h6 class="mb-0 fw-bold d-block fs-6 mt-2">CEO</h6>
<%--                                        <div class="btn-group mt-2" role="group" aria-label="Basic outlined example">--%>
<%--                                            <button type="button" class="btn btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#deleteproject"><i class="icofont-ui-delete text-danger"></i></button>--%>
<%--                                        </div>--%>

                                            <button type="button" class="btn btn-outline-secondary" onclick="deleteClient(${client.clientId})">
                                            <i class="icofont-ui-delete text-danger"></i>
                                        </button>


                                    </div>
                                </div>
                                <div class="teacher-info border-start ps-xl-4 ps-md-3 ps-sm-4 ps-4 w-100">
                                    <h6  class="mb-0 mt-2  fw-bold d-block fs-6">${client.name}</h6>
                                    <span class="py-1 fw-bold small-11 mb-0 mt-1 text-muted">${client.companyName}</span>
                                    <div class="video-setting-icon mt-3 pt-3 border-top">
                                        <p>${client.description}</p>
                                    </div>
                                    <div class="d-flex flex-wrap align-items-center ct-btn-set">
<%--                                        <a href="/Profile-Client-Page" class="btn btn-dark btn-sm mt-1"><i class="icofont-invisible me-2 fs-6"></i>Profile</a>--%>
                                        <a href="Profile-Client-Page?clientId=${client.clientId}"
                                           class="btn btn-dark btn-sm mt-1"
                                           onclick="updateAddressBar('${client.clientId}')">
                                            <i class="icofont-invisible me-2 fs-6"></i>Profile
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>

                    <script>
                        function submitForm() {
                            // Retrieve projectId from local storage
                            var projectId = localStorage.getItem('selectedProjectId');

                            // Set projectId in the hidden input field
                            document.getElementById('projectIdInput').value = projectId;

                            // Submit the form
                            document.getElementById('inviteForm').submit();
                        }
                    </script>
                </div>
            </div>
        </div>


        <!-- Modal Members-->
        <div class="modal fade" id="addUser" tabindex="-1" aria-labelledby="addUserLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title  fw-bold" id="addUserLabel">Employee Invitation</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="inviteby_email">
                            <div class="input-group mb-3">
                                <input type="email" class="form-control" placeholder="Email address" id="exampleInputEmail1" aria-describedby="exampleInputEmail1">
                                <button class="btn btn-dark" type="button" id="button-addon2">Sent</button>
                            </div>
                        </div>
                        <div class="members_list">
                            <h6 class="fw-bold ">Employee </h6>
                            <ul class="list-unstyled list-group list-group-custom list-group-flush mb-0">
                                <li class="list-group-item py-3 text-center text-md-start">
                                    <div class="d-flex align-items-center flex-column flex-sm-column flex-md-row">
                                        <div class="no-thumbnail mb-2 mb-md-0">
                                            <img class="avatar lg rounded-circle" src="assets/images/xs/avatar2.jpg" alt="">
                                        </div>
                                        <div class="flex-fill ms-3 text-truncate">
                                            <h6 class="mb-0  fw-bold">Rachel Carr(you)</h6>
                                            <span class="text-muted">rachel.carr@gmail.com</span>
                                        </div>
                                        <div class="members-action">
                                            <span class="members-role ">Admin</span>
                                            <div class="btn-group">
                                                <button type="button" class="btn bg-transparent dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <i class="icofont-ui-settings  fs-6"></i>
                                                </button>
                                                <ul class="dropdown-menu dropdown-menu-end">
                                                    <li><a class="dropdown-item" href="#"><i class="icofont-ui-password fs-6 me-2"></i>ResetPassword</a></li>
                                                    <li><a class="dropdown-item" href="#"><i class="icofont-chart-line fs-6 me-2"></i>ActivityReport</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item py-3 text-center text-md-start">
                                    <div class="d-flex align-items-center flex-column flex-sm-column flex-md-row">
                                        <div class="no-thumbnail mb-2 mb-md-0">
                                            <img class="avatar lg rounded-circle" src="assets/images/xs/avatar3.jpg" alt="">
                                        </div>
                                        <div class="flex-fill ms-3 text-truncate">
                                            <h6 class="mb-0  fw-bold">Lucas Baker<a href="#" class="link-secondary ms-2">(Resend invitation)</a></h6>
                                            <span class="text-muted">lucas.baker@gmail.com</span>
                                        </div>
                                        <div class="members-action">
                                            <div class="btn-group">
                                                <button type="button" class="btn bg-transparent dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Members
                                                </button>
                                                <ul class="dropdown-menu dropdown-menu-end">
                                                    <li>
                                                        <a class="dropdown-item" href="#">
                                                            <i class="icofont-check-circled"></i>
                                                            Member
                                                            <span>Can view, edit, delete, comment on and save files</span>
                                                        </a>

                                                    </li>
                                                    <li>
                                                        <a class="dropdown-item" href="#">
                                                            <i class="fs-6 p-2 me-1"></i>
                                                            Admin
                                                            <span>Member, but can invite and manage team members</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="btn-group">
                                                <button type="button" class="btn bg-transparent dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <i class="icofont-ui-settings  fs-6"></i>
                                                </button>
                                                <ul class="dropdown-menu dropdown-menu-end">
                                                    <li><a class="dropdown-item" href="#"><i class="icofont-delete-alt fs-6 me-2"></i>Delete Member</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item py-3 text-center text-md-start">
                                    <div class="d-flex align-items-center flex-column flex-sm-column flex-md-row">
                                        <div class="no-thumbnail mb-2 mb-md-0">
                                            <img class="avatar lg rounded-circle" src="assets/images/xs/avatar8.jpg" alt="">
                                        </div>
                                        <div class="flex-fill ms-3 text-truncate">
                                            <h6 class="mb-0  fw-bold">Una Coleman</h6>
                                            <span class="text-muted">una.coleman@gmail.com</span>
                                        </div>
                                        <div class="members-action">
                                            <div class="btn-group">
                                                <button type="button" class="btn bg-transparent dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                    Members
                                                </button>
                                                <ul class="dropdown-menu dropdown-menu-end">
                                                    <li>
                                                        <a class="dropdown-item" href="#">
                                                            <i class="icofont-check-circled"></i>
                                                            Member
                                                            <span>Can view, edit, delete, comment on and save files</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a class="dropdown-item" href="#">
                                                            <i class="fs-6 p-2 me-1"></i>
                                                            Admin
                                                            <span>Member, but can invite and manage team members</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="btn-group">
                                                <div class="btn-group">
                                                    <button type="button" class="btn bg-transparent dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                                        <i class="icofont-ui-settings  fs-6"></i>
                                                    </button>
                                                    <ul class="dropdown-menu dropdown-menu-end">
                                                        <li><a class="dropdown-item" href="#"><i class="icofont-ui-password fs-6 me-2"></i>ResetPassword</a></li>
                                                        <li><a class="dropdown-item" href="#"><i class="icofont-chart-line fs-6 me-2"></i>ActivityReport</a></li>
                                                        <li><a class="dropdown-item" href="#"><i class="icofont-delete-alt fs-6 me-2"></i>Suspend member</a></li>
                                                        <li><a class="dropdown-item" href="#"><i class="icofont-not-allowed fs-6 me-2"></i>Delete Member</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Create Client-->
        <div class="modal fade" id="createproject" tabindex="-1"  aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title  fw-bold" id="createprojectlLabel"> Add Client</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="" method="POST">
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="exampleFormControlInput877" class="form-label">Client Name</label>
                            <input type="text" class="form-control" name="txtName" id="exampleFormControlInput877" placeholder="Explain what the Project Name">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput977" class="form-label">Company Name</label>
                            <input type="text" class="form-control" name="txtCompanyName" id="exampleFormControlInput977" placeholder="Explain what the Project Name">
                        </div>
                        <div class="mb-3">
                            <label for="formFileMultipleoneone" class="form-label">Profile Image</label>
                            <input class="form-control" type="text" name="txtProfileImageClient" id="formFileMultipleoneone" >
                        </div>
                        <div class="deadline-form">

                                <div class="row g-3 mb-3">
                                    <div class="col">
                                        <label for="exampleFormControlInput477" class="form-label">Email ID</label>
                                        <input type="email" class="form-control" name="txtEmail" id="exampleFormControlInput477" placeholder="User Name">
                                    </div>
                                    <div class="col">
                                        <label for="exampleFormControlInput777" class="form-label">Phone</label>
                                        <input type="text" class="form-control" name="txtPhone" id="exampleFormControlInput777" placeholder="User Name">
                                    </div>
                                </div>
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea78" class="form-label">Description (optional)</label>
                            <input type="hidden" name="projectId" id="projectIdInput">
                            <textarea class="form-control" id="exampleFormControlTextarea78" name="txtDescription" rows="3" placeholder="Add any extra details about the request"></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Done</button>
                        <button type="submit" class="btn btn-primary">Create</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>

        <script>
            function submitForm() {
                // Retrieve projectId from local storage
                var projectId = localStorage.getItem('selectedProjectId');

                // Set projectId in the hidden input field
                document.getElementById('projectIdInput').value = projectId;

                // Submit the form
                document.getElementById('inviteForm').submit();
            }
        </script>

    </div>

    <!-- start: template setting, and more. -->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvas_setting" aria-labelledby="offcanvas_setting">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title">Template Setting</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body d-flex flex-column">


            <div class="mb-4 flex-grow-1">
                <h6>Set Theme Light/Dark</h6>
                <!-- Theme: Switch Theme -->
                <ul class="list-unstyled mb-0">
                    <li>
                        <div class="form-check form-switch theme-switch">
                            <input class="form-check-input fs-6" type="checkbox" role="switch" id="theme-switch">
                            <label class="form-check-label mx-2" for="theme-switch">Enable Dark Mode!</label>
                        </div>
                    </li>
                    <li>
                        <div class="form-check form-switch monochrome-toggle">
                            <input class="form-check-input fs-6" type="checkbox" role="switch" id="monochrome">
                            <label class="form-check-label mx-2" for="monochrome">Monochrome Mode</label>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script>
    // Lấy thông tin từ local storage khi trang được tải
    var storedProjectId = localStorage.getItem('selectedProjectId');
    var storedRole = localStorage.getItem('selectedRole');

    // Sử dụng thông tin nếu có
    if (storedProjectId && storedRole) {
        // console.log('Stored Project ID:', storedProjectId);
        // console.log('Stored Role:', storedRole);

        // Cập nhật URL của trang với thông tin từ local storage
        var currentUrl = window.location.href;
        window.history.replaceState({}, document.title, currentUrl);
    }

    // Thêm sự kiện "click" cho các liên kết
    var links = document.querySelectorAll('.ms-link');

    links.forEach(function(link) {
        link.addEventListener('click', function(event) {
            // Ngăn chặn hành động mặc định của liên kết để tránh chuyển trang ngay lập tức
            event.preventDefault();

            // Lấy href từ liên kết và thay thế nó với thông tin từ local storage
            var href = link.getAttribute('href');
            var updatedHref = href + '?projectId=' + storedProjectId + '&role=' + storedRole;

            // Chuyển trang
            window.location.href = updatedHref;
        });
    });
</script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    $("#clientList").on("click", ".deleteButton", function() {
        var clientId = $(this).data("clientid");
        deleteClient(clientId);
    });

    function deleteClient(clientId) {
        var confirmDelete = confirm("Are you sure you want to delete this client?");

        if (confirmDelete) {
            $.ajax({
                url: 'DeleteClientServlet',
                type: 'POST',
                data: { deleteClientId: clientId },
                success: function (data) {
                    if (data.success) {
                        // Remove the deleted client's HTML element from the page
                        $("#client_" + clientId).remove();
                        // Reload the page after successful deletion
                        location.reload();
                    } else {
                        alert("Failed to delete client. Please try again.");
                    }
                },
                error: function (xhr, status, error) {
                    console.error("Error:", error);
                    alert("An error occurred. Please try again later.");
                }
            });
        }
    }
</script>
<!-- Jquery Core Js -->



<script src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/bundles/libscripts.bundle.js"></script>

<!-- Plugin Js-->
<script src="<%= request.getContextPath() %>/template/my-task/html/js/template.js"></script>
</body>

</html>
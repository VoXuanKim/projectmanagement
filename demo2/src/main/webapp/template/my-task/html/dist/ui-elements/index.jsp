<%@ page import="com.example.demo2.Model.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Map" %>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">


<!-- Mirrored from pixelwibes.com/template/my-task/html/dist/ui-elements/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 05 Dec 2023 15:52:25 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Choose</title>
    <link rel="icon" href="<%= request.getContextPath() %>../favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- project css file  -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/my-task/html/dist/assets/css/my-task.style.min.css">
</head>

<body  data-mytask="theme-indigo">

<div id="mytask-layout">

    <!-- sidebar -->
    <div class="sidebar px-4 py-4 py-md-5 me-0">
        <div class="d-flex flex-column h-100">
            <a href="" class="mb-0 brand-icon">
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
                <li><a class="m-link" href=""><i class="icofont-ui-home"></i><span>Home</span></a>
                </li>
                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-Authentication" href="#"><i
                            class="icofont-ui-lock"></i> <span>Authentication</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    <!-- Menu: Sub menu ul -->
                    <ul class="sub-menu collapse" id="menu-Authentication">
                        <li><a class="ms-link" href="Login-User-Page"><span>Sign in</span></a></li>
                        <li><a class="ms-link" href="Register-User-Page"><span>Sign up</span></a></li>
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

                        <div class="dropdown notifications">
                            <a class="nav-link dropdown-toggle pulse" href="#" role="button" data-bs-toggle="dropdown">
                                <i class="icofont-alarm fs-5"></i>
                                <span class="pulse-ring"></span>
                            </a>
                            <div id="NotificationsDiv" class="dropdown-menu rounded-lg shadow border-0 dropdown-animation dropdown-menu-sm-end p-0 m-0">
                                <div class="card border-0 w380">

                                    <div class="tab-content card-body">
                                        <div class="tab-pane fade show active">
                                            <ul class="list-unstyled list mb-0">
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="../assets/images/xs/avatar1.jpg" alt="">
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
                                                        <img class="avatar rounded-circle" src="../assets/images/xs/avatar3.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Andrea Gill</span> <small>1HR</small></p>
                                                            <span class="">Quality Assurance Task Completed</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="../assets/images/xs/avatar5.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Diane Fisher</span> <small>13MIN</small></p>
                                                            <span class="">Add New Project for App Developemnt</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2 mb-1 border-bottom">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="../assets/images/xs/avatar6.jpg" alt="">
                                                        <div class="flex-fill ms-2">
                                                            <p class="d-flex justify-content-between mb-0 "><span class="font-weight-bold">Andrea Gill</span> <small>1HR</small></p>
                                                            <span class="">Add Timesheet For Rhinestone project</span>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="py-2">
                                                    <a href="javascript:void(0);" class="d-flex">
                                                        <img class="avatar rounded-circle" src="../assets/images/xs/avatar7.jpg" alt="">
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- menu toggler -->
                    <button class="navbar-toggler p-0 border-0 menu-toggle order-3 ms-1" type="button" data-bs-toggle="collapse" data-bs-target="#mainHeader">
                        <span class="fa fa-bars"></span>
                    </button>

                    <!-- main menu Search-->
                    <div class="order-0 col-lg-4 col-md-4 col-sm-12 col-12 mb-3 mb-md-0 ">
                        <div class="input-group flex-nowrap input-group-lg">
                        </div>
                    </div>

                </div>
            </nav>
        </div>

        <!-- Body: Body -->
        <div class="body d-flex py-lg-3 py-md-2">
            <div class="container-xxl">
                <div class="col-12">
                    <div class="card mb-3">
                        <div class="card-body text-center p-5">
                            <img src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/images/no-data.svg" class="img-fluid mx-size" alt="No Data">
                            <div class="mt-4 mb-2">
                            </div>
<%--                            <button type="button" class="btn btn-white border lift mt-1">Get Started</button>--%>
<%--                            <button type="button" class="btn btn-primary border lift mt-1">Back to Home</button>--%>

                            <form action="" method="POST" onsubmit="handleProjectAdded()" class="row g-1 p-3 p-md-4">
                            <div class="container">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    Create Project
                                </button>

                                <!-- Modal -->
                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Enter Project Details</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <form>
                                                    <div class="mb-3">
                                                        <label for="projectName" class="form-label">Project Name:</label>
                                                        <input type="text" name="txtprojectname" class="form-control" id="projectName" maxlength="12">
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="projectID" class="form-label">Project ID:</label>
                                                        <input type="text" name="txtprojectid" class="form-control" id="projectID" readonly>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="hidden" name="txtrole" value="admin">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-primary" onclick="generateRandomID()">Generate Random ID</button>
                                                <input type="submit" value="Create Project" class="btn btn-lg btn-block btn-light lift text-uppercas">


                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <style>
                                    .yellow-button {
                                        background-color: #FFD700; /* Màu vàng */
                                        color: #000; /* Màu chữ đen */
                                        border: none;
                                        border-radius: 10px; /* Bo góc tròn */
                                        padding: 10px 20px; /* Kích thước nút */
                                        margin: 5px; /* Khoảng cách giữa các ô */
                                        cursor: pointer;
                                        width: 100px; /* Chiều rộng cố định cho các nút */
                                        height: 70px;
                                    }

                                    /* Hover effect */
                                    .yellow-button:hover {
                                        background-color: #FFC400; /* Màu vàng nhạt khi hover */
                                    }

                                    #projectsUl {
                                        display: flex;
                                        flex-wrap: wrap;
                                        list-style: none;
                                        padding: 0;
                                    }

                                    #projectsUl li {
                                        flex: 0 0 5%; /* 25% width for each item (adjust as needed) */
                                        box-sizing: border-box;
                                    }
                                </style>

<%--                                <div id="projectList" class="mt-4"></div>--%>


                            </div>

                            </form>

                            <div id="projectList" class="mt-4">
                                <h3 style="font-size: 14px; margin-right: 90%">Your Projects:</h3>
                                <ul id="projectsUl">
                                    <c:forEach var="project" items="${userProjects1}">
                                        <li>
                                            <button class="yellow-button" onclick="showProjectDetails('${project.projectId}','${project.role}')"
                                                    style="${project.projectId eq sessionScope.selectedProjectId ? 'background-color: yellow;' : ''}">
                                                    ${project.projectName}
                                            </button>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


<script>
    function generateRandomID() {
        var randomID = Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15);
        if (randomID) {
            document.getElementById("projectID").value = randomID;
        } else {
            alert("Error generating projectID");
        }
    }
</script>
<script>
    function handleProjectAdded() {
        // Your existing logic for handling the form submission

        // AJAX request to fetch updated project list
        var xhr = new XMLHttpRequest();
        xhr.open('GET', '/List-Project-Page', true);

        xhr.onload = function () {
            if (xhr.status == 200) {
                // Extract the updated project list HTML
                var updatedProjectList = new DOMParser().parseFromString(xhr.responseText, 'text/html')
                    .getElementById('projectsUl').innerHTML;

                // Update the content of the existing project list element
                document.getElementById('projectsUl').innerHTML = updatedProjectList;
            } else {
                console.error('Error fetching updated project list:', xhr.statusText);
            }
        };

        xhr.send();
    }
</script>

<script>
    function showProjectDetails(projectId, role, accountId) {
        // Lưu projectId, role và accountId vào local storage
        localStorage.setItem('selectedProjectId', projectId);
        localStorage.setItem('selectedRole', role);
        localStorage.setItem('selectedAccountId', accountId);

        // Chuyển đến trang Main Page
        window.location.href = '<c:url value="/Main-Page"/>';
    }
</script>


<!-- Jquer
y Core Js -->
<script src="../assets/bundles/libscripts.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="../../js/template.js"></script>

<!-- Jquery Core Js -->
<script src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/bundles/libscripts.bundle.js"></script>
<script src="<%= request.getContextPath() %>/template/my-task/html/js/template.js"></script>
<!-- Plugin Js-->

</body>

</html>
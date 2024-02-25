<!doctype html>
<html class="no-js" lang="en" dir="ltr">



<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>:: My-Task:: Signin</title>
    <link rel="icon" href="../favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- project css file  -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/my-task/html/dist/assets/css/my-task.style.min.css">
</head>

<body  data-mytask="theme-indigo">

<div id="mytask-layout">

    <!-- main body area -->
    <div class="main p-2 py-3 p-xl-5 ">

        <!-- Body: Body -->
        <div class="body d-flex p-0 p-xl-5">
            <div class="container-xxl">

                <div class="row g-0">
                    <div class="col-lg-6 d-none d-lg-flex justify-content-center align-items-center rounded-lg auth-h100">
                        <div style="max-width: 25rem;">

                            <div class="">
                                <img src="<%= request.getContextPath() %>/template/my-task/html/dist/ui-elements/download.png" alt="login-img" width="100%" height="100%">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 d-flex justify-content-center align-items-center border-0 rounded-lg auth-h100">
                        <div class="w-100 p-3 p-md-5 card border-0 bg-dark text-light" style="max-width: 32rem;">
                            <!-- Form -->
                            <form action="" method="POST" class="row g-1 p-3 p-md-4">
                                <div class="col-12 text-center mb-1 mb-lg-5">
                                    <h1>Sign in</h1>
                                    <span>Free access to our dashboard.</span>
                                </div>

                                <div class="col-12 text-center mt-2">
                                    <% String error = (String) request.getAttribute("error");
                                        if (error != null && !error.isEmpty()) { %>
                                    <p class="text-danger"><%= error %></p>
                                    <% } %>
                                </div>
                                <div class="col-12">
                                    <div class="mb-2">
                                        <label class="form-label">Email address</label>
                                        <input type="text" name="txtemail" class="form-control form-control-lg" placeholder="name@example.com">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="mb-2">
                                        <div class="form-label">
                                            <span class="d-flex justify-content-between align-items-center">
                                                Password
                                                <a class="text-secondary" href="">Forgot Password?</a>
                                            </span>
                                        </div>
                                        <input type="password" name="txtpassword" class="form-control form-control-lg"  placeholder="***************">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            Remember me
                                        </label>
                                    </div>
                                </div>
                                <div class="col-12 text-center mt-4">
                                    <input type="submit" value="SIGN IN"  class="btn btn-lg btn-block btn-light lift text-uppercas">
<%--                                    <a href="index.html" class="btn btn-lg btn-block btn-light lift text-uppercase" atl="signin">SIGN IN</a>--%>
                                </div>
                                <div class="col-12 text-center mt-4">
                                    <span class="text-muted">Don't have an account yet? <a href="Register-User-Page" class="text-secondary">Sign up here</a></span>
                                </div>
                            </form>
                            <!-- End Form -->
                        </div>
                    </div>
                </div> <!-- End Row -->
            </div>
        </div>
    </div>
</div>


<script src="../assets/bundles/libscripts.bundle.js"></script>

</body>
</html>
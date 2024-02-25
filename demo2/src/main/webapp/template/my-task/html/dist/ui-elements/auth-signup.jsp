<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>:: My-Task:: Signup</title>
    <link rel="icon" href="<%= request.getContextPath() %>../favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- project css file  -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/my-task/html/dist/assets/css/my-task.style.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/my-task/html/dist/assets/css/my-task.style.min.css">

</head>

<body  data-mytask="theme-indigo">

<div id="mytask-layout">

    <div class="main p-2 py-3 p-xl-5">

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

                            <form action="" method="POST" class="row g-1 p-3 p-md-4">
                                <div class="col-12 text-center mb-1 mb-lg-5">
                                    <h1>Create your account</h1>
                                    <span>Free access to our dashboard.</span>
                                </div>

                                <div class="col-12 text-center mt-2">
                                    <% String error = (String) request.getAttribute("error");
                                        if (error != null && !error.isEmpty()) { %>
                                    <p class="text-danger"><%= error %></p>
                                    <% } %>
                                </div>



                                <div class="col-6">
                                    <div class="mb-2">
                                        <label class="form-label">Full name</label>
                                        <input type="text" name="txtsurname" class="form-control form-control-lg" placeholder="John">
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="mb-2">
                                        <label class="form-label">&nbsp;</label>
                                        <input type="text" name="txtname" class="form-control form-control-lg" placeholder="Parker">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="mb-2">
                                        <label class="form-label">Email address</label>
                                        <input type="text" name="txtemail" class="form-control form-control-lg" placeholder="name@example.com">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="mb-2">
                                        <label class="form-label">Password</label>
                                        <input type="password" name="txtpassword" class="form-control form-control-lg" placeholder="8+ characters required">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="mb-2">
                                        <label class="form-label">Confirm password</label>
                                        <input type="password" name="txtconfirmpassword" class="form-control form-control-lg" placeholder="Confirm password">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            I accept the <a href="#" title="Terms and Conditions" class="text-secondary">Terms and Conditions</a>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-12 text-center mt-4">
                                    <input type="submit" value="SIGN UP" class="btn btn-lg btn-block btn-light lift text-uppercas">
<%--                                    <a href="auth-signin.html" class="btn btn-lg btn-block btn-light lift text-uppercase" alt="SIGNUP">SIGN UP</a>--%>
                                </div>
                                <div class="col-12 text-center mt-4">
                                    <span class="text-muted">Already have an account? <a href="Login-User-Page" title="Sign in" class="text-secondary">Sign in here</a></span>
                                </div>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<%--<script src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/bundles/libscripts.bundle.js"></script>--%>

</body>


</html>
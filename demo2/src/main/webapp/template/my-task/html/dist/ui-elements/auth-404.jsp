<!doctype html>
<html class="no-js" lang="en" dir="ltr">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>:: My-Task:: 404 Page</title>
    <link rel="icon" href="../favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <link rel="icon" href="<%= request.getContextPath() %>../favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- project css file  -->

    <link rel="stylesheet" href="<%= request.getContextPath() %>/template/my-task/html/dist/assets/css/my-task.style.min.css">
</head>

<body  data-mytask="theme-indigo">

<div id="mytask-layout">

    <!-- main body area -->
    <div class="main p-2 py-3 p-xl-5">

        <!-- Body: Body -->
        <div class="body d-flex p-0 ">
            <div class="container-xxl">




                <div class="d-flex justify-content-center align-items-center border-0 rounded-lg auth-h100" >
                    <div class="w-100 p-3 p-md-5 card border-0 bg-dark text-light" style="max-width: 32rem;">
                        <!-- Form -->
                        <form class="row g-1 p-3 p-md-4" >
                            <div class="col-12 text-center mb-1 mb-lg-5" >
                                <img src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/images/not_found.svg" class="w240 mb-4" alt="" />
                                <h5>OOP! PAGE NOT FOUND</h5>
                                <span class="text-light">Sorry, the page you're looking for doesn't exist. if you think something is broken, report a problem.</span>
                            </div>
                            <div class="col-12 text-center">
                                <a href="Main-Page" title="" class="btn btn-lg btn-block btn-light lift text-uppercase">Back to Home</a>
                            </div>
                        </form>
                    </div>
                </div>


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
        console.log('Stored Project ID:', storedProjectId);
        console.log('Stored Role:', storedRole);

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
<!-- Jquery Core Js -->
<script src="../assets/bundles/libscripts.bundle.js"></script>
<script src="<%= request.getContextPath() %>/template/my-task/html/dist/assets/bundles/libscripts.bundle.js"></script>
</body>

</html>
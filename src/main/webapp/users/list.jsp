<%--
  Created by IntelliJ IDEA.
  User: adam
  Date: 10.03.2023
  Time: 08:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>user-manager</title>

    <!-- Custom fonts for this template-->
    <link href="../theme/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../theme/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <div id="wrapper">

        <%@include file="/header.jsp"%>
            <!-- Begin Page Content -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                </nav>
                <!-- End of Topbar -->

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                        <a href="/users/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                            <i class="fas fa-duotone fa-user-plus text-white-50"></i> Dodaj użytkownika</a>
                    </div>

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
                        </div>
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <div class="row">
                                        <div class="col-1">
                                            <strong>id</strong>
                                        </div>
                                        <div class="col-4">
                                            <strong>Nazwa użytkownika</strong>
                                        </div>
                                        <div class="col-5">
                                            <strong>Email</strong>
                                        </div>
                                        <div class="col-2">
                                            <strong>Akcja</strong>
                                        </div>
                                    </div>
                                </li>
                                <c:forEach items="${users}" var="user">
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-1">
                                                ${user.id}
                                            </div>
                                            <div class="col-4">
                                                ${user.userName}
                                            </div>
                                            <div class="col-4">
                                                ${user.email}
                                            </div>
                                            <div class="col-3">
                                                <a id="delete" href="/users/delete?id=${user.id}" data-toggle="modal" data-target="#staticBackdrop">Usuń </a>
                                                <a href="/users/edit?id=${user.id}">Edytuj </a>
                                                <a href="/users/show?id=${user.id}">Pokaż</a>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>

                </div>
            <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <%@include file="/footer.jsp"%>
            <!-- End of Footer -->

        </div>
    <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Jesteś pewien?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Czy na pewno chcesz usunąć użytkownika?
                </div>
                <div id="modalFooter" class="modal-footer">

                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../theme/vendor/jquery/jquery.min.js"></script>
    <script src="../theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../theme/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../theme/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../theme/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../theme/js/demo/chart-area-demo.js"></script>
    <script src="../theme/js/demo/chart-pie-demo.js"></script>
    <script src="../theme/js/modal.js"></script>
</body>

</html>

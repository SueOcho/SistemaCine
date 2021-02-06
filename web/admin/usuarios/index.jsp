<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 25/01/2021
  Time: 13:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <!-- Bootstrap -->
    <link href="cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/admin/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<%=request.getContextPath()%>/resources/admin/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<%=request.getContextPath()%>/resources/admin/css/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="<%=request.getContextPath()%>/resources/admin/css/green.css" rel="stylesheet">
    <!-- Datatables -->

    <link href="<%=request.getContextPath()%>/resources/admin/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/admin/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/admin/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/admin/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/admin/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<%=request.getContextPath()%>/resources/admin/css/custom.min.css" rel="stylesheet">
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <%@ include file="./../includes/side.jsp" %>
        <%@ include file="./../includes/top.jsp" %>
        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>Usuarios registrados</h3>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 ">
                        <div class="x_panel">
                            <div class="x_title">
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="card-box table-responsive">
                                            <p class="text-muted font-13 m-b-30">
                                                DataTables has most features enabled by default, so all you need to do to use it with your own tables is to call the construction function: <code>$().DataTable();</code>
                                            </p>
                                            <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Nombre</th>
                                                        <th>Correo</th>
                                                        <th>Documento</th>
                                                        <th>Estado</th>
                                                        <th>Acciones</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <c:forEach var="usuario" items="#{sessionScope.usuarios}">
                                                    <tr>
                                                        <td>${usuario.idUsuario}</td>
                                                        <td>${usuario.apellido},${usuario.nombre}</td>
                                                        <td>${usuario.correo}</td>
                                                        <td>
                                                            <c:choose>
                                                                <:c:when test="${usuario.tipoDocumento} == 1">
                                                                    DNI:
                                                                </:c:when>
                                                                <c:otherwise>
                                                                    C.E:
                                                                </c:otherwise>
                                                            </c:choose>
                                                            ${usuario.numeroDocumento}
                                                        </td>
                                                        <td>
                                                            <c:choose>
                                                                <c:when test="${usuario.estado} == 1">
                                                                    Validado
                                                                </c:when>
                                                                <c:otherwise>
                                                                    No validado
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td>
                                                            <div class="admin-actions">
                                                                <button type="button" class="btn btn-success"><i class="fa fa-pencil"></i> Editar</button>
                                                                <button type="button" class="btn btn-danger"><i class="fa fa-times"></i> Eliminar</button>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->
        <%@ include file="./../includes/footer.jsp" %>
    </div>
</div>

<!-- jQuery -->
<script src="<%=request.getContextPath()%>/resources/admin/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="<%=request.getContextPath()%>/resources/admin/js/bootstrap.bundle.min.js"></script>
<!-- FastClick -->
<script src="<%=request.getContextPath()%>/resources/admin/js/fastclick.js"></script>
<!-- NProgress -->
<script src="<%=request.getContextPath()%>/resources/admin/js/nprogress.js"></script>
<!-- iCheck -->
<script src="<%=request.getContextPath()%>/resources/admin/js/icheck.min.js"></script>
<!-- Datatables -->
<script src="<%=request.getContextPath()%>/resources/admin/js/jquery.dataTables.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/dataTables.bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/dataTables.buttons.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/buttons.bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/buttons.flash.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/buttons.html5.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/buttons.print.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/dataTables.fixedHeader.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/dataTables.keyTable.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/dataTables.responsive.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/responsive.bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/dataTables.scroller.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/jszip.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/pdfmake.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/admin/js/vfs_fonts.js"></script>

<!-- Custom Theme Scripts -->
<script src="<%=request.getContextPath()%>/resources/admin/js/custom.min.js"></script>
</body>
</html>

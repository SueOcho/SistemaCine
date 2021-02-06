<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 25/01/2021
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/resources/admin/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<%=request.getContextPath()%>/resources/admin/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<%=request.getContextPath()%>/resources/admin/css/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="<%=request.getContextPath()%>/resources/admin/css/animate.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="<%=request.getContextPath()%>/resources/admin/css/custom.min.css" rel="stylesheet">
</head>
<body class="login">
    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <form action="/UsuarioController" method="post">
                    <input type="hidden" id="processing" name="processing" value="loginAdmin">
                    <h1>Login Form</h1>
                    <div>
                        <input type="text" class="form-control" id="correo" name="correo" placeholder="Email" required="" />
                    </div>
                    <div>
                        <input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="Contraseña" required="" />
                    </div>
                    <div>
                        <input type="submit" class="btn btn-primary btn-block" value="Log in">
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                    </div>
                </form>
            </section>
        </div>
    </div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 25/01/2021
  Time: 08:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="../includes/meta.jsp" %>
    <%@ include file="../includes/styles.jsp" %>
    <title>Acceso de usuarios | Solo Estrenos</title>
</head>
<body>
    <div class="bkg_video">
        <video playsinline autoplay loop poster="<%=request.getContextPath()%>/resources/images/blackwidow_banner-dest.webp">
            <source src="<%=request.getContextPath()%>/resources/images/bkg_video.webm">
        </video>
    </div>
    <div class="content">
        <%@ include file="../includes/header.jsp" %>

        <div class="form">
            <form action="/UsuarioController" method="post">
                <input type="hidden" id="processing" name="processing" value="login">
                <h2>Accede a tu cuenta</h2>
                <div class="form-group">
                    <label for="correo">Usuario</label>
                    <input type="text" class="form-control" id="correo" name="correo">
                </div>
                <div class="form-group">
                    <label for="contrasena">Contraseña:</label>
                    <input type="password" class="form-control" id="contrasena" name="contrasena">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-block">Iniciar Sesión</button>
                </div>
                <div class="form-group mt-4">
                    <p>Sí no estás registrado, puedes:</p>
                </div>
                <div class="form-group">
                    <a href="<%=request.getContextPath()%>/registro/index.jsp" class="btn btn-primary btn-block">Crear cuenta</a>
                </div>
            </form>
        </div>
    </div>
    <%@ include file="../includes/footer.jsp" %>
    <%@ include file="../includes/scripts.jsp" %>
</body>
</html>

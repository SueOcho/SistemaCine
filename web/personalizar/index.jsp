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
    <title>Personalizar Entradas | Solo Estrenos</title>
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
            <form action="">
                <h2>Personaliza tus entradas</h2>
                <label>Entrada 1:</label>
                <div class="form-group pt-4">
                    <label for="fullName1">Nombre Completo:</label>
                    <input type="text" class="form-control" id="fullName1">
                </div>
                <div class="form-group">
                    <label for="tipodoc1">Tipo de Documento de Identidad:</label>
                    <select class="form-control" name="tipodoc1" id="tipodoc1">
                        <option value="0">Seleccionar</option>
                        <option value="1">DNI</option>
                        <option value="2">C.E</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="nrodoc1">Documento de Identidad:</label>
                    <input type="text" class="form-control" id="nrodoc1">
                </div>

                <label>Entrada 2:</label>
                <div class="form-group pt-3">
                    <label for="fullName2">Nombre Completo:</label>
                    <input type="text" class="form-control" id="fullName2">
                </div>
                <div class="form-group">
                    <label for="tipodoc2">Tipo de Documento de Identidad:</label>
                    <select class="form-control" name="tipodoc2" id="tipodoc2">
                        <option value="0">Seleccionar</option>
                        <option value="1">DNI</option>
                        <option value="2">C.E</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="nrodoc2">Documento de Identidad:</label>
                    <input type="text" class="form-control" id="nrodoc2">
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary my-4">Comprar entrada</button>
                </div>
            </form>
        </div>
    </div>
    <%@ include file="../includes/footer.jsp" %>
    <%@ include file="../includes/scripts.jsp" %>
</body>
</html>

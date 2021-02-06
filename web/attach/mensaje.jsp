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
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="../resources/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../resources/css/StyleJosue.css">
    <title>Mensaje adjuntar | Solo Estrenos</title>
</head>
<body>
<div class="bkg_video">
    <video playsinline autoplay loop poster="../resources/images/blackwidow_banner-dest.webp">
        <source src="../resources/images/bkg_video.webm">
    </video>
</div>
<div class="content">
    <%@ include file="../includes/header.jsp" %>

    <div class="container">
        <div class="row justify-content-center align-items-center h-100">
            <div class="col-5">
                <h2 class="my-2 text-center">Gracias {Juan García} por confiar en nosotros, en breve te enviaremos la confirmación.</h2>
                <p class="text-center text-white mt-3">Código de compra: <span>7352376</span></p>
                <button class="btn btn-block btn-success my-4 "> Aceptar</button>

            </div>
        </div>
    </div>

</div>
</body>

<%@ include file="../includes/footer.jsp" %>
<script src="../resources/js/jquery-3.5.1.slim.min.js"></script>
<script src="../resources/js/popper.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/all.js"></script>
</body>
</html>

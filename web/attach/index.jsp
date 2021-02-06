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
    <title>Mensaje adjuntar | Solo Estrenos</title>
</head>
<body>
<div class="bkg_video">
    <video playsinline autoplay loop poster="<%=request.getContextPath()%>/resources/images/blackwidow_banner-dest.webp">
        <source src="<%=request.getContextPath()%>/resources/images/bkg_video.webm">
    </video>
</div>
<div class="content">
    <%@ include file="../includes/header.jsp" %>

    <div class="container">
        <div class="row justify-content-center align-items-center h-100">
            <div class="col-5">
                <h2 class="text-center my-2">Confirmar la compra de tus entradas.</h2>
                <p class="text-center text-white mt-3">Gracias por la compra. Acercate a un agente de banco cercano y cancela tu entrada.
                    Recuerda que tienes un plazo de 24h para poder hacerlo , en caso contrario perderas la
                    reserva.</p>
                <p class="text-center text-white mt-3">Código de compra: <span>7352376</span></p>
                <button class="btn btn-block btn-success my-4">Adjuntar comprobante</button>
            </div>
        </div>
    </div>

</div>
</body>

<%@ include file="../includes/footer.jsp" %>
<%@ include file="../includes/scripts.jsp" %>
</body>
</html>

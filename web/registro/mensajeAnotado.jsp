<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="../includes/meta.jsp" %>
    <%@ include file="../includes/styles.jsp" %>
    <title>¡Anotado! | Solo Estrenos</title>
</head>
<body>
<div class="bkg_video">
    <video playsinline autoplay loop poster="<%=request.getContextPath()%>/resources/images/blackwidow_banner-dest.webp">
        <source src="<%=request.getContextPath()%>/resources/images/bkg_video.webm">
    </video>
</div>
<div class="content">
    <%@ include file="../includes/header.jsp" %>

    <%--    <div class="form">--%>
    <%--        <form action="">--%>
    <div class="container">
        <div class="row justify-content-center align-items-center h-100">
            <div class="col-5">
                <h2 class="text-white text-center my-2">¡Anotado!</h2>
                <h4 class="text-white text-center mt-3">Gracias {nombre}, apenas abramos la venta al público te avisaremos para que puedas comprar tu entrada...junto a todos, todos los demás</h4>
                <h4 class="text-white text-center">Necesitarás validar tu correo electrónico para estar seguros de tu identidad.</h4>
                <p class="text-center mt-3">Sólo usaremos tu correo para este aviso. No lo guardaremos para el registro de ventas.</p>
            </div>
        </div>
    </div>
</div>


</body>

<%@ include file="../includes/footer.jsp" %>
<%@ include file="../includes/scripts.jsp" %>
</body>
</html>

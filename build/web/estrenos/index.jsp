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
    <title>Black Widow | Solo Estrenos</title>
</head>
<body>
<div class="content">
    <%@ include file="../includes/header.jsp" %>

    <div class="banner-destacado">
        <div class="img">
            <img src="<%=request.getContextPath()%>/resources/images/blackwidow_banner-dest.webp" alt="">
        </div>
        <div class="contenido">
            <div class="titulo">
                <!-- debe obtener el titulo de la vista anterior -->
                <h2>Black Widow</h2>
            </div>
            <div class="timing">
                <!-- debe obtener el tiempo de la vista anterior -->
                <span>2hr:22mins</span>
            </div>
            <div class="descripcion">
                <!-- debe obtener la descripción de la vista anterior -->
                <p>
                    Al nacer, la Viuda Negra, también conocida como Natasha Romanova, se entrega a la KGB para
                    convertirse en su agente definitivo. Cuando la URSS se separa, el gobierno intenta matarla
                    mientras la acción se traslada a la actual Nueva York.
                </p>
            </div>
            <div class="info">
                <p>
                    <strong>Protagonizan: </strong>Scarlett Johansson, FlorencePugh, David Harbour, Rachel Weisz
                </p>
                <p>
                    <strong>Género: </strong>Ciencia ficción
                </p>
            </div>
            <div class="cta">
                <a href="<%=request.getContextPath()%>/login/index.jsp"><i class="fas fa-play"></i>Comprar entradas</a>
            </div>
            <div class="playtrailer">
                <a href="#">
                    <i class="far fa-play-circle"></i>
                    Ver trailer
                </a>
            </div>
        </div>
    </div>
</div>
<%@ include file="../includes/footer.jsp" %>
<%@ include file="../includes/scripts.jsp" %>
</body>
</html>

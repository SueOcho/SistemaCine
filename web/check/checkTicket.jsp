<%--
  Created by IntelliJ IDEA.
  User: JosueFlores
  Date: 29/01/2021
  Time: 17:04
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
                    <h2 class="text-center my-2">Gracias por su compra.</h2>
                    <p class="text-center text-white mt-3">Recuerda, los códigos de las entradas puden ser reclamadas por cualquier persona, ten cuidado con ellas.</p>
                    <p class="text-center text-white mt-3">Código de ticket: <span>181818</span></p>
                    <p class="text-center text-white">Código de ticket: <span>171717</span></p>
                    <button class="btn btn-block btn-success my-4"> Aceptar</button>
                </div>
            </div>
        </div>
    </div>

</body>

<%@ include file="../includes/footer.jsp" %>
<%@ include file="../includes/scripts.jsp" %>
</body>
</html>

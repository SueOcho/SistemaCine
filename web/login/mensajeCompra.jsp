<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="../includes/meta.jsp" %>
    <%@ include file="../includes/styles.jsp" %>
    <title>¡Apurate!  | Solo Estrenos</title>
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
                    <h2 class=" text-white text-center my-4">¡Apurate!</h2>
                    <div class="home-movie">
                        <div class="img">
                            <img src="<%=request.getContextPath()%>/resources/images/blackwidow_banner.jpg" alt="">
                        </div>
                        <div class="contenido">
                            <div class="titulo">
                                <h4>Black Widow</h4>
                            </div>
                            <div class="timing">
                                <span>2hr:22mins</span>
                            </div>
                        </div>
                    </div>

                    <p class="text-white text-center">La venta de entradas está abierta al público.</p>
                    <p class="text-white text-center">Recuerda que puedes comprar dos entradas por persona*</p>

                    <button class="btn btn-block btn-success my-4 ">Comprar una entrada</button>
                </div>
            </div>
        </div>
    </div>
</body>

<%@ include file="../includes/footer.jsp" %>
<%@ include file="../includes/scripts.jsp" %>
</body>
</html>

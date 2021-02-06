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
    <title>Sala de Cine | Solo Estrenos</title>
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
                <h1>¡Perfecto!</h1>


                <div class="form-group">
                    <p>Hey <label>Nombre</label>! <br> Ten en cuenta que el estreno se llebara a cabo en: <label>Ubicación - Sala - Cine</label>
                    </p>
                </div>

            </form>
        </div>
    </div>
    <%@ include file="../includes/footer.jsp" %>
    <%@ include file="../includes/scripts.jsp" %>
</body>
</html>

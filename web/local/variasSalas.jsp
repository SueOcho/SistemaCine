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
                <h2 class="text-white text-center my-4">Elegir una sala de cine</h2>

                <div class="form-group">
                    <label for="cine">Cine:</label>
                    <select class="form-control" name="cine" id="cine">
                        <option value="0">Seleccionar</option>
                        <option value="1">Cineplanet</option>
                        <option value="2">Cinemark</option>
                        <option value="2">Cinepolis</option>
                        <option value="2">Cinestar</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="lugar">Lugar:</label>
                    <select class="form-control" name="lugar" id="lugar">
                        <option value="0">Seleccionar</option>
                        <option value="1">San Miguel</option>
                        <option value="2">San Isidro</option>
                        <option value="2">Miraflores</option>
                        <option value="2">La Molina</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="hora">Hora:</label>
                    <select class="form-control" name="hora" id="hora">
                        <option value="0">Seleccionar</option>
                        <option value="1">23:40</option>
                        <option value="2">23:55</option>
                    </select>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-primary my-4">Aceptar</button>
                </div>
            </form>
        </div>
    </div>
    <%@ include file="../includes/footer.jsp" %>
    <%@ include file="../includes/scripts.jsp" %>
</body>
</html>

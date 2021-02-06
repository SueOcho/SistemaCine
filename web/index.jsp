<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 24/01/2021
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="includes/meta.jsp" %>
    <%@ include file="includes/styles.jsp" %>
    <title>Solo Estrenos</title>
</head>
<body data-basePath="<%=request.getContextPath()%>">
    <div  class="preloader">
        <div class="preloader-content">
            <div class="logo"></div>
        </div>
    </div>
    <div class="content nobg">
        <%@ include file="includes/header.jsp" %>
        <!-- destacado, banner hero -->
        <div class="banner-destacado">
            <div class="img">
                <img src="<%=request.getContextPath()%>/resources/images/blackwidow_banner-dest.webp" alt="">
            </div>
            <div class="contenido">
                <div class="titulo">
                    <h2>Black Widow</h2>
                </div>
                <div class="timing">
                    <span>2hr:22mins</span>
                </div>
                <div class="descripcion">
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
                    <a href="<%=request.getContextPath()%>/notyet/index.jsp"><i class="fas fa-play"></i>Comprar entradas</a>
                </div>
                <div class="playtrailer">
                    <a href="#">
                        <i class="far fa-play-circle"></i>
                        Ver trailer
                    </a>
                </div>
            </div>
        </div>
        <div class="home-grid">
            <!-- ultimos estrenos -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col">
                        <h3>Últimos estrenos</h3>
                    </div>
                    <div class="col text-right">
                        <a href="#" class="ver-todos">
                            Ver todos
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
                        <div class="home-movie">
                            <div class="img">
                                <img src="<%=request.getContextPath()%>/resources/images/promisingyoungwoman_banner.jpg" alt="">
                            </div>
                            <div class="contenido">
                                <div class="titulo">
                                    <h4>Promising Young Woman</h4>
                                </div>
                                <div class="timing">
                                    <span>2hr:22mins</span>
                                </div>
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/estrenos/index.jsp"
                                        data-title=""
                                        data-timing=""
                                        data-sinopsis=""
                                        data-starring=""
                                        data-genre=""
                                        data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
                        <div class="home-movie">
                            <div class="img">
                                <img src="<%=request.getContextPath()%>/resources/images/monsterhunter_banner.jpg" alt="">
                            </div>
                            <div class="contenido">
                                <div class="titulo">
                                    <h4>Monster Hunter</h4>
                                </div>
                                <div class="timing">
                                    <span>2hr:22mins</span>
                                </div>
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/estrenos/index.jsp"
                                       data-title=""
                                       data-timing=""
                                       data-sinopsis=""
                                       data-starring=""
                                       data-genre=""
                                       data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
                        <div class="home-movie">
                            <div class="img">
                                <img src="<%=request.getContextPath()%>/resources/images/nomadland_banner.jpg" alt="">
                            </div>
                            <div class="contenido">
                                <div class="titulo">
                                    <h4>Nomadland</h4>
                                </div>
                                <div class="timing">
                                    <span>2hr:22mins</span>
                                </div>
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/estrenos/index.jsp"
                                       data-title=""
                                       data-timing=""
                                       data-sinopsis=""
                                       data-starring=""
                                       data-genre=""
                                       data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
                        <div class="home-movie">
                            <div class="img">
                                <img src="<%=request.getContextPath()%>/resources/images/mortalkombat_banner.jpg" alt="">
                            </div>
                            <div class="contenido">
                                <div class="titulo">
                                    <h4>Mortal Kombat</h4>
                                </div>
                                <div class="timing">
                                    <span>2hr:22mins</span>
                                </div>
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/estrenos/index.jsp"
                                       data-title=""
                                       data-timing=""
                                       data-sinopsis=""
                                       data-starring=""
                                       data-genre=""
                                       data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- proximos estrenos -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col">
                        <h3>Próximos estrenos</h3>
                    </div>
                    <div class="col text-right">
                        <a href="#" class="ver-todos">
                            Ver todos
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
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
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/notyet/index.jsp"
                                       data-title=""
                                       data-timing=""
                                       data-sinopsis=""
                                       data-starring=""
                                       data-genre=""
                                       data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
                        <div class="home-movie">
                            <div class="img">
                                <img src="<%=request.getContextPath()%>/resources/images/cruella_banner.jpg" alt="">
                            </div>
                            <div class="contenido">
                                <div class="titulo">
                                    <h4>Cruella</h4>
                                </div>
                                <div class="timing">
                                    <span>2hr:22mins</span>
                                </div>
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/notyet/index.jsp"
                                       data-title=""
                                       data-timing=""
                                       data-sinopsis=""
                                       data-starring=""
                                       data-genre=""
                                       data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
                        <div class="home-movie">
                            <div class="img">
                                <img src="<%=request.getContextPath()%>/resources/images/venomlettherebecarnage_banner.jpg" alt="">
                            </div>
                            <div class="contenido">
                                <div class="titulo">
                                    <h4>Venom: Let there be Carnage</h4>
                                </div>
                                <div class="timing">
                                    <span>2hr:22mins</span>
                                </div>
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/notyet/index.jsp"
                                       data-title=""
                                       data-timing=""
                                       data-sinopsis=""
                                       data-starring=""
                                       data-genre=""
                                       data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
                        <div class="home-movie">
                            <div class="img">
                                <img src="<%=request.getContextPath()%>/resources/images/tupgunmaverick_banner.jpg" alt="">
                            </div>
                            <div class="contenido">
                                <div class="titulo">
                                    <h4>Tup Gun: Maverick</h4>
                                </div>
                                <div class="timing">
                                    <span>2hr:22mins</span>
                                </div>
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/notyet/index.jsp"
                                       data-title=""
                                       data-timing=""
                                       data-sinopsis=""
                                       data-starring=""
                                       data-genre=""
                                       data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- recomendados -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col">
                        <h3>Recomendados</h3>
                    </div>
                    <div class="col text-right">
                        <a href="#" class="ver-todos">
                            Ver todos
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
                        <div class="home-movie">
                            <div class="img">
                                <img src="<%=request.getContextPath()%>/resources/images/fastandfurious9_banner.jpg" alt="">
                            </div>
                            <div class="contenido">
                                <div class="titulo">
                                    <h4>Fast & Furious 9</h4>
                                </div>
                                <div class="timing">
                                    <span>2hr:22mins</span>
                                </div>
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/estrenos/index.jsp"
                                       data-title=""
                                       data-timing=""
                                       data-sinopsis=""
                                       data-starring=""
                                       data-genre=""
                                       data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
                        <div class="home-movie">
                            <div class="img">
                                <img src="<%=request.getContextPath()%>/resources/images/monsterhunter_banner.jpg" alt="">
                            </div>
                            <div class="contenido">
                                <div class="titulo">
                                    <h4>Monster Hunter</h4>
                                </div>
                                <div class="timing">
                                    <span>2hr:22mins</span>
                                </div>
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/estrenos/index.jsp"
                                       data-title=""
                                       data-timing=""
                                       data-sinopsis=""
                                       data-starring=""
                                       data-genre=""
                                       data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
                        <div class="home-movie">
                            <div class="img">
                                <img src="<%=request.getContextPath()%>/resources/images/nomadland_banner.jpg" alt="">
                            </div>
                            <div class="contenido">
                                <div class="titulo">
                                    <h4>Nomadland</h4>
                                </div>
                                <div class="timing">
                                    <span>2hr:22mins</span>
                                </div>
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/estrenos/index.jsp"
                                       data-title=""
                                       data-timing=""
                                       data-sinopsis=""
                                       data-starring=""
                                       data-genre=""
                                       data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-3 pt-4">
                        <div class="home-movie">
                            <div class="img">
                                <img src="<%=request.getContextPath()%>/resources/images/mortalkombat_banner.jpg" alt="">
                            </div>
                            <div class="contenido">
                                <div class="titulo">
                                    <h4>Mortal Kombat</h4>
                                </div>
                                <div class="timing">
                                    <span>2hr:22mins</span>
                                </div>
                                <div class="cta">
                                    <a href="<%=request.getContextPath()%>/estrenos/index.jsp"
                                       data-title=""
                                       data-timing=""
                                       data-sinopsis=""
                                       data-starring=""
                                       data-genre=""
                                       data-trailer="">
                                        <i class="fas fa-play"></i>Comprar entradas
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="includes/footer.jsp" %>
    <%@ include file="includes/scripts.jsp" %>
</body>
</html>

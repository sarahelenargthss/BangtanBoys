<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Filmografia"%>
<%@page import="java.util.Calendar"%>
<%@page import="dao.sql.ProgramaDAO"%>
<%@page import="modelo.Programa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>

        <%
            HttpSession ses = request.getSession(true);
            ses.setAttribute("grupo", "got7");
        %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Meghna One page parallax responsive HTML Template ">

        <meta name="author" content="Muhammad Morshed">

        <title>Bangtan Boys</title>

        <!-- Mobile Specific Meta
        ================================================== -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img/bts1.png" />

        <!-- CSS
        ================================================== -->
        <!-- Fontawesome Icon font -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- bootstrap.min css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Animate.css -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <!-- Grid Component css -->
        <link rel="stylesheet" href="css/component.css">
        <!-- Slit Slider css -->
        <link rel="stylesheet" href="css/slit-slider.css">
        <!-- Main Stylesheet -->
        <link rel="stylesheet" href="css/main.css">
        <!-- Media Queries -->
        <link rel="stylesheet" href="web/css/media-queries.css">

        <!--
        Google Font
        =========================== -->                    

        <!-- Oswald / Title Font -->
        <link href='http://fonts.googleapis.com/css?family=Oswald:400,300' rel='stylesheet' type='text/css'>
        <!-- Ubuntu / Body Font -->
        <link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300' rel='stylesheet' type='text/css'>

        <!-- Modernizer Script for old Browsers -->		
        <script src="js/modernizr-2.6.2.min.js"></script>




    </head>

    <body id="body">
        <!--
        Start Preloader
        ==================================== -->
        <div id="loading-mask">
            <div class="loading-img">
                <img alt="Meghna Preloader" src="got7/img/preloader.gif"  />
                <img id="logoG" alt="logo" src="got7/img/logo.png"  />
            </div>
        </div>
        <!--
        End Preloader
        ==================================== -->

        <!--
        Welcome Slider
        ==================================== -->
        <section id="home">	    

            <div id="slitSlider" class="sl-slider-wrapper">
                <div class="sl-slider">

                    <!-- single slide item -->
                    <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="-25" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
                        <div class="sl-slide-inner">
                            <img id=imagem3 src=got7/img/turb2.jpg alt=bts9>
                            <div class="carousel-caption">
                                <div>
                                    <img id="logoGrupo" class="wow fadeInUp" src="got7/img/gotp.png" alt="Meghna">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /single slide item -->

                    <!-- single slide item -->
                    <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
                        <div class="sl-slide-inner">
                            <img id=imagem2 src="got7/img/never.jpg" alt=bts3>
                        </div>
                    </div>
                    <!-- /single slide item -->

                    <!-- single slide item -->
                    <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
                        <div class="sl-slide-inner">
                            <img id=imagem1 src=got7/img/ne.jpg alt=bts4>
                        </div>
                    </div>
                    <!-- /single slide item -->

                </div><!-- /sl-slider -->

                <nav id="nav-arrows" class="nav-arrows">
                    <span class="nav-arrow-prev">Previous</span>
                    <span class="nav-arrow-next">Next</span>
                </nav>

                <nav id="nav-dots" class="nav-dots">
                    <span class="nav-dot-current"></span>
                    <span></span>
                    <span></span>
                </nav>

            </div><!-- /slider-wrapper -->
        </section>
        <!--/#home section-->

        <!-- 
        Fixed Navigation
        ==================================== -->
        <header id="navigation" class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <!-- responsive nav button -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- /responsive nav button -->

                    <!-- logo -->
                    <a class="navbar-brand" href="#body">
                        <h1 id="logo">
                            <img id="logoG" 
                                 src="got7/img/logo.png" alt="Meghna" />
                        </h1>
                    </a>
                    <!-- /logo -->
                </div>

                <!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="Navigation">
                    <ul id="nav" class="nav navbar-nav">
                        <li class="current"><a href="#body">Home</a></li>
                        <li><a href="#about">Sobre</a></li>
                        <li><a href="#services">Prêmios</a></li>
                        <li><a href="#showcase">Integrantes</a></li>
                        <li><a href="#our-team">Filmografia</a></li>
                        <li><a href="#blog">Discografia</a></li>
                    </ul>
                </nav>
                <!-- /main nav -->

            </div>
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->
        <!-- 
             Start Main Features
             ==================================== -->
        <section id="about">
            <div class="container">
                <div class="row">

                    <!-- features item -->
                    <br> <div id="features">
                        <div class="item">

                            <div class="features-item">

                                <!-- features media -->
                                <img id="sobre" src="got7/img/novo.png" alt="sobre">
                                <!-- /features media -->

                                <!-- features content -->
                                <div class="col-md-6 feature-desc wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
                                    <h3>Sobre o grupo</h3><br>
                                    <p>GOT7 é um boy group de K-pop com sede na Coreia do Sul. </p>
                                    <p>Formado pela JYP Entertainment em 2014, o grupo é composto por sete membros, dois dos quais originalmente estrearam na dupla JJ Project em 2012. </p>
                                    <p>Sua formação atual é: JB, Mark, Jinyoung, Jackson, Youngjae, Bambam e Yugyeom.</p>
                                    <p><b>Fandom</b>: IGOT7.</p>
                                </div>
                                <!-- /features content -->

                            </div>
                        </div>

                        <div class="item">
                            <div class="features-item">

                                <!-- features media -->
                                <div class="col-md-6 feature-media wow fadeInUp" data-wow-duration="500ms">
                                    <img style="height: 315px;" src="got7/img/arr.jpg" alt="3D Beach Art | Meghna" class="img-responsive">
                                </div>
                                <!-- /features media -->

                                <!-- features content -->
                                <div class="col-md-6 feature-desc wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
                                    <h3>Sobre o grupo</h3><br>
                                    <p>O grupo foi introduzido ao público através de um episódio do reality show da Mnet Who is Next: WIN, que foi transmitido em 6 de setembro de 2013.</p>
                                    <p>No episódio, quatro membros competiram contra os trainees da YG Entertainment: Team A (agora conhecido como Winner) e Team B (agora conhecido como iKON). Em 16 de janeiro de 2014, GOT7 realizou sua estreia oficial com o lançamento do single "Girls Girls Girls".</p>

                                </div>
                                <!-- /features content -->

                            </div>
                        </div>
                    </div>
                    <!-- /features item -->

                </div> 		<!-- End row -->
            </div>   	<!-- End container --> <br><br><br><br><br><br>
        </section>   <!-- End section -->



        <!-- Start Services Section
        ==================================== -->

        <section id="services" class="bg-one">
            <div class="container">
                <div class="row">

                    <!-- section title -->
                    <div class="title text-center wow fadeIn" data-wow-duration="500ms">
                        <h2>Premiações</h2>
                        <div class="border"></div>
                    </div>
                    <!-- /section title -->

                    <h2>Premiações Coreanas</h2><br>

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms">
                        <div class="service-block text-center">
                            <h3>Gaon​ ​Chart​ ​Music​ ​Awards </h3>
                            <p><b>2017</b><br>Álbum do ano (1° Trimestre) com "Flight Log: Departure"<br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->


                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="400ms">
                        <div class="service-block text-center">
                            <h3>Golden Disk Awards</h3>
                            <p><b>2015</b><br>GOT7 - Melhor​ ​Artista​ ​Novo<br>Prêmio​ ​China​ ​Goodwill​ ​Star<br><b>2017</b><br>Flight​ ​Log:​ ​Turbulence - Disk Bonsang<br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="200ms">
                        <div class="service-block text-center">
                            <h3>Mnet​ ​Asian​ ​Music​ ​Awards</h3>
                            <p><b>2016</b><br>GOT7 - Worldwide​ ​Artista​ ​favorito<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="400ms">
                        <div class="service-block text-center">
                            <h3>SBS​ ​MTV​ ​Best​ ​of​ ​the​ ​Best</h3>
                            <p><b>2014</b><br>GOT7 - Melhor artista novo<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="200ms">
                        <div class="service-block text-center">
                            <h3>Seoul​ ​Music​ ​Awards</h3>
                            <p><b>2015</b><br>GOT7 - Prêmio Rookie<br><b>2017</b><br>"Flight​ ​Log:​ ​Turbulence" - Prêmio Bonsang<br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>SBS​ ​Awards​ ​Festival</h3>
                            <p><b>2015</b><br>Prêmio​ ​de​ ​popularidade​ ​do​ ​Netizen​ ​chinês<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Simply K-Pop Awards</h3>
                            <p><b>2016</b><br>GOT7 - Mellhor Boy Grupo ("Fly")<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>SBS​ ​The​ ​Show</h3>
                            <p><b>2016</b><br>GOT7 - Melhor​ ​estrela​ ​mais​ ​quente<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Global​ ​V​ ​LIVE​ ​Award </h3>
                            <p><b>2017</b><br>GOT7 - Artista Global Top 10<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <br><h2>Premiações Internacionais</h2><br>

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Fashion​ ​Power​ ​Awards</h3>
                            <p><b>2015</b><br>GOT7 - Grupo​ ​de​ ​influência​ ​de​ ​melhor​ ​estilo​ ​da​ ​Ásia<br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>MTV​ ​Europe​ ​Music​ ​Awards </h3>
                            <p><b>2016</b><br>GOT7 - Melhor​ ​Ato​ ​Mundial​ ​(Coréia)<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>SEED​ ​Awards</h3>
                            <p><b>2015</b><br>GOT7 - Artista​ ​asiático​ ​popular​ ​do​ ​ano<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Top​ ​Chinese​ ​Music​ ​Festival</h3>
                            <p><b>2015</b><br>GOT7 - Prêmio​ ​mais​ ​promissor​ ​de​ ​recém-chegados​ ​(categoria​ ​internacional)<br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>YinYue​ ​V-Chart​ ​Awards</h3>
                            <p><b>2015</b><br>GOT7 - Melhor recém-chegado coreano<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Youku​ ​Night​ ​Awards</h3>
                            <p><b>2015</b><br>GOT7 - Novo​ ​Prêmio​ ​Grupo​ ​Asiático<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>ATK​ ​Awards</h3>
                            <p><b>2016</b><br>GOT7 - Random​ ​Play​ ​Dance​ ​King<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <div style="opacity: 0;">
                        <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="service-block text-center kill-margin-bottom">
                                <h3> </h3>
                                <p><br><br><br><br><br><br><br><br><br><br><br></p>
                            </div>
                        </article>
                    </div>
                    <!-- End Single Service Item -->
                    <!-- Single Service Item -->
                    <div style="opacity: 0;">
                        <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="service-block text-center kill-margin-bottom">
                                <h3> </h3>
                                <p><br><br><br><br><br><br><br><br><br><br><br></p>
                            </div>
                        </article>
                    </div>
                    <!-- End Single Service Item -->

                    <br><h2>Premiações em Programas de Música</h2><br>

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>The Show</h3>
                            <p><b>2015</b><br>"If you do" - 06, 13 e 20 de Outubro<br><b>2016</b><br>"Fly" - 29 de Março e 05 de Abril<br>"Hard Carry" - 18 de Outubro<br><b>2017</b><br>"Never Ever" - 21 de Março<br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>M! Countdown</h3>
                            <p><b>2016</b><br>"Fly" - 31 de Março<br>"Hard Carry" - 06 de Outubro<br><b>2017</b><br>"Never Ever" - 23 de Março<br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Music Bank</h3>
                            <p><b>2016</b><br>"Fly" - 01 de Abril<br>"Hard Carry" - 07 de Outubro<br><b>2017</b><br>"Never Ever" - 24 de Março<br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Show Champion</h3>
                            <p><b>2017</b><br>"Never Ever" - 22 de Março<br><br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Inkigayo</h3>
                            <p><b>2016</b><br>"Fly" - 03 de Abril<br>"Hard Carry" - 09 de Outubro<br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <div style="opacity: 0;">
                        <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="service-block text-center kill-margin-bottom">
                                <h3> </h3>
                                <p><br><br><br><br><br><br><br><br><br><br><br></p>
                            </div>
                        </article>
                    </div>
                    <!-- End Single Service Item -->


                </div> 		<!-- End row -->
            </div>   	<!-- End container -->
        </section>   <!-- End section -->


        <!-- Start Portfolio Section
        =========================================== -->

        <section id="showcase">
            <div class="container">
                <div class="row wow fadeInDown" data-wow-duration="500ms">
                    <div class="col-lg-12">

                        <!-- section title -->
                        <div class="title text-center">
                            <h2>Integrantes</h2>
                            <div class="border"></div>
                        </div>
                        <!-- /section title -->

                        <!-- portfolio item filtering -->

                        <!-- /portfolio item filtering -->

                    </div> <!-- /end col-lg-12 -->
                </div> <!-- end row -->
            </div>	<!-- end container -->

            <!-- portfolio items -->
            <div class="portfolio-item-wrapper wow fadeInUp" data-wow-duration="500ms">
                <ul id="og-grid" class="og-grid">

                    <!-- single portfolio item -->	
                    <li class="mix app">
                        <a href="javascript:void(0)" data-largesrc= "bts/img/int/jin2.jpg" data-title="Kim Seokjin" data-description="Nome Artístico: Jin <br>Data de Nascimento: 04/12/1992 <br>Cidade Natal: Gwacheon <br>Posição: Vocalista e Visual<br>Altura: 1,79<br>Cor Favorita: Rosa<br>Comida Favorita: Lagosta, carne, naengmyeon (macarrão frio), frango, alimentos gordurosos">
                            <img id="integrantes" src="bts/img/int/jin1.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>Jin</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="bts/img/int/suga2.jpg" data-title="Min Yoongi" data-description="Nome Artístico: Suga<br>Data de Nascimento: 09/03/1993 <br>Cidade Natal: Daegu <br>Posição: Rapper<br>Altura: 1,76<br>Cor Favorita: Branco<br>Comida Favorita: Carne, carne, carne">
                            <img id="integrantes" src="bts/img/int/suga7.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>Suga</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix photoshop">
                        <a href="javascript:void(0)" data-largesrc="bts/img/int/rm3.jpg" data-title="Kim Namjoon" data-description="Nome Artístico: Rap Monster <br>Data de Nascimento: 12/09/1994 <br>Cidade Natal: Ilsan <br>Posição: Líder, rapper e compositor<br>Altura: 1,81<br>Cor Favorita: Preto<br>Comida Favorita: Carne, Korean knife noodles (Macarrão coreano)">
                            <img id="integrantes" src="bts/img/int/rm2.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>Rap Monster</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix illustrator">
                        <a href="javascript:void(0)" data-largesrc="bts/img/int/jh3.jpg" data-title="Jung Hoseok" data-description="Nome Artístico: J-Hope <br>Data de Nascimento: 18/02/1994 <br>Cidade Natal: Gwangju <br>Posição: Rapper e dançarino<br>Altura: 1,77<br>Cor Favorita: Verde<br>Comida Favorita: Kimchi">
                            <img id="integrantes" src="bts/img/int/jh2.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>J-Hope</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix app">
                        <a href="javascript:void(0)" data-largesrc="bts/img/int/jimin2.jpg" data-title="Park Jimin" data-description="Nome Artístico: Jimin <br>Data de Nascimento: 13/10/1995 <br>Cidade Natal: Busan<br>Posição: Vocalista e dançarino<br>Altura: 1,75<br>Cor Favorita: Azul e preto<br>Comida Favorita: Carne (porco, bife, pato, frango), frutas, ensopado (kimchi jjigae)">
                            <img id="integrantes" src="bts/img/int/jimin3.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>Jimin</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix app">
                        <a href="javascript:void(0)" data-largesrc="bts/img/int/v2.jpg" data-title="Kim Taehyung" data-description="Nome Artístico: V<br>Data de Nascimento: 30/12/1995<br>Cidade Natal: Daegu <br>Posição: Vocalista<br>Altura: 1,78<br>Cor Favorita: Verde, preto e branco<br>Comida Favorita: Japchae, qualquer tipo de carne">
                            <img id="integrantes" src="bts/img/int/v3.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>V</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>	
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="bts/img/int/jk2.jpg" data-title="Jeon Jeongguk" data-description="Nome Artístico: Jungkook <br>Data de Nascimento: 01/09/1997 <br>Cidade Natal: Busan <br>Posição: Maknae, Vocalista, Rapper e Dançarino<br>Altura: 1,77<br>Cor Favorita: Preto, vermelho e branco<br>Comida Favorita: Pão, pizza, qualquer coisa com farinha.">
                            <img id="integrantes" src="bts/img/int/jk1.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>Jungkook</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>	
                        </a>
                    </li>
                    <!-- /single portfolio item -->


                </ul> <!-- end og grid -->
            </div>  <!-- portfolio items wrapper -->

        </section>   <!-- End section -->




        <!-- Start Our Team
        =========================================== -->

        <section id="our-team">
            <div class="container">
                <div class="row">

                    <!-- section title -->
                    <div class="title text-center wow fadeInUp" data-wow-duration="500ms">
                        <h2>Filmografia</h2>
                        <div class="border"></div>
                    </div>
                    <!-- /section title -->
                    <tbody>
                        <%
                            String tipo;
                            String valor;
                            for (int s = 0; s <= 1; s++) {
                                if (s == 0) {
                                    tipo = "Programas de Variedade";
                                    valor = "programa";
                                } else {
                                    tipo = "Drama";
                                    valor = "drama";
                                }
                        %> 
                    <h2><%out.println(tipo);%></h2> 
                    <%
                        ses = request.getSession(true);
                        ProgramaDAO pdao = new ProgramaDAO();
                        Filmografia flmg = new Filmografia();
                        flmg.setFilmografia(pdao.carregaListaDeProgramas((String) ses.getAttribute("grupo")));

                        int max = Calendar.getInstance().get(Calendar.YEAR);
                        boolean mostraAno;
                        for (int i = 2013; i <= max; i++) {
                            mostraAno = false;
                            for (Programa p : flmg.getFilmografia()) {
                                if (p.getAno() == i && p.getTipo().equals(valor)) {
                                    if (!mostraAno) {
                    %>
                    <h3><%out.println(p.getAno());%></h3>
                    <br>
                    <%
                        }

                    %>
                    <article id="filmografia" class="team-mate">
                        <!-- member name & designation -->

                        <div id="editarFilmografia">
                            <h3><%out.println(p.getNome());%></h3>
                            <span><%out.println(p.getEmissora());%></span>
                        </div>

                        <!-- /member name & designation -->

                        <!-- about member -->
                        <div class="member-info">
                            <p><%out.println(p.getMembros());%><br><%out.println(p.getEpisodios());%></p>
                        </div>
                        <!-- /about member -->
                    </article>

                    <%
                                        mostraAno = true;
                                    }
                                }
                            }
                        }
                    %>
                    </tbody>

                </div>  	<!-- End row -->

            </div>   	<!-- End container -->
        </section>   <!-- End section -->

        <!--
        Start Blog Section
        =========================================== -->

        <section id="blog" class="bg-one">
            <div class="container">
                <div class="row">

                    <!-- section title -->
                    <div class="title text-center wow fadeInDown">
                        <h2>Discografia Coreana</h2>
                        <div class="border"></div>
                    </div>
                    <!-- /section title -->

                    <div class="clearfix">
                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/24.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>2 Cool 4 Skool</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 12.06.13<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas:</h3></b><br>Intro: 2 Cool 4 Skool<br>We Are Bulletproof Pt.2<br>Skit: Circle Room Talk<br>No More Dream<br>Interlude<br>I Like It<br>Outro: Circle Room Cypher<br><br><br><br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->

                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/82.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>O!RUL8,2?</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 12.09.13<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas:</h3></b><br>Intro: O!RUL8,2?<br>N.O<br>We On<br>Skit: R U Happy Now?<br>If I Ruled The World<br>Coffee>BTS Cypher Pt.1<br>Rise of Bangtan/Attack on Bangtan<br>Paldogangsan - Satoori Rap<br>Outro: Luv In Skool<br><br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->


                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 clearfix wow fadeInUp" data-wow-duration="500ms">
                            <div class="note">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/sla.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>

                                <div class="excerpt">
                                    <h3>Skool Luv Affair</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 12.02.14<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas:</h3></b><br>Intro: Skool Luv Affair<br>Boy In Luv<br>Skit: Soulmate<br>Where Did You Come From<br>Just One Day<br>Tomorrow<br>BTS Cypher PT.2: Triptych<br>Spine Breaker<br>Jump<br>Outro: Propose<br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- /single blog post -->


                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="400ms">
                            <div class="note">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/slase.jpeg" alt="amazing caves coverimage" class="img-responsive">
                                </div>

                                <div class="excerpt">
                                    <h3>Skool Luv Affair Special Addition (Repackage)</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 14.05.14<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas:</h3></b><br>Miss Right<br>I Like It (Slow Jam Remix)<br>Intro: Skool Luv Affair<br>Boy In Luv<br>Skit: Soulmate<br>Where Did You Come From<br>Just One Day<br>Tomorrow<br>BTS Cypher PT.2: Triptych<br>Spine Breaker<br>Jump<br>Outro: Propose<br><br></p>

                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post --><!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/dw.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>DARK&WILD</h3>
                                    <p>Full-Álbum<br>Data de lançamento: 19.08.14<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas:</h3></b><br>Intro: What Am I To You<br>Danger<br>War of Hormone<br>Hip-Hop Lover<br>Let Me Know<br>Rain<br>BTS Cypher PT.3: KILLER (Feat. Supreme Boi)<br>Interlude: What Are You Doing<br>Would You Turn Off Your Phone<br>Blanket Kick<br>24/7=Heaven<br>Look Here<br>2nd Grade<br>Outro: Does That Make Sense?</p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->
                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/mbml.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>The Most Beautiful Moment In Life PT.1 (Versão Pink)</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 29.04.15<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas:</h3></b><br>Intro: The Most Beautiful Moment in Life (HwaYang YeonHwa)<br>I NEED U<br>Hold Me Tight<br>SKIT: Expectation!<br>DOPE<br>Fun Boyz<br>Converse High (Lovers High – versão para promoções)<br>Move<br>Outro: Love is Not Over<br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->
                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/mbmlw.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>The Most Beautiful Moment In Life PT.1 (Versão White)</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 29.04.15<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas:</h3></b><br>Intro: The Most Beautiful Moment in Life (HwaYang YeonHwa)<br>I NEED U<br>Hold Me Tight<br>SKIT: Expectation!<br>DOPE<br>Fun Boyz<br>Converse High (Lovers High – versão para promoções)<br>Move<br>Outro: Love is Not Over<br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->
                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/mbmlb.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>The Most Beautiful Moment In Life PT.2 (Versão Blue)</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 30.11.15<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas:</h3></b><br>Intro: Never Mind<br>RUN<br>Butterfly<br>Whalien 52<br>Ma City<br>Baepsae<br>SKIT: One night in a strange city<br>Autumn Leaves<br>OUTRO: House Of Cards<br><br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->


                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/mbmlp.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>The Most Beautiful Moment In Life PT.2 (Versão Peach)</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 30.11.15<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas:</h3></b><br>Intro: Never Mind<br>RUN<br>Butterfly<br>Whalien 52<br>Ma City<br>Baepsae<br>SKIT: One night in a strange city<br>Autumn Leaves<br>OUTRO: House Of Cards<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post --><!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/mbmld.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>The Most Beautiful Moment In Life, Young Forever (Versão Day)</h3>
                                    <p>Álbum especial<br>Data de lançamento: 02.05.16<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas CD 1:</h3></b><br>Intro: The Most Beutiful Moment in Life (HwaYang YeonHwa)<br>I NEED U<br>Hold Me Tight<br>Autumn Leaves<br>Butterfly (Prologue Remix)<br>RUN<br>Ma City<br>DOPE<br>Fire<br>Save Me<br>Epilogue: Young Forever<br><b><h3>Faixas CD 2:</h3></b>Converse High<br>Move<br>Whalien 52<br>Butterfly<br>House of Cards (Full Length Edition)<br>Love Is Not Over (Full Length Edition)<br>I NEED U (Urban Remix)<br>I NEED U (Remix)<br>RUN (Ballad Remix)<br>RUN (Alternative Remix)<br>Butterfly (Alternative Remix)<br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->
                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/mbmln.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>The Most Beautiful Moment In Life, Young Forever (Versão Night)</h3>
                                    <p>Álbum especial<br>Data de lançamento: 02.05.16<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas CD 1:</h3></b><br>Intro: The Most Beutiful Moment in Life (HwaYang YeonHwa)<br>I NEED U<br>Hold Me Tight<br>Autumn Leaves<br>Butterfly (Prologue Remix)<br>RUN<br>Ma City<br>DOPE<br>Fire<br>Save Me<br>Epilogue: Young Forever<br><b><h3>Faixas CD 2:</h3></b>Converse High<br>Move<br>Whalien 52<br>Butterfly<br>House of Cards (Full Length Edition)<br>Love Is Not Over (Full Length Edition)<br>I NEED U (Urban Remix)<br>I NEED U (Remix)<br>RUN (Ballad Remix)<br>RUN (Alternative Remix)<br>Butterfly (Alternative Remix)<br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->
                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="bts/img/discografia/w.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>Wings</h3>
                                    <p>Full-Álbum<br>Data de lançamento: 10.10.2016<br>Gênero:Rap, Hip-Hop & K-Pop<br><b><h3>Faixas:</h3></b><br>INtro: Boys Meets Evil<br>Blood Sweat and Tears<br>Begin<br>Lie<br>Stigma<br>First LOve<br>Reflection<br>MAMA<br>Awake<br>Lost<br>BTS Cypher 4<br>Am I Wrong<br>21st Century Girls<br>Two! Three! (Still Wishing There Will Be Better Days)<br>Interlude: Wings<br><br><br><br><br><br><br><br><br><br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->

                    </div>


                </div> <!-- end row -->
            </div> <!-- end container -->
        </section> <!-- end section -->



        <footer id="footer" class="bg-one">
            <div class="container">
                <div class="row wow fadeInUp" data-wow-duration="500ms">
                    <div class="col-lg-12">

                        <!-- copyright -->
                        <div class="copyright text-center">
                            <a href=telalogin.jsp>
                                <img id="logoG" src="bts/img/bts1.png" alt="Meghna" /> 
                            </a>
                            <br/>
                        </div>
                        <!-- /copyright --> 

                    </div> <!-- end col lg 12 -->
                </div> <!-- end row -->
            </div> <!-- end container -->
        </footer> <!-- end footer -->

        <% try {

                ses = request.getSession(true);
                Boolean login = (Boolean) ses.getAttribute("logado");
                if ((login != null) && (login)) {
        %>
        <a href=gerenciarPagina.jsp id="gerenciar">Gerenciar Páginas</a>
        <%      }
            } catch (Exception e) {
                out.println(e.getMessage());
            }%>  



        <!-- Back to Top
        ============================== -->
        <a href="javascript:;" id="scrollUp">
            <i class="fa fa-angle-up fa-2x"></i>
        </a>

        <!-- end Footer Area
        ========================================== -->

        <!-- 
        Essential Scripts
        =====================================-->

        <!-- Main jQuery -->
        <script src="js/jquery-1.11.0.min.js"></script>
        <!-- Bootstrap 3.1 -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Slitslider -->
        <script src="js/jquery.slitslider.js"></script>
        <script src="js/jquery.ba-cond.min.js"></script>
        <!-- Parallax -->
        <script src="js/jquery.parallax-1.1.3.js"></script>
        <!-- Owl Carousel -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- Portfolio Filtering -->
        <script src="js/jquery.mixitup.min.js"></script>
        <!-- Custom Scrollbar -->
        <script src="js/jquery.nicescroll.min.js"></script>
        <!-- Jappear js -->
        <script src="js/jquery.appear.js"></script>
        <!-- Pie Chart -->
        <script src="js/easyPieChart.js"></script>
        <!-- jQuery Easing -->
        <script src="js/jquery.easing-1.3.pack.js"></script>
        <!-- tweetie.min -->
        <script src="js/tweetie.min.js"></script>
        <!-- Google Map API -->
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <!-- Highlight menu item -->
        <script src="js/jquery.nav.js"></script>
        <!-- Sticky Nav -->
        <script src="js/jquery.sticky.js"></script>
        <!-- Number Counter Script -->
        <script src="js/jquery.countTo.js"></script>
        <!-- wow.min Script -->
        <script src="js/wow.min.js"></script>
        <!-- For video responsive -->
        <script src="js/jquery.fitvids.js"></script>
        <!-- Grid js -->
        <script src="js/grid.js"></script>
        <!-- Custom js -->
        <script src="js/custom.js"></script>

    </body>
</html>
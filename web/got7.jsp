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

        <title>Got7</title>

        <!-- Mobile Specific Meta
        ================================================== -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="got7/img/logo.png" />

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

        <style>

            #integrantes{
                width: 494px;
                height: 100%;

            }
        </style>


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

                    <a class="navbar-brand" href="grupos.jsp">
                        <h1 id="logo">
                            <img style="height: 62.9px;" src="img/morep.png" alt="Meghna" />
                        </h1>
                    </a>
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
                            <p><b>2016</b><br>GOT7 - Melhor Boy Grupo ("Fly")<br><br><br><br><br><br><br><br></p>
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
                        <a href="javascript:void(0)" data-largesrc= "got7/img/int/mark11.jpg" data-title="Mark​ Yien​ Tuan" data-description="Nome Artístico: Mark <br>Data de Nascimento: 04/09/1993 <br>Cidade Natal: Los Angeles, Califórnia <br>Posição: Rapper,​ Dançarino,​ Vocalista​ de​ apoio,​ ​ Visual<br>Altura: 175cm<br>Peso: 59kg<br>Tipo Sanguíneo: A">
                            <img id="integrantes" src="got7/img/int/mark1.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>Mark</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="got7/img/int/jb11.jpg" data-title="Im Jaebum" data-description="Nome Artístico: JB <br>Data de Nascimento: 06/01/1994 <br>Cidade Natal: Ilsan,​ Gyeonggi<br>Posição: Líder,​ Vocal​ principal,​ Dançarino​ principal<br>Altura: 179cm<br>Peso: 66kg<br>Tipo Sanguíneo: A">
                            <img id="integrantes" src="got7/img/int/jb1.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>JB</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix photoshop">
                        <a href="javascript:void(0)" data-largesrc="got7/img/int/jackson11.jpg" data-title="Jackson Wang" data-description="Nome Artístico: Jackson<br>Data de Nascimento: 28/03/1994 <br>Cidade Natal: Hong Kong<br>Posição:Rapper,​ Dançarino,​ Vocalista​ de​ apoio<br>Altura: 174cm<br>Peso: 63kg<br>Tipo Sanguíneo: O">
                            <img id="integrantes" src="got7/img/int/jack1.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>Jackson</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix illustrator">
                        <a href="javascript:void(0)" data-largesrc="got7/img/int/jr11.jpg" data-title="Park Jinyoung" data-description="Nome Artístico: Jinyoung <br>Data de Nascimento: 22/09/1994 <br>Cidade Natal:Jinhae-gu<br>Posição:​ Vocalista​ principal,​ Dançarino,​ Rapper​ de​ apoio<br>Altura: 178cm<br>Peso: 63kg<br>Tipo Sanguíneo: O">
                            <img id="integrantes" src="got7/img/int/jr1.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>Jinyoung</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix app">
                        <a href="javascript:void(0)" data-largesrc="got7/img/int/youngjae11.jpg" data-title="Choi Youngjae" data-description="Nome Artístico: Youngjae <br>Data de Nascimento: 17/09/1996 <br>Cidade Natal: Mokpo<br>Posição: Vocalista​ principal,​ Dançarino<br>Altura: 177cm<br>Peso: 61kg<br>Tipo Sanguíneo: B">
                            <img id="integrantes" src="got7/img/int/youngjae2.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>Youngjae</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix app">
                        <a href="javascript:void(0)" data-largesrc="got7/img/int/bambam11.jpg" data-title="Kunpimook Bhuwakul" data-description="Nome Artístico: Bambam <br>Data de Nascimento: 02/05/1997 <br>Cidade Natal:​ Bangkok,​ Tailândia<br>Posição: Rapper​ principal,​ Dançarino,​ Vocalista​ de​ apoio<br>Altura: 174cm<br>Peso: 52kg<br>Tipo Sanguíneo: B">
                            <img  id="integrantes" src="got7/img/int/bambam3.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>Bambam</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>	
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="got7/img/int/yugyeom11.jpg" data-title="Kim Yugyeom" data-description="Nome Artístico: Yugyeom <br>Data de Nascimento: 17/11/1997 <br>Cidade Natal:​ Namyangju<br>Posição: Vocalista,​ Dançarino​ principal,​ Maknae<br>Altura: 182cm<br>Peso: 68kg<br>Tipo Sanguíneo: A">
                            <img id="integrantes" src="got7/img/int/yug1.jpg" alt="Meghna">
                            <div class="hover-mask">
                                <h3>Yugyeom</h3>
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
                                    <img src="got7/img/discografia/gotit.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>Got it?</h3>
                                    <p>Data de lançamento: 20.01.2014<br><b><h3>Faixas:</h3></b><br>Hello<br>Girls​ Girls Girls<br>I like​ you<br>​ Follow​ me<br>Like​ Oh<br>​Playground<br><br><br><br><br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->

                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="got7/img/discografia/gotlove.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>Got Love</h3>
                                    <p>Data de lançamento: 23.06.2014<br><b><h3>Faixas:</h3></b><br>U Got​ Me<br>A<br>Bad​ Behavior<br>Good​ Tonight<br>Forever​ Young<br>​A (“collapsedone”​ ​ Remix)<br>​A (TOYO​ ​ Remix)<br>A (FRANTS​ ​ Remix)<br><br><br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->


                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 clearfix wow fadeInUp" data-wow-duration="500ms">
                            <div class="note">
                                <div class="media-wrapper">
                                    <img src="got7/img/discografia/idt.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>

                                <div class="excerpt">
                                    <h3>Identify</h3>
                                    <p>Data de lançamento: 18.11.2014<br><b><h3>Faixas:</h3></b><br>​ Stop​ Stop​ It<br>Gimme<br>Take​ My​ Hand<br>Girl​/Magnetic<br>Interlude<br>Just​ Tonight<br>Turn​ Up The​ Music<br>Stay<br>Moonlight<br>She’s​ a Monster<br>Girls​ Girls​ Girls<br>A<br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- /single blog post -->


                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="400ms">
                            <div class="note">
                                <div class="media-wrapper">
                                    <img src="got7/img/discografia/jr.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>

                                <div class="excerpt">
                                    <h3>Just Right</h3>
                                    <p>Data de lançamento: 13.07.2015<br><b><h3>Faixas:</h3></b><br>Just​ Right<br>Before​ The​ Full Moon​ Rises<br>My​ Whole​ Body​ Is​ Reacting<br>Nice<br>Mine<br>Back​ To​ Me<br><br><br><br><br><br><br><br><br></p>

                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post --><!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="got7/img/discografia/mad.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>MAD</h3>
                                    <p>Data de lançamento: 30.09.2015<br><b><h3>Faixas:</h3></b><br>​ If​ You​ Do<br>Raise​ Your​ Hand<br>Feeling​ Good<br>GOOD<br>​Eyes​ On​ You<br>I Like It<br>Tic​ Tic​ Tok<br><br><br><br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->
                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="got7/img/discografia/madw.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>MAD​ Winter​ Edition</h3>
                                    <p>Data de lançamento: 23.11.2015<br><b><h3>Faixas:</h3></b><br>​Confession​ Song<br>Everyday<br>This.Star<br>If​ You​ Do<br>Raise​ ​Your​ Hand<br>Feeling​ Good<br>GOOD<br>​Eyes​ On​ ​You<br>Tic​ Tic​ Tok<br>​ You​ Do​ (Stage​ Ver.)<br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->
                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="got7/img/discografia/dep.jpeg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>FLIGHT​ LOG:​ DEPARTURE</h3>
                                    <p>Data de lançamento: 21.03.2016<br><b><h3>Faixas:</h3></b><br>Fly<br>Can’t<br>See​ The​ Light<br>Fish<br>Rewind<br>On​ My​ Knees<br>Something​ Good<br>Home​ Run<br><br><br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->
                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="got7/img/discografia/turb.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>FLIGHT​ LOG:​ TURBULENCE</h3>
                                    <p>Data de lançamento: 27.09.2016<br><b><h3>Faixas:</h3></b><br>Skyway<br>Hard​ Carry<br>Boom​ x3<br>Prove​ It<br>​ No​ Jam<br>HEY<br>Mayday<br>My​ Home<br>Who’s​ That<br>If<br>Sick<br>Dreamin'<br>Let​ Me<br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->


                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="got7/img/discografia/arr.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>FLIGHT​ ​ LOG:​ ​ ARRIVAL</h3>
                                    <p>Data de lançamento: 13.03.2017<br><b><h3>Faixas:</h3></b><br>​ Never​ Ever<br>​Shopping​ Mall<br>Paradise<br>Sign<br>Go​ Higher<br>Q<br>Don't Care<br><br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="got7/img/discografia/77.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>7 For 7</h3>
                                    <p>Data de lançamento: 10.10.2017<br><b><h3>Faixas:</h3></b><br>​Moon U<br>​Teenager<br>You Are<br>Firework<br>Remember You<br>To Me<br>Face<br><br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>

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
                                <img id="logoG" src="got7/img/got7.png" alt="Meghna" /> 
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
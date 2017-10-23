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
            ses.setAttribute("grupo", "svt");
        %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Meghna One page parallax responsive HTML Template ">

        <meta name="author" content="Muhammad Morshed">

        <title>Seventeen</title>

        <!-- Mobile Specific Meta
        ================================================== -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="svt/img/logo.png" />

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
                width: 100%;
                height: 450px;

            }
        </style>

    </head>

    <body id="body">
        <!--
        Start Preloader
        ==================================== -->
        <div id="loading-mask">
            <div class="loading-img">
                <img alt="Meghna Preloader" src="svt/img/preloader.gif"  />
                <img id="logoG" alt="logo" src="svt/img/logo.png"  />
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
                            <img id=imagem3 src=svt/img/svt.jpg alt=bts9>
                            <div class="carousel-caption">
                                <div>
                                    <img id="logoGrupo" class="wow fadeInUp" src="svt/img/svt.png" alt="Meghna">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /single slide item -->

                    <!-- single slide item -->
                    <div class="sl-slide" data-orientation="vertical" data-slice1-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5" data-slice2-scale="1.5">
                        <div class="sl-slide-inner">
                            <img id=imagem2 src="svt/img/171.jpg" alt=bts3>
                        </div>
                    </div>
                    <!-- /single slide item -->

                    <!-- single slide item -->
                    <div class="sl-slide" data-orientation="horizontal" data-slice1-rotation="3" data-slice2-rotation="3" data-slice1-scale="2" data-slice2-scale="1">
                        <div class="sl-slide-inner">
                            <img id=imagem1 src=svt/img/173.jpg alt=bts4>
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
                                 src="svt/img/logo.png" alt="Meghna" />
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
                                <img id="sobre" src="svt/img/175.jpg" alt="sobre">
                                <!-- /features media -->

                                <!-- features content -->
                                <div class="col-md-6 feature-desc wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
                                    <h3>Sobre o grupo</h3><br>
                                    <p>SEVENTEEN é um grupo sul coreano da Pledis Entertainment, formado por 13 membros. </p>
                                    <p>BTS fez sua estreia oficial em 13 de junho de 2013 com o lançamento do single "No More Dream" do álbum 2 Cool 4 Skool.</p>
                                    <p>Os sete integrantes são: Jin, Suga, J-hope, Rap Monster, Jimin, V e Jungkook.</p>
                                    <p>Jimin foi o último a entrar no grupo e V foi o único a ser revelado apenas no debut.</p>
                                </div>
                                <!-- /features content -->

                            </div>
                        </div>

                        <div class="item">
                            <div class="features-item">

                                <!-- features media -->
                                <div class="col-md-6 feature-media wow fadeInUp" data-wow-duration="500ms">
                                    <img src="svt/img/177.jpg" alt="3D Beach Art | Meghna" class="img-responsive">
                                </div>
                                <!-- /features media -->

                                <!-- features content -->
                                <div class="col-md-6 feature-desc wow fadeInUp" data-wow-duration="500ms" data-wow-delay="300ms">
                                    <h3>Sobre o grupo</h3>
                                    <p>O grupo teve várias mudanças de membros durante o processo de formação, alguns sempre saíam do grupo, o único que realmente ficou foi Rap Monster (Kim Namjoon). O grupo deveria ter debutado em 2010 mas como não foi possível por causa da saída de membros, debutaram no ano de 2013.</p>
                                    <p>Os ex-membros são: Shin Donghyuk (Supreme Boi), Choi Ikje (i11evn), Jin Hyosang (Kidoh) e Jung Hunchul (Iron).</p>
                                    <p>Eles também tiveram o seu próprio programa de variedades intitulado como Rookie King: Channel Bangtan, que foi ao ar através da SBS MTV em oito episódios.</p>

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
                            <h3>Melon Music Awards</h3>
                            <p><b>2013</b><br>BTS - Novo artista do ano<br><b>2015</b><br>"I Need U" - Melhor dança<br><b>2016</b><br>BTS - Top 10 Artistas<br>The Most Beautiful Moment in LIfe: Young Forever - Daesang de Álbum Novo<br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->


                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="400ms">
                        <div class="service-block text-center">
                            <h3>Golden Disk Awards</h3>
                            <p><b>2014</b><br>BTS - Newcomer Award<br><b>2015</b><br>"Dark & Wild" - Disk Bonsang<br><b>2016</b><br>"The Most Beautiful Moment in Life, Part 1" - Disk Bonsang<br><b>2017</b><br>"Wings" - Disk Daesang<br>BTS - Global K-Pop Artist Award<br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="200ms">
                        <div class="service-block text-center">
                            <h3>Seoul Music Awards</h3>
                            <p><b>2014</b><br>BTS - New Artist Award<br><b>2015</b><br>BTS - Bonsang Award<br><b>2016</b><br>BTS - Bonsang Award<br><b>2017</b><br>"Wings - Album of the Year"<br>"Blood Sweat and Tears" - Best Music Video Award<br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="400ms">
                        <div class="service-block text-center">
                            <h3>Gaon Chart K-Pop Awards</h3>
                            <p><b>2014</b><br>BTS - novo Artista do Ano (Grupo Masculino)<br><b>2015</b><br>BTS - World Rookie Award<br><b>2016</b><br>BTS - K-Pop World Hallyu Star Award<br><b>2017</b><br>"Wings" - Albun of the Year - 4th Quarter<br>BTS - V Live Global Popularity Award</p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="200ms">
                        <div class="service-block text-center">
                            <h3>Mnet Asian Music Awards</h3>
                            <p><b>2015</b><br>BTS - Melhor Performer Mundial<br><b>2016</b><br>"Blood, Sweat and Tears" - Melhor Performance de Dança por um Grupo Masculino<br>BTS - HotelsCombined Artista do Ano(Daesang)<br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio"class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Korean Popular Culture And Arts Awards</h3>
                            <p><b>2016</b><br>BTS - Culture Minister Award<br><br><br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Simply K-Pop Awards</h3>
                            <p><b>2015</b><br>BTS - Melhor Desempenho de Grupo Masculino<br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Asia Artist Awards</h3>
                            <p><b>2016</b><br>BTS - Best Icon Award, Singer<br>BTS - Best Artist Award, Male Singer</p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>MBC Music Show Champion</h3>
                            <p><b>2015</b><br>"Run" - Melhor Performance de Grupo Masculino<br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <br><h2>Premiações Internacionais</h2><br>

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>MTV Europe Music Awards</h3>
                            <p><b>2015</b><br>BTS - Best Korean Act<br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>YinYueTai</h3>
                            <p><b>2014</b><br>BTS - Rookie Award<br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Japan Gold Disk Awards</h3>
                            <p><b>2015</b><br>BTS - Melhor Artista Novo (Ásia)<br>BTS - 3 Melhores Novos Artistas (Ásia)<br><b>2017</b><br>Youth - 3 Melhores Albuns</p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <br><h2>Premiações em Programas de Música</h2><br>

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>The Show</h3>
                            <p><b>2015</b><br>"I Need U" - 05 e 12 de maio<br>"Run" - 08 de dezembro<br><b>2016</b><br>"Blood Sweat & Tears" - 25 de outubro<br><br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>M! Countdown</h3>
                            <p><b>2015</b><br>"I Need U" - 07 de maio<br><b>2016</b><br>"Fire" - 12 de Maio<br>"Blood Sweat & Tears" - 20 de Outubro<br><b>2017</b><br>"Spring Day" - 23 de Fevereiro<br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Music Bank</h3>
                            <p><b>2015</b><br>"I Need U" - 08 de maio<br>"Run" - 11 de dezembro<br><b>2016</b><br>"Run" - 08 de janeiro<br>"Fire" - 13 de maio<br>"Blood Sweat & Tears" - 21 e 28 de Outubro<br><b>2017</b><br>"Spring Day" - 24 de Fevereiro</p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Show Champion</h3>
                            <p><b>2015</b><br>"I Need U" - 13 de maio<br>"Run" - 09 e 16 de dezembro<br><b>2016</b><br>"Blood Sweat & Tears" - 19 de outubro<br><b>2017</b><br>"Spring Day" - 22 de Fevereiro</p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Inkigayo</h3>
                            <p><b>2016</b><br>"Fire" - 15 de Maio<br>"Blood Sweat & Tears" - 23 de outubro<br><b>2017</b><br>"Spring Day" - 26 de Fevereiro<br><br><br></p>
                        </div>
                    </article>
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
                        <a href="javascript:void(0)" data-largesrc= "svt/img/int/sc1.jpg" data-title="Choi Seungcheol" data-description="Nome Artístico: S.Coups <br>Data de Nascimento: 08/08/1995 <br>Cidade Natal: Daegu<br>Posição: Rapper e líder do grupo<br>Altura: 1,77<br>Unit: Hip Hop<br>Tipo sanguíneo: AB">
                            <img id="integrantes" src="svt/img/int/scoups.jpg" alt="Seungcheol">
                            <div class="hover-mask">
                                <h3>S.Coups</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/jh1.jpg" data-title="Yoon Jeonghan" data-description="Nome Artístico: Jeonghan<br>Data de Nascimento: 04/10/1995 <br>Cidade Natal: Seoul<br>Posição: Sub vocal e visual<br>Altura: Altura: 1,79<br>Unit: Vocal<br>Tipo sanguíneo: B">
                            <img id="integrantes" src="svt/img/int/jeonghan.jpg" alt="Jeonghan">
                            <div class="hover-mask">
                                <h3>Jeonghan</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix photoshop">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/js1.jpg-large" data-title="Hong Jisoo" data-description="Nome Artístico: Joshua <br>Data de Nascimento: 30/12/1995 <br>Cidade Natal: Los Angeles<br>Posição: Vocal, instrumental e visual<br>Altura: 1,81<br>Unit: Vocal<br>Tipo sanguíneo: A">
                            <img id="integrantes" src="svt/img/int/joshua.jpg" alt="Jisoo">
                            <div class="hover-mask">
                                <h3>Joshua</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix illustrator">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/jun1.jpg" data-title="Wen Junhui" data-description="Nome Artístico: Jun <br>Data de Nascimento: 10/06/1996<br>Cidade Natal: Shenzhen (China)<br>Posição: Vocal, dançarino e ator<br>Altura: 1,82<br>Unit: Performance <br>Tipo sanguíneo: B">
                            <img id="integrantes" src="svt/img/int/jun.jpg" alt="Junhui">
                            <div class="hover-mask">
                                <h3>Jun</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix app">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/hoshi2.jpg.jpg" data-title="Kwon Soonyoung" data-description="Nome Artístico: Hoshi <br>Data de Nascimento: 15/06/1996 <br>Cidade Natal: Namyangju-si, Gyeonggi-do<br>Posição: Vocal, líder da unit performance, dançarino e coreógrafo<br>Altura: 1,77<br>Unit: Performance<br>Tipo sanguíneo: B">
                            <img id="integrantes" src="svt/img/int/hoshi.jpg" alt="Soonyoung">
                            <div class="hover-mask">
                                <h3>Hoshi</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix app">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/ww1.jpg" data-title="Jeon Wonwoo" data-description="Nome Artístico: Wonwoo<br>Data de Nascimento: 17/07/1996<br>Cidade Natal: Changwon, Gyeongsangnam<br>Posição: Rapper<br>Altura: 1,82<br>Unit: Hip Hop<br>Tipo sanguíneo: A">
                            <img id="integrantes" src="svt/img/int/wonwoo.jpg" alt="Wonwoo">
                            <div class="hover-mask">
                                <h3>Wonwoo</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>	
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/wz1.jpg" data-title="Lee Jihoon" data-description="Nome Artístico: Woozi <br>Data de Nascimento: 22/11/1996 <br>Cidade Natal: Busan<br>Posição: Vocalista, produtor, dançarino e líder da Vocal Unit<br>Altura: 1,64<brUnit: Vocal<br>Tipo Sanguíneo">
                            <img id="integrantes" src="svt/img/int/woozi.jpg" alt="Jihoon">
                            <div class="hover-mask">
                                <h3>Woozi</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>	
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/dk2.jpg" data-title="Lee Seokmin" data-description="Nome Artístico: DK <br>Data de Nascimento: : 18/02/1997 <br>Cidade Natal: Yongi-si, Gyeonggi-do<br>Posição: Vocal principal<br>Altura: 1,79<br>Unit: Vocal<br>Tipo sanguíneo: O-">
                            <img id="integrantes" src="svt/img/int/dk.jpg" alt="Seokmin">
                            <div class="hover-mask">
                                <h3>DK</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>	
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/mg1.jpg" data-title="Kim Mingyu" data-description="Nome Artístico: Mingyu <br>Data de Nascimento: 06/04/1997 <br>Cidade Natal: Anyang-si, Gyeonggi-do<br>Posição: Rapper e visual<br>Altura: 1,85<br>Unit: Hip Hop<br>Tipo sanguíneo: B">
                            <img id="integrantes" src="svt/img/int/mingyu.jpg" alt="Mingyu">
                            <div class="hover-mask">
                                <h3>Mingyu</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>	
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/the81.jpg" data-title="Xu Minghao" data-description="Nome Artístico: The8 <br>Nome Coreano: Seo Myung Ho<br>Data de Nascimento: 07/11/1997 <br>Cidade Natal: Anshan, Liaoning (China)<br>Posição: Performance, vocal e dançarino<br>Altura: 1,75<br>Unit: Performance<br>Tipo sanguíneo: O">
                            <img id="integrantes" src="svt/img/int/the8.jpg" alt="Minghao">
                            <div class="hover-mask">
                                <h3>The8</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>	
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/sg1.jpg-large" data-title="Boo Seungkwan" data-description="Nome Artístico: Seungkwan <br>Data de Nascimento: 16/01/1998 <br>Cidade Natal: Jeju-do.<br>Posição: Vocal principal<br>Altura: 1,74<br>Unit: Vocal<br>Tipo sanguíneo: B">
                            <img id="integrantes" src="svt/img/int/seungkwan.jpg" alt="Seungkwan">
                            <div class="hover-mask">
                                <h3>Seungkwan</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>	
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/vn3.jpg" data-title="Choi Hasol" data-description="Nome Artístico: Vernon <br>Data de Nascimento: 18/02/1998 <br>Cidade Natal: New York<br>Posição: Rapper principal<br>Altura: 1,75<br>Unit: Hip Hop<br>Tipo sanguíneo: A">
                            <img id="integrantes" src="svt/img/int/vernon.jpg" alt="Hansol">
                            <div class="hover-mask">
                                <h3>Vernon</h3>
                                <span>
                                    <i class="fa fa-plus fa-2x"></i>
                                </span>
                            </div>	
                        </a>
                    </li>
                    <!-- /single portfolio item -->

                    <!-- single portfolio item -->
                    <li class="mix web">
                        <a href="javascript:void(0)" data-largesrc="svt/img/int/dino12.jpg" data-title="Lee Chan" data-description="Nome Artístico: Dino <br>Data de Nascimento: 11/02/1999 <br>Cidade Natal: Insan-si, Jeollakbu-do<br>Posição: Maknae, rapper e dançarino<br>Altura: 1,70<br>Unit: Performance<br>Tipo sanguíneo: A">
                            <img id="integrantes" src="svt/img/int/dino.jpg" alt="Chan">
                            <div class="hover-mask">
                                <h3>Dino</h3>
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
                                    <img src="svt/img/discografia/17c.jpg" alt="amazing caves coverimage" class="img-responsive">
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
                                    <img src="svt/img/discografia/al1.jpg" alt="amazing caves coverimage" class="img-responsive">
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
                                    <img src="svt/img/discografia/bb.jpg" alt="amazing caves coverimage" class="img-responsive">
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
                                    <img src="svt/img/discografia/gs.jpg" alt="amazing caves coverimage" class="img-responsive">
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
                                    <img src="svt/img/discografia/ll.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>DARK&WILD</h3>
                                    <p>Full-Álbum<br>Data de lançamento: 19.08.14<br>Gênero: Rap, Hip-Hop & K-Pop<br><b><h3>Faixas:</h3></b><br>Intro: What Am I To You<br>Danger<br>War of Hormone<br>Hip-Hop Lover<br>Let Me Know<br>Rain<br>BTS Cypher PT.3: KILLER (Feat. Supreme Boi)<br>Interlude: What Are You Doing<br>Would You Turn Off Your Phone<br>Blanket Kick<br>24/7=Heaven<br>Look Here<br>2nd Grade<br>Outro: Does That Make Sense?</p>
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
                                <img id="logoG" src="svt/img/logo.png" alt="Meghna" /> 
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
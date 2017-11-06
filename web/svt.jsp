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

                    <a class="navbar-brand" href="grupos.jsp">
                        <h1 id="logo">
                            <img style="height: 62.9px;" src="img/morep.png" alt="Meghna" />
                        </h1>
                    </a>
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
                                    <p>O grupo é dividido em 3 times: Vocal Team (Jeonghan, Joshua, Woozi, DK, Seungkwan), Hip Hop Team (S.Coups, Wonwoo, Mingyu, Vernon) e Performance Team (Jun, Hoshi, THE8, Dino). Por isso, a explicação dada para o nome SEVENTEEN (17) é de que o grupo é formado por 13 membros + 3 times + 1 equipe total.</p>
                                    <p>Inicialmente, o grupo era na verdade o “Tempest” (S.Coups, Doyoon, Jihoon, Yusang e Youngwoon) que realizaria um debut em 2012, porém Yusang e Youngwoon deixaram a empresa e então os membros restantes foram movidos para o SEVENTEEN.</p>
                                    <p>Em Dezembro de 2012, a companhia anunciou o lançamento da “SEVENTEEN TV” um programa pré-debut pelo qual os fãs poderiam avaliar o treinamento dos membros e conhecê-los melhor.</p>
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
                                    <p>Em Janeiro de 2013 o programa “SEVENTEEN TV” foi ao ar e a Pledis informou que os garotos que apareceram no primeiro episódio não seriam os membros finais do grupo e que eram todos apenas trainees.</p>
                                    <p>Os membros permanentes seriam escolhidos de acordo com a opinião dos fãs. Houve 5 temporadas e durante o processo 3 membros deixaram o grupo por motivos não divulgados. Permaneceram no grupo então os 13 membros: S.Coups, Jeonghan, Joshua, Jun, Hoshi, Wonwoo,Woozi, DK, Mingyu, The8, Seungkwan, Vernon e Dino.</p>
                                    <p>Em abril de 2015 foi anunciado o “Seventeen Project: Debut Big Plan”, um programa onde o SEVENTEEN deveria completar missões para arrecadar 1000 fãs e ter como recompensa um showcase ao vivo de uma hora de duração (algo nunca feito antes). Eles tiveram sucesso nas missões e conseguiram sua recompensa! Tiveram seu debut showcase no dia 26 de Maio e seu debut oficial em um programa de música no dia seguinte, 27 de Maio no Show Champion. O MV de sua faixa título “Adore U” foi lançado no dia 29, concomitantemente com seu primeiro mini-álbum: 17 Carat.</p>

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
                            <p><b>2016</b><br>Seventeen - MBC Music Star Award<br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->


                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="400ms">
                        <div class="service-block text-center">
                            <h3>Golden Disk Awards</h3>
                            <p><b>2016</b><br>Seventeen - Rookie of the Year<br><b>2017</b><br>"Love & Letter" - Disk Bonsang<br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="200ms">
                        <div class="service-block text-center">
                            <h3>Seoul Music Awards</h3>
                            <p><b>2015</b><br>Seventeen - Best New Male Artist<br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="400ms">
                        <div class="service-block text-center">
                            <h3>Gaon Chart K-Pop Awards</h3>
                            <p><b>2016</b><br>Seventeen - World Rookie Award<br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="200ms">
                        <div class="service-block text-center">
                            <h3>Mnet Asian Music Awards</h3>
                            <p><b>2015</b><br>Seventeen - Best World Performer<br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio"class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Asia Model Festival Awards</h3>
                            <p><b>2016</b><br>Seventeen - Popular Singer Award<br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Asia Artist Awards</h3>
                            <p><b>2016</b><br>Seventeen - Best Star Award, Singer<br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->
                    
                    <!-- Single Service Item -->
                    <div style="opacity: 0;">
                        <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="service-block text-center kill-margin-bottom">
                                <h3> </h3>
                                <p><br><br><br><br></p>
                            </div>
                        </article>
                    </div>
                    <!-- End Single Service Item -->
                    
                    <!-- Single Service Item -->
                    <div style="opacity: 0;">
                        <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="service-block text-center kill-margin-bottom">
                                <h3> </h3>
                                <p><br><br><br><br><br></p>
                            </div>
                        </article>
                    </div>
                    <!-- End Single Service Item -->

                    <br>
                    
                    <br><h2>Outros Prêmios</h2><br>

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>SBS PopAsia Awards</h3>
                            <p><b>2015</b><br>Seventeen - Best Rookie Group<br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Hello Asia K-Pop Awards</h3>
                            <p><b>2015</b><br>Seventeen - Best Newcomer<br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>MBC Show Champion Awards</h3>
                            <p><b>2015</b><br>Seventeen - Most Appearances<br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>11th Soompi Awards</h3>
                            <p><b>2015</b><br>Seventeen - Rookie Of The Year<br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>7th Philippine Kpop Awards</h3>
                            <p><b>2015</b><br>Seventeen - Rookie Award<br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->
                    
                    <!-- Single Service Item -->
                    <div style="opacity: 0;">
                        <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="service-block text-center kill-margin-bottom">
                                <h3> </h3>
                                <p><br><br><br><br><br><br><br></p>
                            </div>
                        </article>
                    </div>
                    <!-- End Single Service Item -->

                    <br><h2>Premiações em Programas de Música</h2><br>

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>M! Countdown</h3>
                            <p><b>2016</b><br>"Boom Boom" - 15 de Dezembro<br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Music Bank</h3>
                            <p><b>2016</b><br>"Boom Boom" - 16 de Dezembro<br><br><br><br></p>
                        </div>
                    </article>
                    <!-- End Single Service Item -->

                    <!-- Single Service Item -->
                    <article id="premio" class="col-md-4 col-sm-6 col-xs-12 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="600ms">
                        <div class="service-block text-center kill-margin-bottom">
                            <h3>Show Champion</h3>
                            <p><b>2016</b><br>"Pretty U" - 04 e 11 de Maio<br>"Boom Boom" - 21 de dezembro<br><br><br></p>
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
                                    <h3>17 Carat</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 29.05.15<br><b><h3>Faixas:</h3></b><br>Shining Diamond<br>Adore U<br>Ah Yeah<br>Jam Jam<br>20<br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->

                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="600ms">
                            <div class="note kill-margin-bottom">
                                <div class="media-wrapper">
                                    <img src="svt/img/discografia/bb.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>
                                <div class="excerpt">
                                    <h3>Boys Be</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 10.09.15<br><b><h3>Faixas:</h3></b><br>Fronting<br>Mansae<br>When I Grow Up<br>OMG<br>Rock<br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- end single blog post -->


                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 clearfix wow fadeInUp" data-wow-duration="500ms">
                            <div class="note">
                                <div class="media-wrapper">
                                    <img src="svt/img/discografia/gs.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>

                                <div class="excerpt">
                                    <h3>Going Seventeen</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 05.12.16<br><b><h3>Faixas:</h3></b><br>Intro: Skool Luv Affair<br>Boy In Luv<br>Skit: Soulmate<br>Where Did You Come From<br>Just One Day<br>Tomorrow<br>BTS Cypher PT.2: Triptych<br>Spine Breaker<br>Jump<br>Outro: Propose<br><br><br><br><br></p>
                                </div>
                            </div>						
                        </article>
                        <!-- /single blog post -->


                        <!-- single blog post -->
                        <article id="disco" class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="400ms">
                            <div class="note">
                                <div class="media-wrapper">
                                    <img src="svt/img/discografia/al1.jpg" alt="amazing caves coverimage" class="img-responsive">
                                </div>

                                <div class="excerpt">
                                    <h3>Al1</h3>
                                    <p>Mini-Álbum<br>Data de lançamento: 22.05.17<br><b><h3>Faixas:</h3></b><br>Miss Right<br>I Like It (Slow Jam Remix)<br>Intro: Skool Luv Affair<br>Boy In Luv<br>Skit: Soulmate<br>Where Did You Come From<br>Just One Day<br>Tomorrow<br>BTS Cypher PT.2: Triptych<br>Spine Breaker<br>Jump<br>Outro: Propose<br><br></p>

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
                                    <h3>Love & Letter (Repackage Edition)</h3>
                                    <p>Full-Álbum<br>Data de lançamento: 25.04.2016<br><b><h3>Faixas:</h3></b><br>No F.U.N.<br>Very Nice<br>Healing<br>Simple<br>Space<br>Chuck<br>Pretty U<br>Still Lonely<br>Hit Song<br>Say Yes<br>Drift Away<br>Adore U (Vocal Team Ver.)<br>Monday to Saturday (HipHop Team)<br>Shining Diamond (Performance Team)<br>Love Letter<br></p>
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
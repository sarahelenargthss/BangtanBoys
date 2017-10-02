<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kpop Groups</title>

        <style>
            #slide{
                background: url('img/grupos/e.jpg') fixed;
                background-size: 100%;
                width: 100%;
                height: 450px;
            }
            #slide1{
                background: url('img/grupos/b.jpg') fixed;
                background-size: 100%;
                width: 100%;
                height: 450px;
            }
            #slide2{
                background: url('img/grupos/mt.jpg') fixed;
                background-size: 100%;
                width: 100%;
                height: 450px;
            }
            #slide3{
                background: url('img/grupos/kawaii.gif') fixed;
                background-size: 100%;
                width: 100%;
                height: 450px;
            }
            .clearfix {
                overflow: auto;
            }

            a , a:hover, a:focus{
                color:#ffffff;
            }


            h2{
                color: #ffffff;
                font: monospace;
                float: top;
                margin-top: 10px;
                padding-top: 196.875px;
                font: 50px monospace;
            }
        </style>
    </head>

    <body>
        <div id="slide">
            <div style="padding-left: 45%; background: rgba(0,0,0,0.6); width: auto; height: 450px; color: white; ">
                <a href='controlador?op=verPagina&pag=bts.jsp'><h2>EXO</h2></a>
            </div>
        </div>

        <div id="slide1">
            <div style="padding-left: 40%; background: rgba(0,0,0,0.6); width: auto; height: 450px; color: white; ">
                <a href='controlador?op=verPagina&pag=bts.jsp'> <h2>BOYFRIEND</h2></a>
            </div>
        </div>
        <div id="slide2">
            <div style="padding-left: 44%; background: rgba(0,0,0,0.6); width: auto; height: 450px; color: white; ">
                <a href='controlador?op=verPagina&pag=bts.jsp'> <h2>JJCC</h2></a>
            </div>
        </div>
        <div id="slide3">
            <div style="padding-left: 45%; background: rgba(0,0,0,0.6); width: auto; height: 450px; color: white; ">
                <a href='controlador?op=verPagina&pag=bts.jsp'>  <h2>BTS</h2></a>
            </div>
        </div>
    </body>
</html>

<%-- 
    Document   : telalogin
    Created on : 02/06/2017, 15:56:25
    Author     : Edson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <script src="https://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


        <link rel="stylesheet" href="css/style.css">



    </head>
    <body>
        <div class="login">
            <header class="header">
                <span class="text">LOGIN</span>
                <span class="loader"></span>
            </header>
            <form class="form" action="controlador" method="post">  
                <input type="hidden" name="op" value="fazlogin">
                <input class="input" type="text" name="user" placeholder="Username">
                <input class="input" type="password" name="senha" placeholder="Password">
                <button class="btn" type="submit"></button>
              
            </form>
        </div>
        <%
            HttpSession ses = request.getSession(true);
        %>
        <a href="controlador?op=verPagina&pag=<%out.println(ses.getAttribute("grupo"));%>.jsp">
            <img id="voltar" src="img/back.png"  />  
        </a>
        <div id="logout">
              <% try {
                        Boolean login = (Boolean) ses.getAttribute("logado");
                        if ((login != null) && (login)) {
                %>
                <div style="border: 1px #269abc; margin-top: 80px; margin-right: 5px;"><a href="controlador?op=fazlogout">Logout</a></div>
                <%      }
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }%>  
        </div>

        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/bts.js"></script>

    </body>
</html>

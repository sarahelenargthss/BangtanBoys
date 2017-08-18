<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operação executada</title>
        <link rel="stylesheet" href="css/gp.css">
    </head>
    <body>

        <%
            HttpSession ses = request.getSession(true);
            String msg = (String) ses.getAttribute("mensagem");
            String imagem = (String) ses.getAttribute("idImagem");
        %>

        <div id="sucesso">
            <p>
                <b><h3><%=msg%></h3></b>
            </p>
        </div>

        <br><br><br><br><br>
        <a href="controlador?op=voltarPagina" id="coelho" ><img src="<%=imagem%>"/> </a>

    </body>
</html>

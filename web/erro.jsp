<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Problema na execução da operação</title>
        <link rel="stylesheet" href="css/gp.css">
    </head>
    <body>
        <%
            HttpSession ses = request.getSession(true);
            String msg = (String) ses.getAttribute("mensagem");
        %>

        <div id="sucesso">
            <p>
                <b><%=msg%></b>
            </p>
        </div>

        <br><br><br><br><br>
        <a href="controlador?op=sucesso" id="coelho" ><img src="img/logos/erro.gif"/> </a>
    </body>
</html>

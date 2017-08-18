<%@page import="modelo.Programa"%>
<%@page import="modelo.Filmografia"%>
<%@page import="dao.xml.ProgramaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> <head> <title>Gerenciar Páginas</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/gp.css">

    </head>
    <body>
        <div style="padding-left: 35%; margin-bottom: 5%;">
            <h1>Gerenciar <span>Páginas</span><img id="kiss" src="img/logos/kiss.gif"/></h1>
        </div>
        <br>


        <form method="post" action="controlador" role="form">
            <table id="divformulario">  
                <input type="hidden" name="op" value="incluiPrograma">                    
                <tr><td><h1 style="padding-left: 50%;">Filmografia</h1></td></tr>
                <tr><p><td><label> Título</label></td>
                <td><input type="text" name="nome" placeholder="Nome" /> </td></p></tr>
                <tr><p><td><label for="username"> Canal </label></td>
                <td><input type="text" name="canal" id="cnl" placeholder="Canal" /> </td></p></tr>
                <tr><p><td><label for="username"> Episódios</label></td>
                <td><input type="text" name="episodio" id="eps" placeholder="Episódios" /></td></p></tr>
                <tr><p><td><label for="username"> Membros</label></td>
                <td><input type="text" name="membros" id="mbs" placeholder="Membros" /></td></p></tr>
                <tr><p><td><label> Ano</label></td>
                <td><input type="text" name="ano" id="ano" placeholder="Ano" /></td></p></tr>
                <tr>
                    <td><p><input name="tipo" value=programa checked="true" id="prv" type="radio" /><label>Programa de Variedade</label></p></td>
                    <td><p><input name="tipo" value=drama checked="true" id="drm" type="radio" /><label for="test2">Drama</label></p></td>
                </tr>
                <tr><td> <input type="submit" id="botao" value="Salvar" /></td></tr>
            </table>

        </form>


        <div id="divfilmografia">
            <% ProgramaDAO pdao = new ProgramaDAO();
                Filmografia flmg = new Filmografia();
                flmg.setFilmografia(pdao.carregaListaDeProgramas());
                //quebra de linha entre links nao funcionou
                for (Programa p : flmg.getFilmografia()) {
                    %><a href=
                       <% p.getCodPrograma();%>>
                        <%out.println(p.getNome() + " / " + p.getEpisodios());%></a>
                          <br><%
                }%> 
        </div>

    </body>
</html>
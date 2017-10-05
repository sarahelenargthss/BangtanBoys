<%@page import="modelo.Programa"%>
<%@page import="modelo.Filmografia"%>
<%@page import="dao.sql.ProgramaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> <head> <title>Gerenciar Páginas</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/gp.css">
        
        <script>
            $(document).ready{
                function(){
                    $("#semAcesso").click{
                        
                    }
                }
            }
        </script>

    </head>
    <body>
        <% try {
                HttpSession ses = request.getSession(true);
                Boolean login = (Boolean) ses.getAttribute("logado");
                if (login) {
                    ses.setAttribute("mensagem",
                            "Algum campo foi preenchido incorretamente!");
        %>

        <div style="padding-left: 35%; margin-bottom: 5%;">
            <h1>Gerenciar <span>Páginas</span><a href="controlador?op=voltarMenu" id="coelho" ><img id="kiss" src="img/logos/kiss.gif"/></a></h1>
        </div>
        <br>


        <form method="post" action="controlador" role="form">
            <table id="divformulario">  
                <input type="hidden" name="op" value="incluiPrograma">                    
                <tr><td><h2 style="padding-left: 50%;">Filmografia</h2></td></tr>
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
                flmg.setFilmografia(pdao.carregaListaDeProgramas((String)ses.getAttribute("grupo")));
                //quebra de linha entre links nao funcionou
                for (Programa p : flmg.getFilmografia()) {
            %><a href=
               <% p.getCodPrograma();%>>
                <%out.println(p.getNome() + " / " + p.getEpisodios());%></a>
            <br><%
                }%> 
        </div>

        <%      } else { %>

        <div id="sucesso">
            <p>
                <b><h3>Você não pode acessar essa página sem estar logado.</h3></b>
            </p>
        </div>
        
        <br><br><br>
        <a href="bts.jsp" id="linkVoltar" > Voltar </a>

        <%}
            } catch (Exception e) {
                out.println(e.getMessage());
            }%>  


    </body>
</html>
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import dao.ProgramaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Filmografia;
import modelo.Programa;

/**
 *
 * @author informatica
 */
@WebServlet(name = "controlador", urlPatterns = {"/controlador"})
public class controlador extends HttpServlet {

    private RequestDispatcher rd = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //busca a agenda da sessao
            String op = request.getParameter("op");
            if (op.equals("incluiPrograma")) {
                // connecta a sessao
                HttpSession ses = request.getSession(true);
                // busca a agenda
                Filmografia flmg = (Filmografia) ses.getAttribute("filmografia");
                // busca os campos da pessoa
                String nome = request.getParameter("nome");
                String membros = request.getParameter("membros");
                String emissora = request.getParameter("canal");
                String episodios = request.getParameter("episodio");
                int ano = Integer.valueOf(request.getParameter("ano"));
                String tipo = request.getParameter("tipo");
                // algum campo foi deixado em branco?
                if ((nome.equals("")) || (membros.equals(""))
                        || (emissora.equals("")) || (ano < 2013)) {
                    // cria a mensagem de erro
                    ses.setAttribute("mensagem",
                            "Algum campo não foi preenchido");
                    // encaminha pra tela de erro
                    rd = request.getRequestDispatcher("erro.jsp");
                    rd.forward(request, response);
                } else {
                    // adiciona na agenda
                    flmg.addPrograma(new Programa(nome, episodios, membros, emissora, ano));
                    // insere a pessoa no arquivo de dados
                    if (new ProgramaDAO().inserePrograma(flmg.getFilmografia())) {
                        // atualiza a agenda na sessao
                        ses.setAttribute("filmografia", flmg);
                        // cria a mensagem de sucesso
                        ses.setAttribute("mensagem",
                                "O programa foi inserido na Filmografia");
                        // encaminha pra tela de sucesso
                        rd = request.getRequestDispatcher("sucesso.jsp");
                        rd.forward(request, response);
                    } else {
                        // cria a mensagem de erro
                        ses.setAttribute("mensagem",
                                "Erro ao inserir programa!");
                        // encaminha pra tela de erro
                        rd = request.getRequestDispatcher("erro.jsp");
                        rd.forward(request, response);
                    }
                }
            } else if (op.equals("fazlogin")) {
                String nome = request.getParameter("user");
                String senha = request.getParameter("senha");

                if (nome.equals("jeonyijunparkjaehyun") && senha.equals("011307061015")) {
                    HttpSession ses = request.getSession(true);
                    ses.setAttribute("logado", true);

                    rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
                } else {
                    out.println("Login incorreto!");
                }

            } else if (op.equals("fazlogout")) {
                HttpSession ses = request.getSession(true);
                ses.setAttribute("logado", false);

                rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

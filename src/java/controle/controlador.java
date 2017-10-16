package controle;

import dao.sql.ProgramaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Programa;

@WebServlet(name = "controlador", urlPatterns = {"/controlador"})
public class controlador extends HttpServlet {

    private RequestDispatcher rd = null;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try {
                    HttpSession ses = request.getSession(true);
                String op = request.getParameter("op");
                if (op.equals("incluiPrograma")) {
                    ses = request.getSession(true);
                    ProgramaDAO pdao = new ProgramaDAO();
                    boolean erro = false;
                    Programa p = new Programa();
                    try {
                        p.setNome(request.getParameter("nome"));
                        p.setMembros(request.getParameter("membros"));
                        p.setEmissora(request.getParameter("canal"));
                        p.setEpisodios(request.getParameter("episodio"));
                        p.setAno(Integer.parseInt(request.getParameter("ano")));
                        p.setTipo(request.getParameter("tipo"));
                        p.setGrupo((String)ses.getAttribute("grupo"));
                    } catch (Exception e) {
                        erro = true;
                    }
                    if (erro) {
                        ses.setAttribute("idImagem",
                                "img/logos/erro.gif");
                        ses.setAttribute("mensagem",
                                "Algum campo foi preenchido incorretamente!");
                        rd = request.getRequestDispatcher("mensagem.jsp");
                        rd.forward(request, response);
                    } else {
                        if (((p.getNome().equals("")) || (p.getMembros().equals(""))
                                || (p.getEmissora().equals("")) || (p.getAno() < 2013) || (p.getEpisodios().equals(""))) || (pdao.verificaPrograma(p) == 3 || pdao.verificaPrograma(p) == 2)) {
                            ses.setAttribute("idImagem",
                                    "img/logos/erro.gif");
                            ses.setAttribute("mensagem",
                                    "Erro ao inserir programa!!");
                            rd = request.getRequestDispatcher("mensagem.jsp");
                            rd.forward(request, response);
                        } else {

                            /*    XML
                          Random rdm = new Random(1000);

                        Filmografia flmg = new Filmografia();
                        flmg.setFilmografia(pdao.carregaListaDeProgramas());
                        int cod1 = 0;
                        int cod = 0;
                        do {
                            cod = rdm.nextInt();
                            for (Programa b : flmg.getFilmografia()) {
                                cod1 = b.getCodPrograma();
                            }
                        } while (cod == cod1);

                        if (new ProgramaDAO().inserePrograma(p)) {         
                             */
                            if (pdao.inserePrograma(p)) {

                                ses.setAttribute("idImagem",
                                        "img/logos/sucesso1.gif");
                                ses.setAttribute("mensagem",
                                        "O programa foi inserido na Filmografia");
                                // encaminha pra tela de sucesso
                                rd = request.getRequestDispatcher("mensagem.jsp");
                                rd.forward(request, response);
                            } else {
                                // cria a mensagem de erro
                                ses.setAttribute("idImagem",
                                        "img/logos/erro.gif");
                                ses.setAttribute("mensagem",
                                        "Erro ao inserir programa!");
                                // encaminha pra tela de erro
                                rd = request.getRequestDispatcher("mensagem.jsp");
                                rd.forward(request, response);
                            }
                        }
                    }
                } else if (op.equals("fazlogin")) {
                    String nome = request.getParameter("user");
                    String senha = request.getParameter("senha");

                    if (nome.equals("jeonyijunparkjaehyun") && senha.equals("011307061015")) {
                        ses = request.getSession(true);
                        ses.setAttribute("logado", true);

                        rd = request.getRequestDispatcher(ses.getAttribute("grupo") + ".jsp");
                        rd.forward(request, response);
                    } else {
                        out.println("Login incorreto!");
                    }

                } else if (op.equals("fazlogout")) {
                    ses = request.getSession(true);
                    ses.setAttribute("logado", false);

                    rd = request.getRequestDispatcher(ses.getAttribute("grupo") + ".jsp");
                    rd.forward(request, response);
                } else if (op.equals("voltarPagina")) {
                    rd = request.getRequestDispatcher("gerenciarPagina.jsp");
                    rd.forward(request, response);
                } else if (op.equals("voltarMenu")) {
                    rd = request.getRequestDispatcher(ses.getAttribute("grupo") + ".jsp");
                    rd.forward(request, response);
                } else if (op.equals("verPagina")) {
                    String pag = request.getParameter("pag");
                    rd = request.getRequestDispatcher(pag);
                    rd.forward(request, response);
                } else {
                    out.println("Ação desconhecida do controlador: " + op);
                }
            }catch(Exception e){
                out.println("Erro no controlador: " + e.getMessage());
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

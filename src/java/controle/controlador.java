package controle;

import dao.xml.ProgramaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Filmografia;
import modelo.Programa;

@WebServlet(name = "controlador", urlPatterns = {"/controlador"})
public class controlador extends HttpServlet {

    private RequestDispatcher rd = null;

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
                ProgramaDAO pdao = new ProgramaDAO();
                //Filmografia flmg = (Filmografia) ses.getAttribute("filmografia");
                // busca os campos da pessoa
                boolean erro = false;
                Programa p = new Programa();
                try {
                    p.setNome(request.getParameter("nome"));
                    p.setMembros(request.getParameter("membros"));
                    p.setEmissora(request.getParameter("canal"));
                    p.setEpisodios(request.getParameter("episodio"));
                    p.setAno(Integer.parseInt(request.getParameter("ano")));
                    p.setTipo(request.getParameter("tipo"));
                } catch (Exception e) {
                    erro = true;
                }
                // algum campo foi deixado em branco?
                if (erro) {
                    // cria a mensagem de erro
                    ses.setAttribute("idImagem",
                            "img/logos/erro.gif");
                    ses.setAttribute("mensagem",
                            "Algum campo foi preenchido incorretamente!");
                    // encaminha pra tela de erro
                    rd = request.getRequestDispatcher("mensagem.jsp");
                    rd.forward(request, response);
                } else {
                    if (((p.getNome().equals("")) || (p.getMembros().equals(""))
                            || (p.getEmissora().equals("")) || (p.getAno() < 2013)) /*|| (pDAO.verificaPrograma)*/) {
                        // cria a mensagem de erro
                        ses.setAttribute("idImagem",
                                "img/logos/erro.gif");
                        ses.setAttribute("mensagem",
                                "Algum campo foi preenchido incorretamente!");
                        // encaminha pra tela de erro
                        rd = request.getRequestDispatcher("mensagem.jsp");
                        rd.forward(request, response);
                    } else {
                        // adiciona na agenda
                        //flmg.addPrograma(new Programa(nome, episodios, membros, emissora, ano));
                        // insere a pessoa no arquivo de dados
                        
                       
                        
                        
                  //apagar xml
                        
                        
                        
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
                        
                 //termina apagar xml
                            
                             
                        /*
                        
                        ProgramaDAO pDAO = new ProgramaDAO();
                        if(pDAO.inserePrograma(p)){
                        
                        */
                            
                            // atualiza a agenda na sessao
                            //ses.setAttribute("filmografia", flmg);
                            // cria a mensagem de sucesso
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
            } else if (op.equals("voltarPagina")) {
                rd = request.getRequestDispatcher("gerenciarPagina.jsp");
                rd.forward(request, response);
            }else if (op.equals("voltarMenu")) {
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

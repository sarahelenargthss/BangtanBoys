package teste;

import dao.xml.ProgramaDAO;
import modelo.Programa;

public class TestaDAO {

    public static void main(String[] args) {
        
        ProgramaDAO pdao = new ProgramaDAO();
        
        if (pdao.inserePrograma(new Programa("oi", "episodio 1", "joao e maria", "globo", 2013, 0))) {
            System.out.println("programa inserido");
        } else {
            System.out.println("erro ao inserir programa");
        }
                    
        System.out.println("fim do teste do programadao");
        
    }
    
}

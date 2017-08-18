/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.xml;

import java.util.ArrayList;
import modelo.Programa;

/**
 *
 * @author informatica
 */
public class Inicializa {

    public static void main(String[] args) {
        
        ArrayList<Programa> vazia = new ArrayList();
        ProgramaDAO pdao=  new ProgramaDAO();
        pdao.salvarListaDeProgramas(vazia);
        System.out.println("Arquivo XML criado!");
        
    }
    
}

package dao.xml;


import modelo.Programa;
import java.beans.XMLDecoder;
import java.beans.XMLEncoder;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;

public class ProgramaDAO {
    static final String ARQUIVO_FILMOGRAFIA = System.getProperty("user.home") + "/filmografia.xml";
    
    public boolean atualizaFilmografia(Programa programa) {
        FileOutputStream fout = null;
        try {
            // cria um ponteiro para o arquivo de dados
            fout = new FileOutputStream(ARQUIVO_FILMOGRAFIA);
            // cria um stream de saída
            BufferedOutputStream bos = new BufferedOutputStream(fout);
            // codifica os dados para XML
            XMLEncoder xmlEncoder = new XMLEncoder(bos);
            // armazena a lista de pessoas
            xmlEncoder.writeObject(programa);
            // fecha o arquivo
            xmlEncoder.close();
            // sucesso na operacao
            return true;
        } catch (Exception ex) {
            System.out.println("erro ao gravar filmografia " + ex.getMessage());
            // falha na operacao
            return false;
        }
    }
    
    
    public boolean inserePrograma(Programa novo) {
        ArrayList<Programa> programas = carregaListaDeProgramas();
        programas.add(novo);
        return salvarListaDeProgramas(programas);
    }
    
    
    public boolean salvarListaDeProgramas(ArrayList<Programa> programas) {
        try {
            FileOutputStream fout = new FileOutputStream(ARQUIVO_FILMOGRAFIA);
            BufferedOutputStream bos = new BufferedOutputStream(fout);
            XMLEncoder xmlenc = new XMLEncoder(bos);
            xmlenc.writeObject(programas);
            xmlenc.close();
            return true;
        } catch (Exception ex) {
            System.out.println("ERRO: " + ex.getMessage());
            return false;
        }
    }
    
    public ArrayList<Programa> carregaListaDeProgramas() {
        // cria uma lista de pessoas vazia
        ArrayList<Programa> programas = new ArrayList();
        try {
            // cria um ponteiro para o arquivo de dados a ser lido
            FileInputStream fis = new FileInputStream(ARQUIVO_FILMOGRAFIA);
            // cria um ponteiro para o fluxo (stream) de leitura de dados
            BufferedInputStream bis = new BufferedInputStream(fis);
            // decodifica os dados XML
            XMLDecoder xmlDecoder = new XMLDecoder(bis);
            // obtem os dados, convertendo-os para uma lista de pessoas
            programas = (ArrayList<Programa>) xmlDecoder.readObject();
        } catch (Exception ex) {
            System.out.println("erro ao ler pessoas: " + ex.getMessage());
        }
        // retorna a lista de pessoas
        return programas;
    }
}

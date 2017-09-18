package dao.sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.Programa;

public class ProgramaDAO {

    public PreparedStatement retornaConexao(String sql) {
        //retorna a coneão com o BD
        String str = "jdbc:mysql://localhost:3306/bts?" + "user=root&password=alunoifc";
        PreparedStatement p;
        try {           
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            Connection conn = (Connection) DriverManager.getConnection(str);
            p = conn.prepareStatement(sql);
        } catch (SQLException e) {
            return null;
        }
        return p;
    }
    
    public int verificaPrograma(Programa programa){
        try{
            PreparedStatement p = retornaConexao("select titulo from filmografia where titulo = ? and episodios = ?;");
            p.setString(1, programa.getNome());
            p.setString(2, programa.getEpisodios());
            ResultSet rs = p.executeQuery();
             if (rs.next()) {
                if (! rs.getString(1).equals("")){
                    return 2;
                }
            }
        }catch (SQLException e){
            return 3;
        }
        return 1;
    }
    
    public boolean inserePrograma(Programa programa){
        try {
            PreparedStatement p = retornaConexao("insert into filmografia (titulo, canal, episodios, membros, ano, tipo) values(?, ?, ?, ?, ?, ?);");
            p.setString(1, programa.getNome());
            p.setString(2, programa.getEmissora());
            p.setString(3, programa.getEpisodios());
            p.setString(4, programa.getMembros());
            p.setInt(5, programa.getAno());
            p.setString(6, programa.getTipo());
            p.execute();
        } catch (SQLException e) {
            return false;
        }
        return true;
    }
    
    public ArrayList<Programa> carregaListaDeProgramas() {
        ArrayList<Programa> programas = new ArrayList();
        try{
            PreparedStatement p = retornaConexao("select * from filmografia;");
            ResultSet rs = p.executeQuery();
             while (rs.next()) {
                Programa programa = new Programa(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7));
                programas.add(programa);
            }
        }catch (SQLException e) {
            return null;
        }
        return programas;
    }

}

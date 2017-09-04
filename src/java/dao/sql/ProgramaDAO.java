package dao.sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import modelo.Programa;

public class ProgramaDAO {

    public PreparedStatement retornaConexao(String sql) {
        //retorna a coneão com o BD
        String str = "jdbc:mysql://localhost:3306/bts?" + "user=root&password=root";
        PreparedStatement p;
        try {
            Connection conn = (Connection) DriverManager.getConnection(str);
            p = conn.prepareStatement(sql);
        } catch (SQLException e) {
            return null;
        }
        return p;
    }
    
    public boolean inserePrograma(Programa programa){
        try {
            PreparedStatement p = retornaConexao("insert into programa (titulo, canal, episodios, membros, ano, tipo) values(?, ?, ?, ?, ?, ?);");
            p.setString(1, programa.getNome());
            p.setString(2, programa.getEmissora());
            p.setString(3, programa.getEpisodios());
            p.setString(4, programa.getMembros());
            p.setInt(6, programa.getAno());
            p.setString(5, programa.getTipo());
            p.execute();
        } catch (SQLException e) {
            return false;
        }
        return true;
    }

}

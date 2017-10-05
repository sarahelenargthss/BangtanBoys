package modelo;

public class Programa {

    String nome;
    String episodios;
    String membros;
    String emissora;
    int ano;
    int codPrograma;
    String tipo;
    String grupo;

    public String getGrupo() {
        return grupo;
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Programa() {

    }

    public Programa(String nome, String episodios, String membros, String emissora, int ano, int cod, String tipo) {
        this.nome = nome;
        this.episodios = episodios;
        this.membros = membros;
        this.emissora = emissora;
        this.ano = ano;
        this.codPrograma = cod;
        this.tipo = tipo;
    }

    public int getCodPrograma() {
        return codPrograma;
    }

    public void setCodPrograma(int codPrograma) {
        this.codPrograma = codPrograma;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setEpisodios(String episodios) {
        this.episodios = episodios;
    }

    public void setMembros(String membros) {
        this.membros = membros;
    }

    public void setEmissora(String emissora) {
        this.emissora = emissora;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public int getAno() {
        return ano;
    }

    public String getNome() {
        return nome;
    }

    public String getEpisodios() {
        return episodios;
    }

    public String getMembros() {
        return membros;
    }

    public String getEmissora() {
        return emissora;
    }
}

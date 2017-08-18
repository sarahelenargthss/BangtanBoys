package modelo;

public class Programa {

    String nome;
    String episodios;
    String membros;
    String emissora;
    int ano;
    int codPrograma;

    public Programa() {

    }

    public Programa(String nome, String episodios, String membros, String emissora, int ano, int cod) {
        this.nome = nome;
        this.episodios = episodios;
        this.membros = membros;
        this.emissora = emissora;
        this.ano = ano;
        this.codPrograma = cod;
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

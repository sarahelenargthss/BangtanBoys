package modelo;


import java.util.ArrayList;

public class Filmografia {
    ArrayList<Programa> filmografia = new ArrayList();

    public ArrayList<Programa> getFilmografia() {
        return filmografia;
    }

    public void setFilmografia(ArrayList<Programa> filmografia) {
        this.filmografia = filmografia;
    }
    
    public void addPrograma(Programa programa){
        filmografia.add(programa);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package oferta;

/**
 *
 * @author luizg
 */
public class HabilidadesDAO {
    private int id;
    private int ofertaID;
    private String habilidade;
    private String nivel;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOfertaID() {
        return ofertaID;
    }

    public void setOfertaID(int ofertaID) {
        this.ofertaID = ofertaID;
    }

    public String getHabilidade() {
        return habilidade;
    }

    public void setHabilidade(String habilidade) {
        this.habilidade = habilidade;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }
    
    
}

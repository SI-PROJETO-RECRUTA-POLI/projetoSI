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
public class LocalDAO {
    private int id;
    private int ofertaID;
    private String endereco;
    private String regiao;

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

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getRegiao() {
        return regiao;
    }

    public void setRegiao(String regiao) {
        this.regiao = regiao;
    }
    
    
}

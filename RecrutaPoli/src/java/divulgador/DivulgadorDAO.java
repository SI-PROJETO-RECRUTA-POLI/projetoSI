package divulgador;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author leona
 */
public class DivulgadorDAO {
    private int id;
    private int usuarioID;
    private String cargo;
    private int empresaID;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public int getUsuario() {
        return usuarioID;
    }

    public void setUsuario(int usuarioID) {
        this.usuarioID = usuarioID;
    }

    public int getEmpresa() {
        return empresaID;
    }

    public void setEmpresa(int empresaID) {
        this.empresaID = empresaID;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

}


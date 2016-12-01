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
public class RequisitosDAO {
    private int id;
    private int ofertaID;
    private String dataMaximaDeFormacao;
    private String dataMinimaDeFormacao;
    private int jornadaDeTrabalhoSemanal;
    private String dataInicioDoEstagio;
    private int horarioFlexivel;

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

    public String getDataMaximaDeFormacao() {
        return dataMaximaDeFormacao;
    }

    public void setDataMaximaDeFormacao(String dataMaximaDeFormacao) {
        this.dataMaximaDeFormacao = dataMaximaDeFormacao;
    }

    public String getDataMinimaDeFormacao() {
        return dataMinimaDeFormacao;
    }

    public void setDataMinimaDeFormacao(String dataMinimaDeFormacao) {
        this.dataMinimaDeFormacao = dataMinimaDeFormacao;
    }

    public int getJornadaDeTrabalhoSemanal() {
        return jornadaDeTrabalhoSemanal;
    }

    public void setJornadaDeTrabalhoSemanal(int jornadaDeTrabalhoSemanal) {
        this.jornadaDeTrabalhoSemanal = jornadaDeTrabalhoSemanal;
    }

    public String getDataInicioDoEstagio() {
        return dataInicioDoEstagio;
    }

    public void setDataInicioDoEstagio(String dataInicioDoEstagio) {
        this.dataInicioDoEstagio = dataInicioDoEstagio;
    }

    public int getHorarioFlexivel() {
        return horarioFlexivel;
    }

    public void setHorarioFlexivel(int horarioFlexivel) {
        this.horarioFlexivel = horarioFlexivel;
    }
    
    
}

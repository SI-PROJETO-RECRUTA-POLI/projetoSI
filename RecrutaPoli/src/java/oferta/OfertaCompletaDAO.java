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
public class OfertaCompletaDAO {
    private int id;
    private int empresaID;
    private String status;
    private int aprovacao;
    private String deadlineAplicacao;
    private String area;
    private float salario;
    private int usuarioID;
    private String email;
    private int numeroDeVagas;
    private String endereco;
    private String regiao;
    private String nomeEmpresa;
    private String categoria;
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

    public int getEmpresaID() {
        return empresaID;
    }

    public void setEmpresaID(int empresaID) {
        this.empresaID = empresaID;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getAprovacao() {
        return aprovacao;
    }

    public void setAprovacao(int aprovacao) {
        this.aprovacao = aprovacao;
    }

    public String getDeadlineAplicacao() {
        return deadlineAplicacao;
    }

    public void setDeadlineAplicacao(String deadlineAplicacao) {
        this.deadlineAplicacao = deadlineAplicacao;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public float getSalario() {
        return salario;
    }

    public void setSalario(float salario) {
        this.salario = salario;
    }

    public int getUsuarioID() {
        return usuarioID;
    }

    public void setUsuarioID(int usuarioID) {
        this.usuarioID = usuarioID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getNumeroDeVagas() {
        return numeroDeVagas;
    }

    public void setNumeroDeVagas(int numeroDeVagas) {
        this.numeroDeVagas = numeroDeVagas;
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

    public String getNomeEmpresa() {
        return nomeEmpresa;
    }

    public void setNomeEmpresa(String nomeEmpresa) {
        this.nomeEmpresa = nomeEmpresa;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
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

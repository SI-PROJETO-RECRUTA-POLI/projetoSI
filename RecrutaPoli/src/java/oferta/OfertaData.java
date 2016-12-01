/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package oferta;

import java.sql.*;
import transacao.Transacao;
import java.util.*;

/**
 *
 * @author luizg
 */
public class OfertaData {
    
    public void adicionarOferta(OfertaDAO oferta, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "insert into oferta " +
                "(empresaID,status,aprovacao,deadline_aplicacao,area,salario,usuarioID,numeroDeVagas)" +
                " values (?,?,?,?,?,?,?,?)";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1,oferta.getEmpresaID());
            stmt.setString(2,oferta.getStatus());
            stmt.setInt(3,oferta.getAprovacao());
            stmt.setString(4,oferta.getDeadlineAplicacao());
            stmt.setString(5,oferta.getArea());
            stmt.setFloat(6,oferta.getSalario());
            stmt.setInt(7,oferta.getUsuarioID());
            stmt.setInt(8,oferta.getNumeroDeVagas());
            
            // executa
            stmt.execute();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim adicionar
    
    public void adicionarRequisitos(RequisitosDAO requisitos, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "insert into requisitosDaVaga " +
                "(ofertaID,dataMaximaDeFormacao,dataMinimaDeFormacao,jornadaDeTrabalhoSemanal,dataInicioDoEstagio,horarioFlexivel)" +
                " values (?,?,?,?,?,?)";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1,requisitos.getOfertaID());
            stmt.setString(2,requisitos.getDataMaximaDeFormacao());
            stmt.setString(3,requisitos.getDataMinimaDeFormacao());
            stmt.setInt(4,requisitos.getJornadaDeTrabalhoSemanal());
            stmt.setString(5,requisitos.getDataInicioDoEstagio());
            stmt.setInt(6,requisitos.getHorarioFlexivel());
            
            // executa
            stmt.execute();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim adicionarRequisitos
    
    public void adicionarHabilidades(HabilidadesDAO habilidades, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "insert into habilidadesDesejadas " +
                "(ofertaID,habilidade,nivel)" +
                " values (?,?,?)";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1,habilidades.getOfertaID());
            stmt.setString(2,habilidades.getHabilidade());
            stmt.setString(3,habilidades.getNivel());
            
            // executa
            stmt.execute();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim adicionarHabilidades
    
    public void adicionarLocal(LocalDAO local, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "insert into local " +
                "(ofertaID,endereco,regiao)" +
                " values (?,?,?)";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1,local.getOfertaID());
            stmt.setString(2,local.getEndereco());
            stmt.setString(3,local.getRegiao());
            
            // executa
            stmt.execute();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim adicionarLocal
    
    public void adicionarCursos(CursosElegiveisDAO cursos, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "insert into cursosElegiveis " +
                "(ofertaID,curso)" +
                " values (?,?)";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1,cursos.getOfertaID());
            stmt.setString(2,cursos.getCurso());
            
            // executa
            stmt.execute();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim adicionarCursos
    
    public Vector buscarOfertasComFiltro(String filtro, String valor, Transacao tr) {
        
        OfertaDAO oferta = new OfertaDAO();
        Connection con = tr.obterConexao();
        
        //cria array escalavel para guardar resultados
        Vector ofertas = new Vector();
        
        String sql = "select * from oferta where " + 
                filtro + "=?";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setString(1, valor);

            // executa
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){  
                oferta.setId(rs.getInt("id"));
                oferta.setEmpresaID(rs.getInt("empresaID"));
                oferta.setStatus(rs.getString("status"));
                oferta.setAprovacao(rs.getInt("aprovacao"));
                oferta.setDeadlineAplicacao(rs.getString("deadlineAplicacao"));
                oferta.setArea(rs.getString("area"));
                oferta.setSalario(rs.getInt("salario"));
                oferta.setUsuarioID(rs.getInt("usuarioID"));
                oferta.setNumeroDeVagas(rs.getInt("numeroDeVagas"));
                ofertas.add(oferta);
            }
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } 
        return ofertas;
        
    } //fim buscarOferta  
    

    
    public Vector buscarOfertas(Transacao tr) {
        
        OfertaDAO oferta = new OfertaDAO();
        Connection con = tr.obterConexao();
        
        //cria array escalavel para guardar resultados
        Vector ofertas = new Vector();
        
        String sql = "select * from oferta";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // executa
            ResultSet rs = stmt.executeQuery();
            
             while (rs.next()) {
                oferta.setId(rs.getInt("id"));
                oferta.setEmpresaID(rs.getInt("empresaID"));
                oferta.setStatus(rs.getString("status"));
                oferta.setAprovacao(rs.getInt("aprovacao"));
                oferta.setDeadlineAplicacao(rs.getString("deadlineAplicacao"));
                oferta.setArea(rs.getString("area"));
                oferta.setSalario(rs.getInt("salario"));
                oferta.setUsuarioID(rs.getInt("usuarioID"));
                oferta.setNumeroDeVagas(rs.getInt("numeroDeVagas"));
                ofertas.add(oferta);
             }
             stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } 
        return ofertas;
        
    } //fim buscar  
    
    
    public void atualizarOferta(OfertaDAO oferta, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "update oferta" + 
                "set status=?, aprovacao=?, deadlineAplicacao=?, area=?, salario=?, numeroDeVagas=?  where id=?";
        
        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setString(1,oferta.getStatus());
            stmt.setInt(2,oferta.getAprovacao());
            stmt.setString(3,oferta.getDeadlineAplicacao());
            stmt.setString(4,oferta.getArea());
            stmt.setFloat(5,oferta.getSalario());
            stmt.setInt(6,oferta.getNumeroDeVagas());
            
            // executa
            int rs = stmt.executeUpdate();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim atualizar 
    
       public void excluirOferta(OfertaDAO oferta, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "delete from oferta where id=?";
        
        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1,oferta.getId());

            // executa
            int rs = stmt.executeUpdate();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim excluir
}

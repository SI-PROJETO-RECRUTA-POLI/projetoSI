/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package divulgador;

import java.sql.*;
import transacao.Transacao;
import java.util.*;

/**
 *
 * @author luizg
 */
public class DivulgadorData {
    
    public void adicionar(DivulgadorDAO divulgador, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "insert into divulgadorDeVaga " +
                "(usuarioID,cargo,empresaID)" +
                " values (?,?,?)";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1,divulgador.getUsuario());
            stmt.setString(2,divulgador.getCargo());
            stmt.setInt(3,divulgador.getEmpresa());

            // executa
            stmt.execute();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim adicionar
    
    public DivulgadorDAO buscar(int idobj, Transacao tr) {
        
        DivulgadorDAO divulgador = new DivulgadorDAO();
        Connection con = tr.obterConexao();
        
        String sql = "select * from divulgadorDeVagas where  id=?";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setInt(1, idobj);

            // executa
            ResultSet rs = stmt.executeQuery();
                rs.next();  
                divulgador.setUsuario(rs.getInt("usuarioID"));
                divulgador.setCargo(rs.getString("cargo"));
                divulgador.setEmpresa(rs.getInt("empresaID"));
                stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } 
        return divulgador;
        
    } //fim buscar
    
    public void atualizar(DivulgadorDAO divulgador, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "update divulgadorDeVaga" + 
                "set usuarioID=?, cargo=?, empresaID=? where id=?";
        
        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores

            stmt.setInt(1,divulgador.getUsuario());
            stmt.setString(2,divulgador.getCargo());
            stmt.setInt(3,divulgador.getEmpresa());
            stmt.setInt(4, divulgador.getId());

            // executa
            int rs = stmt.executeUpdate();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim atualizar
    
    public void excluir(DivulgadorDAO divulgador, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "delete from Vaga where id=?";
        
        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores

            stmt.setInt(1,divulgador.getId());

            // executa
            int rs = stmt.executeUpdate();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim excluir
    
    public EmpresaDAO buscarEmpresa(String nome, Transacao tr) {
        
        EmpresaDAO empresa = new EmpresaDAO();
        Connection con = tr.obterConexao();
        
        String sql = "select * from empresa where nome=?";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setString(1, nome);

            // executa
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){  
                empresa.setId(rs.getInt("id"));
                empresa.setNome(rs.getString("nome"));
                empresa.setCategoria(rs.getString("categoria"));
            }
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } 
        return empresa;
        
    } //fim buscarOferta
    
    public Vector buscarEmpresas(Transacao tr) {
        
        EmpresaDAO empresa = new EmpresaDAO();
        Connection con = tr.obterConexao();
        
        //cria array escalavel para guardar resultados
        Vector empresas = new Vector();
        
        String sql = "select * from empresa";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // executa
            ResultSet rs = stmt.executeQuery();
            
             while (rs.next()) {
                empresa.setId(rs.getInt("id"));
                empresa.setNome(rs.getString("nome"));
                empresa.setCategoria(rs.getString("categoria"));
                empresas.add(empresa);
             }
             stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } 
        return empresas;
        
    } //fim buscarEmpresas  
    
}

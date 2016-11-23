/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usuario;

import java.sql.*;
import transacao.Transacao;
/**
 *
 * @author luizg
 */
public class UsuarioData {
    
        public void adicionar(UsuarioDAO usuario, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "insert into usuario " +
                "(email,senha,permissao)" +
                " values (?,?,?)";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setString(1,usuario.getEmail());
            stmt.setString(2,usuario.getSenha());
            stmt.setString(3,usuario.getPermissao());

            // executa
            stmt.execute();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim adicionar
        
    public UsuarioDAO buscar(String email, Transacao tr) {
        
        UsuarioDAO usuario = new UsuarioDAO();
        Connection con = tr.obterConexao();
        
        String sql = "select * from usuario where email=?";

        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores
            stmt.setString(1, email);

            // executa
            ResultSet rs = stmt.executeQuery();
                rs.next();  
                usuario.setId(rs.getInt("id"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setPermissao(rs.getString("permissao"));
                stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } 
        return usuario;
        
    } //fim buscar  
      
   public void atualizar(UsuarioDAO usuario, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "update usuario" + 
                "set email=?, senha=?, permissao=? where id=?";
        
        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores

            stmt.setString(1,usuario.getEmail());
            stmt.setString(2,usuario.getSenha());
            stmt.setString(3,usuario.getPermissao());
            stmt.setInt(4,usuario.getId());
            
            // executa
            int rs = stmt.executeUpdate();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim atualizar 
   
   public void excluir(UsuarioDAO usuario, Transacao tr) {
        
        Connection con = tr.obterConexao();
        
        String sql = "delete from usuario where id=?";
        
        try {
            // prepared statement para inserção
            PreparedStatement stmt = con.prepareStatement(sql);

            // seta os valores

            stmt.setInt(1,usuario.getId());

            // executa
            int rs = stmt.executeUpdate();
            stmt.close();
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    } //fim excluir
}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aluno;

import java.sql.*;
import java.util.*;
import transacao.Transacao;

/**
 *
 * @author ANTONIO WALKIR
 */
public class AlunoData {
    
    public void atualizarCurriculo(AlunoDAO aluno, Transacao tr) throws Exception {
        Connection con = tr.obterConexao();
        String sql = "update aluno set curso=?, interesses=?, idiomas=? ,experiencia=?, especializacoes=?, nome=? where id=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, aluno.getCurso());
        ps.setString(2, aluno.getInteresses());
        ps.setString(3, aluno.getIdiomas());
        ps.setString(4, aluno.getExperiencia());
        ps.setString(5, aluno.getEspecializacoes());
        ps.setString(6, aluno.getNome());
        ps.setInt(7, aluno.getId());
        int result = ps.executeUpdate();
    }
    
    public AlunoDAO buscarPorUsuarioID(int idobj, Transacao tr) throws Exception {
        Connection con = tr.obterConexao();
        String sql = "select * from aluno where  UsuarioID=?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, idobj);
        ResultSet rs = ps.executeQuery();
        rs.next();
        AlunoDAO aluno = new AlunoDAO();
        aluno.setId(rs.getInt("id"));
        aluno.setNusp(rs.getString("nusp"));
        aluno.setUsuarioID(rs.getInt("usuarioID"));
        aluno.setNome(rs.getString("nome"));
        aluno.setCurso(rs.getString("curso"));
        aluno.setInteresses(rs.getString("interesses"));
        aluno.setIdiomas(rs.getString("idiomas"));
        aluno.setExperiencia(rs.getString("experiencia"));
        aluno.setEspecializacoes(rs.getString("especializacoes"));
        return aluno;
    }
    
}

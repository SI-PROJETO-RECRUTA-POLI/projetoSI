/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

//Importando as classes java necessárias
import aluno.*;
import transacao.Transacao;
import java.util.Vector;

/**
 *
 * @author ANTONIO WALKIR
 */
public class ControladorAluno {
    public boolean atualizarCurriculo(AlunoDAO aluno) throws Exception {
        // validacao das regras de negocio
     // efetuando a transacao
     Transacao tr = new Transacao();
     try {

       tr.begin();
         AlunoData alunodata = new AlunoData();
         alunodata.atualizarCurriculo(aluno, tr);
       tr.commit();
       return true;
       
     } catch(Exception e) {
         tr.rollback();
         System.out.println("erro ao incluir " + aluno.getNome());
         e.printStackTrace();
     }
     return false;
  } // atualizarCurriculo
    
    public AlunoDAO buscarPorUsuarioID(int idobj) throws Exception{
     Transacao tr = new Transacao();
	 try{
	   tr.begin();
  	     AlunoData cdata = new AlunoData();
	     AlunoDAO c = cdata.buscarPorUsuarioID(idobj, tr);
	   tr.commit();
	   return c;
	 } catch (Exception e) {
	   tr.rollback();
	   System.out.println("erro ao buscar" + idobj);
	   e.printStackTrace();
	 }
	 return null;
  } // buscarPorUsuarioID
}

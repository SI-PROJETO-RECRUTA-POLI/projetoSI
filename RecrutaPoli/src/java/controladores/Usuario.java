/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import usuario.UsuarioDAO;
import usuario.UsuarioData;
import transacao.Transacao;

/**
 *
 * @author luizg
 */
public class Usuario {
    
    public boolean incluir (UsuarioDAO usuario) throws Exception{

     // efetuando a transacao
     Transacao tr = new Transacao();
     try {
       tr.begin();
       UsuarioData data = new UsuarioData();
       data.adicionar(usuario, tr);
       tr.commit();
       return true;
     } catch(Exception e) {
         tr.rollback();
         System.out.println("erro ao incluir ");
         e.printStackTrace();
     }
     return false;
  } // incluir
    
    public boolean atualizar(UsuarioDAO usuario) throws Exception {
     Transacao tr = new Transacao();
	 try{
	   // inserir validacoes de regras de negocio
	   tr.begin();
  	     UsuarioData data = new UsuarioData();
	     data.atualizar(usuario, tr);
	   tr.commit();
	   return true;
	 } catch (Exception e) {
	   tr.rollback();
	   System.out.println("erro ao atualizar");
	   e.printStackTrace();
	 }
	 return false;
  } // atualizar
    
    public boolean excluir(UsuarioDAO usuario) throws Exception {
     Transacao tr = new Transacao();
	 try{
	   // inserir validacoes de regras de negocio
	   tr.begin();
  	   UsuarioData data = new UsuarioData();
	   data.excluir(usuario, tr);
	   tr.commit();
	   return true;
	 } catch (Exception e) {
	   tr.rollback();
	   System.out.println("erro ao excluir");
	   e.printStackTrace();
	 }
	 return false;
  } // excluir 
    
     public UsuarioDAO buscar(String email) {
        UsuarioDAO divulgador = new UsuarioDAO();
        Transacao tr = new Transacao();
        try {
            tr.begin();
            UsuarioData data = new UsuarioData();
            divulgador = data.buscar(email, tr);
            tr.commit();
            return divulgador;
        } catch (Exception e) {
            System.out.println("erro ao pesquisar " + email);
            e.printStackTrace();
        }
        return divulgador;
    } // buscar 
    
}

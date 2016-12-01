/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import divulgador.DivulgadorDAO;
import divulgador.DivulgadorData;
import transacao.Transacao;

/**
 *
 * @author luizg
 */
public class ControladorDivulgador {
    
   public boolean incluirDivulgador(DivulgadorDAO divulgador) throws Exception{
     // efetuando a transacao
     Transacao tr = new Transacao();
     try {

       tr.begin();
       DivulgadorData data = new DivulgadorData();
       data.adicionar(divulgador, tr);
       tr.commit();
       return true;
       
     } catch(Exception e) {
         tr.rollback();
         System.out.println("erro ao incluir ");
         e.printStackTrace();
     }
     return false;
  } // incluir
   
   public boolean atualizar(DivulgadorDAO divulgador) throws Exception {
     Transacao tr = new Transacao();
	 try{
	   // inserir validacoes de regras de negocio
	   tr.begin();
  	     DivulgadorData data = new DivulgadorData();
	     data.atualizar(divulgador, tr);
	   tr.commit();
	   return true;
	 } catch (Exception e) {
	   tr.rollback();
	   System.out.println("erro ao atualizar");
	   e.printStackTrace();
	 }
	 return false;
  } // atualizar
    
  public boolean excluir(DivulgadorDAO divulgador) throws Exception {
     Transacao tr = new Transacao();
	 try{
	   // inserir validacoes de regras de negocio
	   tr.begin();
  	   DivulgadorData data = new DivulgadorData();
	   data.excluir(divulgador, tr);
	   tr.commit();
	   return true;
	 } catch (Exception e) {
	   tr.rollback();
	   System.out.println("erro ao excluir");
	   e.printStackTrace();
	 }
	 return false;
  } // excluir 
 
  public DivulgadorDAO buscar(int id) {
        DivulgadorDAO divulgador = new DivulgadorDAO();
        Transacao tr = new Transacao();
        try {
            tr.begin();
            DivulgadorData data = new DivulgadorData();
            divulgador = data.buscar(id, tr);
            tr.commit();
            return divulgador;
        } catch (Exception e) {
            System.out.println("erro ao pesquisar " + id);
            e.printStackTrace();
        }
        return divulgador;
    } // buscar 
  
}

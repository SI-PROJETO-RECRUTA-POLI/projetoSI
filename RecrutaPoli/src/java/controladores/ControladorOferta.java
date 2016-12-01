/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.util.*;
import oferta.*;
import transacao.Transacao;
import divulgador.*;

/**
 *
 * @author luizg
 */
public class ControladorOferta {
    
    public boolean incluirOferta(OfertaDAO oferta) throws Exception{
     // efetuando a transacao
     Transacao tr = new Transacao();
     try {
       tr.begin();
       OfertaData data = new OfertaData();
       data.adicionarOferta(oferta, tr);
       tr.commit();
       return true;
     } catch(Exception e) {
         tr.rollback();
         System.out.println("erro ao incluir ");
         e.printStackTrace();
     }
     return false;
  } // incluirOferta
    
    public boolean incluirHabilidades(HabilidadesDAO habilidades) throws Exception{
     // efetuando a transacao
     Transacao tr = new Transacao();
     try {
       tr.begin();
       OfertaData data = new OfertaData();
       data.adicionarHabilidades(habilidades, tr);
       tr.commit();
       return true;
     } catch(Exception e) {
         tr.rollback();
         System.out.println("erro ao incluir ");
         e.printStackTrace();
     }
     return false;
  } // incluirHabilidades
    
    public boolean incluirLocal(LocalDAO local) throws Exception{
     // efetuando a transacao
     Transacao tr = new Transacao();
     try {
       tr.begin();
       OfertaData data = new OfertaData();
       data.adicionarLocal(local, tr);
       tr.commit();
       return true;
     } catch(Exception e) {
         tr.rollback();
         System.out.println("erro ao incluir ");
         e.printStackTrace();
     }
     return false;
  } // incluirLocal
    
    public boolean incluirRequisitos(RequisitosDAO requisitos) throws Exception{
     // efetuando a transacao
     Transacao tr = new Transacao();
     try {
       tr.begin();
       OfertaData data = new OfertaData();
       data.adicionarRequisitos(requisitos, tr);
       tr.commit();
       return true;
     } catch(Exception e) {
         tr.rollback();
         System.out.println("erro ao incluir ");
         e.printStackTrace();
     }
     return false;
  } // incluirRequisitos
    
    public boolean incluirCursos(CursosElegiveisDAO cursos) throws Exception{
     // efetuando a transacao
     Transacao tr = new Transacao();
     try {
       tr.begin();
       OfertaData data = new OfertaData();
       data.adicionarCursos(cursos, tr);
       tr.commit();
       return true;
     } catch(Exception e) {
         tr.rollback();
         System.out.println("erro ao incluir ");
         e.printStackTrace();
     }
     return false;
  } // incluirCursos
    
    public boolean aprovarOferta(OfertaDAO oferta) throws Exception{
     // efetuando a transacao
     Transacao tr = new Transacao();
     try {
       tr.begin();
       oferta.setAprovacao(1);
       OfertaData data = new OfertaData();
       data.atualizarOferta(oferta, tr);
       tr.commit();
       return true;
     } catch(Exception e) {
         tr.rollback();
         System.out.println("erro ao aprovar ");
         e.printStackTrace();
     }
     return false;
  } // aprovarOferta
    
    public boolean cancelarOferta(OfertaDAO oferta) throws Exception{
     // efetuando a transacao
     Transacao tr = new Transacao();
     try {
       tr.begin();
       oferta.setStatus("Cancelada");
       OfertaData data = new OfertaData();
       data.atualizarOferta(oferta, tr);
       tr.commit();
       return true;
     } catch(Exception e) {
         tr.rollback();
         System.out.println("erro ao caencelar ");
         e.printStackTrace();
     }
     return false;
  } // cancelarOferta
    
    public boolean editarOferta(OfertaDAO oferta) throws Exception{
     // efetuando a transacao
     Transacao tr = new Transacao();
     try {
       tr.begin();
       OfertaData data = new OfertaData();
       data.atualizarOferta(oferta, tr);
       tr.commit();
       return true;
     } catch(Exception e) {
         tr.rollback();
         System.out.println("erro ao editar ");
         e.printStackTrace();
     }
     return false;
  } // editarOferta
    
    public Vector filtrarPorEmpresa(String nome) {
        OfertaDAO oferta = new OfertaDAO();
        EmpresaDAO empresa = new EmpresaDAO();
        Transacao tr = new Transacao();
        Vector lista = new Vector();
        try {
            tr.begin();
            OfertaData data = new OfertaData();
            DivulgadorData empresaData = new DivulgadorData();
            empresa = empresaData.buscarEmpresa(nome, tr);
            String id = String.valueOf(empresa.getId());
            lista = data.buscarOfertasComFiltro("id", id, tr);
            tr.commit();
        } catch (Exception e) {
            System.out.println("erro ao pesquisar " + nome);
            e.printStackTrace();
        }
        return lista;
    } //filtrarPorEmpresa
    
    public Vector filtrarPorStatus(String status) {
        OfertaDAO oferta = new OfertaDAO();
        Transacao tr = new Transacao();
        Vector lista = new Vector();
        try {
            tr.begin();
            OfertaData data = new OfertaData();
            lista = data.buscarOfertasComFiltro("status", status, tr);
            tr.commit();
        } catch (Exception e) {
            System.out.println("erro ao pesquisar " + status);
            e.printStackTrace();
        }
        return lista;
    } //filtrarPorStatus
    
    //TODO GUARDAR EM ARRAY RESULTADOS
    public Vector filtrarPorSalario(float salario) {
        OfertaDAO oferta = new OfertaDAO();
        Transacao tr = new Transacao();
        Vector lista = new Vector();
        String salarioString = String.valueOf(salario);
        try {
            tr.begin();
            OfertaData data = new OfertaData();
            lista = data.buscarOfertasComFiltro("salario", salarioString, tr);
            tr.commit();
        } catch (Exception e) {
            System.out.println("erro ao pesquisar " + salarioString);
            e.printStackTrace();
        }
        return lista;
    } //filtrarPorSalario
    
    
    public Vector listarOfertas() {
        OfertaDAO oferta = new OfertaDAO();
        Transacao tr = new Transacao();
        Vector lista = new Vector();
        
        try {
            tr.begin();
            OfertaData data = new OfertaData();
            lista = data.buscarOfertas(tr);
            tr.commit();
        } catch (Exception e) {
            System.out.println("erro ao buscar");
            e.printStackTrace();
        }
        return lista;
    } //listarOfertas
    
}

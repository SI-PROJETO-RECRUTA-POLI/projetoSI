/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package transaction;

import java.sql.*;

/**
 *
 * @author luizg
 */
public class Transacao {
    
    // Setando parámetros para conectar com o servidor de banco de dados
    //endereço bd
    static final String url = "jdbc:mysql://localhost:3306/recrutapolidb";
    //usuario bd
    static final String uid = "root";
    //senha bd
    static final String pwd = "1234";
    //Driver JDBC
    static final String myDriver = "com.mysql.jdbc.Driver"; 
    //declarando variavel que vai receber conexao
    private Connection conn = null;

  //abre conexao
  public void begin() throws Exception{
      Class.forName(myDriver);
      conn = DriverManager.getConnection(url, uid, pwd);
  } // begin


  //torna mudanças no banco permanetes
  public void commit() throws Exception {
         conn.commit();
	 conn.close();
  } // commit

  //retorna banco para estado anterior
  public void rollback() throws Exception {
         conn.rollback(); 
	 conn.close();
  } // rollback

  //retorna conexao
  public Connection obterConexao() {
      return conn;
  } // obterConexao
    
}

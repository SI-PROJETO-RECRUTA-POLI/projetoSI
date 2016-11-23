<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<!especificando objeto JAVA que contém os dados do formulário em index.jsp>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            // Setando parámetros para conectar com o servidor de banco de dados
            //String url = "jdbc:mysql://localhost/email_contacts?";
            String url = "jdbc:mysql://localhost/projetosi?";
            //String uid = "root";
            String uid = "root";
            //String pwd = "venceremos";
            String pwd = "";

            Connection conn = null;
            ResultSet results = null;
            Statement statement = null;
            try
            {
                // fazendo a conexão com o servidor
                // carregando driver certo para conexão
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(url, uid, pwd);
                statement = conn.createStatement();
                
                String userID=request.getParameter("userID");
                String text;
                text="select * from divulgador where id=" + userID;
                //System.out.println(text);
                //System.out.println(userID);
                results = statement.executeQuery(text);
                if(results != null && results.next()){
                    //System.out.println((results.getString(6)).substring(4,6));
                }
       
                %>
    <div id="form_container">
  
    <form name="EditarCadastroDivulgador" id="EditarCadastroDivulgador" class="appnitro"  method="post" Onsubmit="ResultadoEditarCadastro();">
          <div class="form_EditarCadastroDivulgador">
      <h2>Editar Cadastro Divulgador</h2>
    </div>            
      <ul >
        <li id="Primeiro Item" >
          <label class="EditarCadastroDivulgador" for="nome">Nome* </label>
          <div>
              <input id="nome" name="nome" class="element text medium" type="text" maxlength="255" value="<%=results.getString(2)%>"></input> 
          </div> 
        </li>   
        <li id="Segundo Item" >
          <label class="EditarCadastroDivulgador" for="sobrenome">Sobrenome* </label>
          <div>
            <input id="sobrenome" name="sobrenome" class="element text medium" type="text" maxlength="255" value="<%=results.getString(3)%>"/> 
          </div> 
        </li>
	<li id="Nono Item" >
          <label class="EditarCadastroDivulgador" for="usuario">Usuário* </label>
          <div>
            <input id="usuario" name="usuario" class="element text medium" type="text" maxlength="255" value="<%= results.getString(4) %>"/> 
          </div> 
        </li>  
	<li id="Decimo Item" >
          <label class="EditarCadastroDivulgador" for="senha">Senha* </label>
          <div>
            <input id="senha" name="senha" class="element text medium" type="password" maxlength="255" value="<%= results.getString(5) %>"/> 
          </div> 
        </li> 
	<li id="Decimo Item" >
          <label class="EditarCadastroDivulgador" for="confirmarSenha">Confirmar Senha* </label>
          <div>
            <input id="confirmarSenha" name="confirmarSenha" class="element text medium" type="password" maxlength="255" value="<%= results.getString(5) %>"/> 
          </div> 
        </li> 
	<li id="Terceiro Item" >
          <label class="EditarCadastroDivulgador" for="dataNascimentoDivulgador">Data de Nascimento </label>
            <span>
              <input id="dataNascimentoDivulgadorDD" name="dataNascimentoDivulgadorDD" class="element text" size="2" maxlength="2" value="<%= results.getString(6).substring(6,8) %>" type="text">
              <label for="dataNascimentoDivulgadorDD">DD</label>
            </span>
            <span>
              <input id="dataNascimentoDivulgadorMM" name="dataNascimentoDivulgadorMM" class="element text" size="2" maxlength="2" value="<%= results.getString(6).substring(4,6) %>" type="text">
              <label for="dataNascimentoDivulgadorMM">MM</label>
            </span>
            <span>
              <input id="dataNascimentoDivulgadorAAAA" name="dataNascimentoDivulgadorAAAA" class="element text" size="4" maxlength="4" value="<%= results.getString(6).substring(0,4) %>" type="text"/>
              <label for="dataNascimentoDivulgadorAAAA">AAAA</label>
            </span>    
        </li> 
        <li id="Quarto Item" >
          <label class="EditarCadastroDivulgador" for="email">Email* </label>
          <div>
            <input id="email" name="email" class="element text medium" type="text" maxlength="255" value="<%= results.getString(7) %>"/> 
          </div> 
        </li>  
	<li id="Quinto Item" >
          <label class="EditarCadastroDivulgador" for="empresa">Empresa </label>
          <div>
            <input id="empresa" name="empresa" class="element text medium" type="text" maxlength="255" value="<%= results.getString(8) %>"/> 
          </div> 
        </li>  
	<li id="Sexto Item" >
          <label class="EditarCadastroDivulgador" for="cargo">Cargo </label>
          <div>
            <input id="cargo" name="cargo" class="element text medium" type="text" maxlength="255" value="<%= results.getString(9) %>"/> 
          </div> 
        </li>   
	<li id="Setimo Item" >
          <label class="EditarCadastroDivulgador" for="universidadeFormacao">Universidade de Formacao</label>
          <div>
            <input id="universidadeFormacao" name="universidadeFormacao" class="element text medium" type="text" maxlength="255" value="<%= results.getString(10) %>"/> 
          </div> 
        </li>
	<li id="Oitavo Item" >
          <label class="EditarCadastroDivulgador" for="anoFormacao">Ano de Forma��o </label>
          <div>
            <input id="anoFormacao" name="anoFormacao" class="element text medium" type="text" maxlength="255" value="<%= results.getString(11) %>"/> 
          </div> 
        </li> 
        
        <input type="hidden" name="form_id" value="3541" />
        <br><input id="saveEditarCadastroDivulgador" class="button_text" type="submit" name="EnviarEditarCadastroDivulgador" value="Editar Cadastro" />
      </ul>
    </form> 
  </div>

        <br>
        
    </body>
</html>
<script type="text/javascript">
	function ResultadoEditarCadastro()
	{
           document.EditarCadastroDivulgador.action="resultadoEditarDivulgador.jsp?userID="+<% out.println(userID); %>;
	}	
	
</script>
        
        <%
            }
            // capturando exeções em caso de erro
            catch (ClassNotFoundException e)
            {
                System.out.println("Opps I can't find the JDBC Driver!");
                e.printStackTrace();
            }
            catch (SQLException e)
            {
                System.out.println("There was a problem with the SQL!");
                e.printStackTrace();
            }
            finally
            {
                // fechando conexão com o servidor
                if (conn != null)
                {
                    try
                    {
                        conn.close();
                    }
                    catch (Exception e)
                    {
                        e.printStackTrace();
                    }
                }
            }
        %>
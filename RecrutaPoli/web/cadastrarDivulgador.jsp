<!--Leonardo Jung-->
<!--Projeto SI-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>  <!importando libraria SQL do JAVA>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="view.css" media="all">
        <script type="text/javascript" src="view.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Divulgador</title>
    </head>
  <body>
    <div id="form_container">
  
    <form id="CadastrarDivulgador" class="appnitro"  method="post" action="resultadoDivulgador.jsp">
          <div class="form_CadastrarDivulgador">
      <h2>Cadastrar Divulgador</h2>
    </div>            
      <ul >
        <li id="Primeiro Item" >
          <label class="CadastrarDivulgador" for="nome">Nome* </label>
          <div>
            <input id="nome" name="nome" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>   
        <li id="Segundo Item" >
          <label class="CadastrarDivulgador" for="sobrenome">Sobrenome* </label>
          <div>
            <input id="sobrenome" name="sobrenome" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>
	<li id="Nono Item" >
          <label class="CadastrarDivulgador" for="usuario">Usuário* </label>
          <div>
            <input id="usuario" name="usuario" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>  
	<li id="Decimo Item" >
          <label class="CadastrarDivulgador" for="senha">Senha* </label>
          <div>
            <input id="senha" name="senha" class="element text medium" type="password" maxlength="255" value=""/> 
          </div> 
        </li> 
	<li id="Decimo Item" >
          <label class="CadastrarDivulgador" for="confirmarSenha">Confirmar Senha* </label>
          <div>
            <input id="confirmarSenha" name="confirmarSenha" class="element text medium" type="password" maxlength="255" value=""/> 
          </div> 
        </li> 
	<li id="Terceiro Item" >
          <label class="CadastrarDivulgador" for="dataNascimentoDivulgador">Data de Nascimento </label>
            <span>
              <input id="dataNascimentoDivulgadorDD" name="dataNascimentoDivulgadorDD" class="element text" size="2" maxlength="2" value="" type="text">
              <label for="dataNascimentoDivulgadorDD">DD</label>
            </span>
            <span>
              <input id="dataNascimentoDivulgadorMM" name="dataNascimentoDivulgadorMM" class="element text" size="2" maxlength="2" value="" type="text">
              <label for="dataNascimentoDivulgadorMM">MM</label>
            </span>
            <span>
              <input id="dataNascimentoDivulgadorAAAA" name="dataNascimentoDivulgadorAAAA" class="element text" size="4" maxlength="4" value="" type="text">
              <label for="dataNascimentoDivulgadorAAAA">AAAA</label>
            </span>    
        </li> 
        <li id="Quarto Item" >
          <label class="CadastrarDivulgador" for="email">Email* </label>
          <div>
            <input id="email" name="email" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>  
	<li id="Quinto Item" >
          <label class="CadastrarDivulgador" for="empresa">Empresa </label>
          <div>
            <input id="empresa" name="empresa" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>  
	<li id="Sexto Item" >
          <label class="CadastrarDivulgador" for="cargo">Cargo </label>
          <div>
            <input id="cargo" name="cargo" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>   
	<li id="Setimo Item" >
          <label class="CadastrarDivulgador" for="universidadeFormacao">Universidade de Formacao</label>
          <div>
            <input id="universidadeFormacao" name="universidadeFormacao" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>
	<li id="Oitavo Item" >
          <label class="CadastrarDivulgador" for="anoFormacao">Ano de Forma��o </label>
          <div>
            <input id="anoFormacao" name="anoFormacao" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li> 
        
        <input type="hidden" name="form_id" value="3541" />
        <br><input id="saveCadastrarDivulgador" class="button_text" type="submit" name="EnviarCadastrarDivulgador" value="Cadastrar" />
      </ul>
    </form> 
  </div>
  </body>
</html>
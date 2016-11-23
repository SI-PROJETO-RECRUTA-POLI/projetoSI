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
        <title>Cadastrar Vaga</title>
    </head>
  <body>
    <div id="form_container">
  
    <form name="CadastrarVaga" id="CadastrarVaga" class="appnitro"  method="post" Onsubmit="ResultadoVaga();">
          <div class="form_CadastrarVaga">
      <h2>Cadastrar Vaga</h2>
    </div>            
      <ul >
        <li id="Primeiro Item" >
          <label class="CadastrarVaga" for="empresa">Empresa* </label>
          <div>
            <input id="empresa" name="empresa" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>   
        <li id="Segundo Item" >
          <label class="CadastrarVaga" for="setor">Setor* </label>
          <div>
            <input id="setor" name="setor" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>
	<li id="Nono Item" >
          <label class="CadastrarVaga" for="cargo">Cargo* </label>
          <div>
            <input id="cargo" name="cargo" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>  
	<li id="Decimo Item" >
          <label class="CadastrarVaga" for="emailContato">Email para Contato* </label>
          <div>
            <input id="emailContato" name="emailContato" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li> 
	<li id="DecimoTerceiro Item" >
          <label class="CadastrarVaga" for="jornada">Jornada de Trabalho (h/semana)* </label>
          <div>
            <input id="jornada" name="jornada" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li> 
        <li id="DecimoPrimeiro Item" >
          <label class="CadastrarVaga" for="cidade">Cidade* </label>
          <div>
            <input id="cidade" name="cidade" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>
        <li id="DecimoSegundo Item" >
          <label class="CadastrarVaga" for="bairro">Bairro* </label>
          <div>
            <input id="bairro" name="bairro" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>
	<li id="Terceiro Item" >
          <label class="CadastrarVaga" for="dataLimiteAplicacao">Data Limite de Aplicação </label>
            <span>
              <input id="dataLimiteAplicacaoDD" name="dataLimiteAplicacaoDD" class="element text" size="2" maxlength="2" value="" type="text">
              <label for="dataLimiteAplicacaoDD">DD</label>
            </span>
            <span>
              <input id="dataLimiteAplicacaoMM" name="dataLimiteAplicacaoMM" class="element text" size="2" maxlength="2" value="" type="text">
              <label for="dataLimiteAplicacaoMM">MM</label>
            </span>
            <span>
              <input id="dataLimiteAplicacaoAAAA" name="dataLimiteAplicacaoAAAA" class="element text" size="4" maxlength="4" value="" type="text">
              <label for="dataLimiteAplicacaoAAAA">AAAA</label>
            </span>   
        </li> 
        <li id="Quarto Item" >
            <label class="CadastrarVaga" for="dataMinimaFormacao">Data Mínima de Formação </label>
              <input id="dataMinimaFormacaoMM" name="dataMinimaFormacaoMM" class="element text" size="2" maxlength="2" value="" type="text">
              <label for="dataMinimaFormacaoMM">MM</label>
            </span>
            <span>
              <input id="dataMinimaFormacaoAAAA" name="dataMinimaFormacaoAAAA" class="element text" size="4" maxlength="4" value="" type="text">
              <label for="dataMinimaFormacaoAAAA">AAAA</label>
            </span> 
        </li>
        <li id="Quinto Item" >
            <label class="CadastrarVaga" for="dataMaximaFormacao">Data Máxima de Formação </label>
              <input id="dataMaximaFormacaoMM" name="dataMaximaFormacaoMM" class="element text" size="2" maxlength="2" value="" type="text">
              <label for="dataMaximaFormacaoMM">MM</label>
            </span>
            <span>
              <input id="dataMaximaFormacaoAAAA" name="dataMaximaFormacaoAAAA" class="element text" size="4" maxlength="4" value="" type="text">
              <label for="dataMaximaFormacaoAAAA">AAAA</label>
            </span> 
        </li>
 
	<li id="Sexto Item" >
          <label class="CadastrarVaga" for="salario">Salário </label>
          <div>
            <input id="salario" name="salario" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>   
        <li id="Nono Item" >
          <label class="CadastrarVaga" for="descricao">Descrição da Vaga* </label>
          <div>
            <textarea id="descricao" name="descricao" class="element textarea medium" rows="10" cols="70"></textarea> 
          </div> 
        </li>   
        <li id="Decimo Item" >
          <label class="CadastrarVaga" for="requisitos">Requisitos* </label>
          <div>
            <textarea id="requisitos" name="requisitos" class="element textarea medium" rows="10" cols="70"></textarea> 
          </div> 
        </li>
        
        <input type="hidden" name="form_id" value="3541" />
        <br><input id="saveCadastrarVaga" class="button_text" type="submit" name="EnviarCadastrarVaga" value="Divulgar Vaga" />
      </ul>
    </form> 
  </div>
  </body>
</html>
<% String userID;
        userID=request.getParameter("userID");
        System.out.println(userID);
%>
<script type="text/javascript">
	function ResultadoVaga()
	{
           document.CadastrarVaga.action="resultadoVaga.jsp?userID="+<% out.println(userID); %>;
	}	
	
</script>
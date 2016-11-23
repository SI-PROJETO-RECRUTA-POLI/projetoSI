<!--Leonardo Jung-->
<!--Projeto SI-->

<html>
    <head>
        <title>Editar Cadastro</title>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
    </head>
  <body>
    <div id="form_container">
  
    <form id="EditarCadastroDivulgador" class="appnitro"  method="post" action="PaginaDivulgador.html">
          <div class="form_EditarCadastroDivulgador">
      <h2>Editar Cadastro</h2>
    </div>            
      <ul >
        <li id="Primeiro Item" >
          <label class="EditarCadastroDivulgador" for="Nome">Nome </label>
          <div>
            <input id="Nome" name="Nome" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>   
        <li id="Segundo Item" >
          <label class="EditarCadastroDivulgador" for="Sobrenome">Sobrenome </label>
          <div>
            <input id="Sobrenome" name="Sobrenome" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>
	<li id="Terceiro Item" >
          <label class="EditarCadastroDivulgador" for="DataNascimentoDivulgador">Data de Nascimento </label>
            <span>
              <input id="DataNascimentoDivulgadorDD" name="DataNascimentoDivulgadorDD" class="element text" size="2" maxlength="2" value="" type="text">
              <label for="DataNascimentoDivulgadorDD">DD</label>
            </span>
            <span>
              <input id="DataNascimentoDivulgadorMM" name="DataNascimentoDivulgadorMM" class="element text" size="2" maxlength="2" value="" type="text">
              <label for="DataNascimentoDivulgadorMM">MM</label>
            </span>
            <span>
              <input id="DataNascimentoDivulgadorAAAA" name="DataNascimentoDivulgadorAAAA" class="element text" size="4" maxlength="4" value="" type="text">
              <label for="DataNascimentoDivulgadorAAAA">AAAA</label>
            </span>    
        </li> 
        <li id="Quarto Item" >
          <label class="EditarCadastroDivulgador" for="EmailDivulgador">Email </label>
          <div>
            <input id="EmailDivulgador" name="EmailDivulgador" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>  
	<li id="Quinto Item" >
          <label class="EditarCadastroDivulgador" for="Empresa">Empresa </label>
          <div>
            <input id="Empresa" name="Empresa" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>  
	<li id="Sexto Item" >
          <label class="EditarCadastroDivulgador" for="Cargo">Cargo </label>
          <div>
            <input id="Cargo" name="Cargo" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>   
	<li id="Setimo Item" >
          <label class="EditarCadastroDivulgador" for="UniversidadeFormacao">Universidade de Formacao</label>
          <div>
            <input id="UniversidadeFormacao" name="UniversidadeFormacao" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>
	<li id="Oitavo Item" >
          <label class="EditarCadastroDivulgador" for="AnoFormacaoDivulgador">Ano de Formação </label>
          <div>
            <input id="AnoFormacaoDivulgador" name="AnoFormacaoDivulgador" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li> 
        <li id="Nono Item" >
          <label class="EditarCadastroDivulgador" for="Usuario">Usuário </label>
          <div>
            <input id="Usuario" name="Usuario" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>  
	<li id="Decimo Item" >
          <label class="EditarCadastroDivulgador" for="NovaSenha">Nova Senha </label>
          <div>
            <input id="NovaSenha" name="NovaSenha" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li> 
	<li id="DecimoPrimeiro Item" >
          <label class="EditarCadastroDivulgador" for="ConfirmarNovaSenha">Confirmar Nova Senha </label>
          <div>
            <input id="ConfirmarNovaSenha" name="ConfirmarNovaSenha" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li> 
        
        <input type="hidden" name="form_id" value="3541" />
        <br><input id="saveEditarCadastroDivulgador" class="button_text" type="submit" name="EnviarEditarCadastroDivulgador" value="Alterar Dados" />
      </ul>
    </form> 
  </div>
  </body>
</html>
<!--Leonardo Jung-->
<!--Projeto SI-->
<html>
    <head>
        <title>Login</title>
        <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
    </head>
	<body>
		<div id="form_container">
  
    <form id="Login" class="appnitro"  method="post" action="resultadoLogin.jsp">
          <div class="form_Login">
      <h2>Login</h2>
    </div>            
      <ul >
        <li id="Primeiro Item" >
          <label class="Login" for="Usuario">Usuário </label>
          <div>
            <input id="usuarioLogin" name="usuarioLogin" class="element text medium" type="text" maxlength="255" value=""/> 
          </div> 
        </li>   
        <li id="Segundo Item" >
          <label class="Login" for="Senha">Senha </label>
          <div>
            <input id="senhaLogin" name="senhaLogin" class="element text medium" type="password" maxlength="255" value=""/> 
          </div> 
        </li>
        <input type="hidden" name="form_id" value="3541" />
        <br><input id="realizarLogin" class="button_text" type="submit" name="realizarLogin" value="Login" />
      </ul>
    </form> 
  </div>
  </body>
</html>
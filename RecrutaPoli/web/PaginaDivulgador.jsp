<!--Leonardo Jung-->
<!--Projeto SI-->
<html>
    <head>
        <title>Página Divulgador</title>
        <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
    </head>
	<body>
		<h1>Página Divulgador</h1>
                <button type="submit" onclick="EditarCadastroDivulgador()">Editar Cadastro</button>
		<button type="submit" onclick="DivulgarVaga()">Divulgar Vaga</button>
                <button type="submit" onclick="EditarVagas()">Visualizar Vagas</button>
    </body>
</html>

<script type="text/javascript">
    <% String userID;
    userID=request.getParameter("userID");
    System.out.println(userID);
    %>
	function EditarCadastroDivulgador()
	{
		location.href="EditarCadastroDivulgador.jsp?userID="+<% out.println(userID); %>;
	}	
	function DivulgarVaga()
	{   
                        location.href= "CadastrarVaga.jsp?userID="+<% out.println(userID); %>;
                        //location.href= "CadastrarVaga.jsp?userID="+(document.write(document.URL)).slice((document.write(document.URL)).indexOf("=")+1, (document.write(document.URL)).length);
                        
	}
        function EditarVagas()
	{
		location.href="EditarVagas.jsp?userID="+<% out.println(userID); %>;
	}
</script>
<!--Leonardo Jung-->
<!--Projeto SI-->
<html>
    <head>
        <title>RECRUTA POLI</title>
        <meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
    </head>
	<body>
		<h1>RECRUTA POLI</h1>
		<button type="submit" onclick="Login()">Login</button>
		<button type="submit" onclick="CadastrarAluno()">Cadastrar - Aluno</button>
                <button type="submit" onclick="CadastrarDivulgador()">Cadastrar - Divulgador</button>
    </body>
</html>

<script type="text/javascript">
	function Login()
	{
		location.href="Login.jsp"
	}
	function CadastrarAluno()
	{
		location.href="CadastrarAluno.html"
	}	
	function CadastrarDivulgador()
	{
		location.href="cadastrarDivulgador.jsp"
	}
</script>
<%-- 
    Document   : resultadoDivulgador
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<!especificando objeto JAVA que contém os dados do formulário em index.jsp>
<jsp:useBean id="divulgador" class="divulgador.divulgadorData" scope="session"/>
<jsp:setProperty name="divulgador" property="*"/>

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

                // lendo parámetros obtido do formulário na página index.jsp
                String nome = divulgador.getNome();
                String sobrenome = divulgador.getSobrenome();
                String usuario = divulgador.getUsuario();
                String senha = divulgador.getSenha();
                String confirmarSenha = divulgador.getConfirmarSenha();
                String dataNascimentoDivulgadorDD = divulgador.getDataNascimentoDivulgadorDD();
                String dataNascimentoDivulgadorMM = divulgador.getDataNascimentoDivulgadorMM();
                String dataNascimentoDivulgadorAAAA = divulgador.getDataNascimentoDivulgadorAAAA();
                String email = divulgador.getEmail();
                String empresa = divulgador.getEmpresa();
                String cargo = divulgador.getCargo();
                String universidadeFormacao = divulgador.getUniversidadeFormacao();
                String anoFormacao = divulgador.getAnoFormacao();
                
                String dataNascimentoDivulgador = dataNascimentoDivulgadorAAAA+dataNascimentoDivulgadorMM+dataNascimentoDivulgadorDD;
                
                //System.out.println(nome+","+sobrenome+","+usuario+","+senha+","+confirmarSenha+","+dataNascimentoDivulgador+","+email+","+empresa+","+cargo+","+universidadeFormacao+","+anoFormacao);
                boolean proceedNomeSobrenomeEmail = false;
                boolean proceedSenhaConfirmar = false;
                // verificando que os parámetros sejam diferentes de NULL ou vazio
                if(nome != null && sobrenome != null && email != null && usuario != null)
                    if(nome.length() > 0 && sobrenome.length() > 0 && email.length() > 0  && usuario.length() > 0)
                        proceedNomeSobrenomeEmail = true;
                
                // verificando senhas
                if(senha.equals(confirmarSenha) && senha != null && confirmarSenha != null)
                    if(senha.length() > 0 && confirmarSenha.length() > 0)
                        proceedSenhaConfirmar = true;
                
                
                // preparando operação de INSERT
        		PreparedStatement ps = null;
                String sql;

                // comando SQL
                sql = "INSERT INTO divulgador(nome, sobrenome, usuario, senha, dataNascimentoDivulgador, email, empresa, cargo, universidadeFormacao, anoFormacao) VALUES (?,?,?,?,?,?,?,?,?,?)";


                // insertando parámetros lidos
                if(proceedNomeSobrenomeEmail && proceedSenhaConfirmar)
                {
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, nome);
                    ps.setString(2, sobrenome);
                    ps.setString(3, usuario);
                    ps.setString(4, senha);
                    ps.setString(5, dataNascimentoDivulgador);
                    ps.setString(6, email);
                    ps.setString(7, empresa);
                    ps.setString(8, cargo);
                    ps.setString(9, universidadeFormacao);
                    ps.setString(10, anoFormacao);
                    ps.executeUpdate();
                }
                else
                {
                    if(proceedNomeSobrenomeEmail)
                    {
                        %>
                        Senha e Confirmar Senha são diferentes!
                        <a href="cadastrarDivulgador.jsp">Recomeçar</a>
                        <%
                    }
                    else
                    {
                        %>
                        Preenxa todos os campos !
                        <a href="cadastrarDivulgador.jsp">Recomeçar</a>
                        <%
                    }
                }
                if(proceedNomeSobrenomeEmail && proceedSenhaConfirmar)
                {%>
                <script type="text/javascript">
                    location.href="index.jsp";
                </script> 
                <%
                }
                // leendo o banco para mostrar conteudo em tabela HTML
                results = statement.executeQuery("select * from divulgador");
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
            

        %>
    </body>
</html>


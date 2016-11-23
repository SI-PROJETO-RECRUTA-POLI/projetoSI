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

            int count=0;
            String delete=" ";
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
                PreparedStatement ps = null;
                String userID=request.getParameter("userID");
                String text;
                text="select empresa, setor, cargo, cidade, bairro, descricao, vagaID from vagas where ativa=1 AND divulgadorID=" + userID;
                //System.out.println(text);
                //System.out.println(userID);
                results = statement.executeQuery(text);
                %>
                
                
                <!código HTML para a tabela que mostra os dados do banco>
                <TABLE BORDER="1">
                    <TR>
                        <TH>Empresa</TH>
                        <TH>Setor</TH>
                        <TH>Cargo</TH>
                        <TH>Cidade</TH>
                        <TH>Bairro</TH>
                        <TH>Descrição</TH>

                    </TR>
                <%
                // mentras existam dados para processar
                while(results.next())
                {
                    count++;
                
                %>
                        <!lendo cada um dos campos da tabela (nome, sobrenome, etc)
                        e mostrando na tabela HTML>
                        <TR>

                            <TD> <%= results.getString(1) %> </TD>
                            <TD> <%= results.getString(2) %> </TD>
                            <TD> <%= results.getString(3) %> </TD>
                            <TD> <%= results.getString(4) %> </TD>
                            <TD> <%= results.getString(5) %> </TD>
                            <TD> <%= results.getString(6) %> </TD>

                        </TR>
                        
                <%
                }
                %>
                </TABLE>
             
        <br><button type="submit" onclick="ExcluirVagas();">Voltar</button>
    </body>
</html>
<script type="text/javascript">
	function ExcluirVagas() //A DESENVOLVER PARA CONSEGUIR EXCLUIR
	{
            location.href="PaginaDivulgador.jsp?userID="+<%out.println(userID);%>
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
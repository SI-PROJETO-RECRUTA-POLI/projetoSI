<%-- 
    Document   : resultadoVaga
    Author     : leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<!especificando objeto JAVA que contém os dados do formulário em index.jsp>
<jsp:useBean id="vaga" class="divulgador.vagaData" scope="session"/>
<jsp:setProperty name="vaga" property="*"/>

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
                String userID=request.getParameter("userID");
                String auxiliar;
                auxiliar="CadastrarVaga.jsp?userID="+userID;
                //System.out.println(userID);
                String empresa = null;
                empresa = vaga.getEmpresa();
                String setor = vaga.getSetor();
                String cargo = vaga.getCargo();
                String emailContato = vaga.getEmailContato();
                String jornada = vaga.getJornada();
                String cidade = vaga.getCidade();
                String bairro = vaga.getBairro();
                String dataLimiteAplicacaoDD = vaga.getDataLimiteAplicacaoDD();
                String dataLimiteAplicacaoMM = vaga.getDataLimiteAplicacaoMM();
                String dataLimiteAplicacaoAAAA = vaga.getDataLimiteAplicacaoAAAA();
                String dataMinimaFormacaoMM = vaga.getDataMinimaFormacaoMM();
                String dataMinimaFormacaoAAAA = vaga.getDataMinimaFormacaoAAAA();
                String dataMaximaFormacaoMM = vaga.getDataMaximaFormacaoMM();
                String dataMaximaFormacaoAAAA = vaga.getDataMaximaFormacaoAAAA();
                String salario = vaga.getSalario();
                String descricao = vaga.getDescricao();
                String requisitos = vaga.getRequisitos();
                
                String dataLimiteAplicacao = dataLimiteAplicacaoAAAA+dataLimiteAplicacaoMM+dataLimiteAplicacaoDD;
                String dataMinimaFormacao = dataMinimaFormacaoAAAA+dataMinimaFormacaoMM;
                String dataMaximaFormacao = dataMaximaFormacaoAAAA+dataMaximaFormacaoMM;
                
                boolean proceed = false;
                // verificando que os parámetros sejam diferentes de NULL ou vazio
                 
                if(empresa != null && setor != null && cargo != null && emailContato != null  && jornada != null && cidade != null  && bairro != null  && descricao != null  && requisitos != null  && dataLimiteAplicacao != null && dataMaximaFormacao != null && dataMinimaFormacao != null)
                    if(empresa.length() > 0 && setor.length() > 0 && cargo.length() > 0 && emailContato.length() > 0  && jornada.length() > 0 && cidade.length() > 0  && bairro.length() > 0  && descricao.length() > 0  && requisitos.length() > 0  && dataLimiteAplicacao.length() > 0 && dataMaximaFormacao.length() > 0 && dataMinimaFormacao.length() > 0)    
                    proceed = true;
                
                // preparando operação de INSERT
        		PreparedStatement ps = null;
                String sql;

                // comando SQL
                sql = "INSERT INTO vagas(divulgadorID, empresa,setor,cargo,emailContato,jornada,cidade,bairro,dataLimiteAplicacao,dataMinimaFormacao,dataMaximaFormacao,salario,descricao,requisitos) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                ps = conn.prepareStatement(sql);

                // insertando parámetros lidos
                if(proceed)
                {

                    ps.setString(1, userID);
                    ps.setString(2, empresa);
                    ps.setString(3, setor);
                    ps.setString(4, cargo);
                    ps.setString(5, emailContato);
                    ps.setString(6, jornada);
                    ps.setString(7, cidade);
                    ps.setString(8, bairro);
                    ps.setString(9, dataLimiteAplicacao);
                    ps.setString(10, dataMinimaFormacao);
                    ps.setString(11, dataMaximaFormacao);
                    ps.setString(12, salario);
                    ps.setString(13, descricao);
                    ps.setString(14, requisitos);
                    ps.executeUpdate();%>
                    <script type="text/javascript">
                        location.href= "PaginaDivulgador.jsp?userID=" + <% out.println(userID); %>;
                    </script> <%
                }
                else
                {
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
                        %>
                        Preenxa todos os campos !
                        <a href=<% out.println(auxiliar);%>)>Recomeçar</a>
                        <%
                }
                if(proceed)
                {
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
                %>
                <script type="text/javascript">
                    location.href="PaginaDivulgador.jsp?userID="+<% out.println(userID); %>;
                </script> 
                <%
                }
                // leendo o banco para mostrar conteudo em tabela HTML
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
    </body>
</html>


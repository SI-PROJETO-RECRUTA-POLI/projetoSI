<%-- 
    Document   : resultadoLogin
    Author     : Vinicius e Leonardo
--%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<!especificando objeto JAVA que contém os dados do formulário em index.jsp>
<jsp:useBean id="user" class="user.userData" scope="session"/>
<jsp:setProperty name="user" property="*"/>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Result</title>
    </head>
    <body>
        <%
            // Setando parámetros para conectar com o servidor de banco de dados
            //String url = "jdbc:mysql://localhost/email_contacts?";
            String url = "jdbc:mysql://localhost/testes?";
            //String uid = "root";
            String uid = "root";
            //String pwd = "venceremos";
            String pwd = "admin179403";

            String userIdKey = "UserSessionId";
            String userEmailKey = "UserSessionEmail";
            String userNameKey = "UserSessionName";
            String userPermissionKey = "UserSessionPermission";
            
            String paginaDivulgador = "PaginaDivulgador.jsp";
            String paginaAluno = "PaginaAluno.jsp";
            String paginaSecaoGraduacao = "PaginaSecaoGraduacao.jsp";
            
            Connection conn = null;
            ResultSet results = null;
   
            String userPage = null; 
            try
            {
                // fazendo a conexão com o servidor
                // carregando driver certo para conexão
              
                Class.forName("com.mysql.jdbc.Driver");
  
                conn = DriverManager.getConnection(url, uid, pwd);


                // lendo parámetros obtido do formulário na página index.jsp
                String usuario = user.getUserName();
                String password = user.getPassword();

                boolean proceed = false;
		
		PreparedStatement ps = null;
                String sql;
                  
                // comando SQL
                sql = "SELECT * FROM usuario WHERE email=?";
                ps = conn.prepareStatement(sql);
    
                // inserindo parámetros lidos
                ps.setString(1, usuario);
      
		results=ps.executeQuery();
               
		if(results.isBeforeFirst()){
			results.next();
			if(password.equals(results.getString(4))) proceed = true;	
		}

        

                if (proceed == false){
                %>
                        USUÁRIO OU SENHA INCORRETOS!
                        <a href="index.html">Retornar</a>
                <%
                   }
                else{
                        int userPermission = results.getInt(5);
			if(session.isNew()){
				session.setAttribute(userIdKey, results.getInt(1));
				session.setAttribute(userEmailKey, usuario);
				session.setAttribute(userNameKey, results.getString(3));
				session.setAttribute(userPermissionKey, userPermission);
                        }
                        // out.print("permissão="+userPermission);
			switch (userPermission){
                            case 1:
                                userPage=paginaDivulgador;
                                break;  
                            case 2:
                                userPage=paginaAluno;
                                break;
                            case 3:
                                userPage = paginaSecaoGraduacao;
                                break;
                        }
                        response.sendRedirect(userPage);
		}
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

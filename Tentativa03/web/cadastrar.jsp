<%-- 
    Document   : cadastrarGames
    Created on : 26 de abr. de 2023, 13:56:36
    Author     : dxwen
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="conexao.Conexao"%>
<%@page import="java.sql.Connection"%>
<%
if (request.getParameter("submit").equals("Submit")) { 

      String nome = request.getParameter("nome");

    Connection con = new Conexao().abrir(); //conexão com o banco
        String sql= "insert into nome(nome) values(?)";
                               
        PreparedStatement stmt = con.prepareStatement(sql);
//Pego os parametros (definindo as ???)
        stmt.setString(1, nome);

   
        
//executando o sql
        stmt.execute();

        stmt.close();
        con.close(); //fecha conexao com o banco     
        
   }
%>
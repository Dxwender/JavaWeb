<%-- 
    Document   : cadastrarCliente
    Created on : 19 de mar. de 2023, 18:16:23
    Author     : dxwen
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="conexao.Conexao"%>
<%@page import="java.sql.Connection"%>
<%
if (request.getParameter("enviar").equals("Enviar")) {    
    String nome = request.getParameter("nome");
    String email= request.getParameter("email");
    String telefone= request.getParameter("telefone");
    String dataNascimento= request.getParameter("dataNascimento");
    String cpf = request.getParameter("cpf");
    String identidade = request.getParameter("identidade");
    String rua = request.getParameter("rua");
    String numero = request.getParameter("numero");
    String bairro = request.getParameter("bairro");
    String cep = request.getParameter("cep");
    String cidade = request.getParameter("cidade");
    
    Connection con = new Conexao().abrir(); //conexão com o banco
        String sql= "insert into cliente(nome,email,telefone,data_nascimento,cpf,identidade,rua,numero,bairro,cep,cidade) values(?,?,?,?,?,?,?,?,?,?,?)";

        PreparedStatement stmt = con.prepareStatement(sql);
//Pego os parametros (definindo as ???)
        stmt.setString(1, nome);
        stmt.setString(2, email);
        stmt.setString(3, telefone);
        stmt.setString(4, dataNascimento);
        stmt.setString(5, cpf);
        stmt.setString(6, identidade);
        stmt.setString(7, rua);
        stmt.setString(8, numero);
        stmt.setString(9, bairro);
        stmt.setString(10, cep);
        stmt.setString(11, cidade);
        
//executando o sql
        stmt.execute();

        stmt.close();
        con.close(); //fecha conexao com o banco     
        
   }
%>
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
    
    //String data= request.getParameter("data");
    
    //String cod= request.getParameter("cod");
    
    //String time= request.getParameter("time");
    
    //String platafom = request.getParameter("platafom");
    
    //String regiao = request.getParameter("regiao");
    
    //String dev = request.getParameter("dev");
    
    //String faixa = request.getParameter("faixa");
    
    //String desc = request.getParameter("desc");
   
    
    Connection con = new Conexao().abrir(); //conexão com o banco
        String sql= "insert into games(nome) values(?)";
        //Na ordem                     // ,ano_de_lan,cod_bar,horas_dur,platafom,regiao,devs,faix_eta,descr //,?,?,?,?,?,?,?,?                               
        PreparedStatement stmt = con.prepareStatement(sql);
//Pego os parametros (definindo as ???)
        stmt.setString(1, nome);
        //stmt.setString(2, data);
        //stmt.setString(2, cod);
        //stmt.setString(4, time);
        //stmt.setString(3, platafom);
        //stmt.setString(6, regiao);
        //stmt.setString(4, dev);
        //stmt.setString(8, faixa);
        //stmt.setString(5, desc);
   
        
//executando o sql
        stmt.execute();

        stmt.close();
        con.close(); //fecha conexao com o banco     
        
   }
%>
package conexao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexao {
    
    public static final String USUARIO= "root";
    public static final String SENHA  = "";
    public static final String URL    = "jdbc:mysql://127.0.0.1:3306/nome";
    public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    

    // 
    // Conectar ao banco
    public Connection abrir() throws ClassNotFoundException, SQLException   {
     
        // 
        Class.forName(DRIVER);
        
        // Capturar a conexão
        Connection abc = DriverManager.getConnection(URL, USUARIO, SENHA);
        
        // Retorna a conexao aberta
        System.out.println("Conectou --------------------");
      
        return abc;


    }
  
}
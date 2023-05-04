
package br.com.DAO_acesso_ao_objeto;
import java.sql.Connection;
import java.sql.DriverManager;
public class ConexaoDAO {
    public Connection conexaoBD(){
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            //olhar user/senha E Drive mananger 
            String url=" jdbc:mysql://localhost:3306/sistemabiblioteca?user=adm&password=adm";
            con = DriverManager.getConnection(url);
        } catch (Exception e) {
            System.out.println("Error");
        }
        return con;
    }
}

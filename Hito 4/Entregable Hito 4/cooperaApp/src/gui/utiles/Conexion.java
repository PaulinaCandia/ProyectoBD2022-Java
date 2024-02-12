package gui.utiles;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

	private Connection con;
	public boolean conectar() {
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String usuario= "usuario";
			String pass = "usu123";
			//com.mysql.cj.jdbc.Driver
			Class.forName("oracle.jdbc.driver.OracleDriver");
			this.con = DriverManager
					.getConnection(url,usuario,pass);
			return true;
		}catch(Exception ex) {
			System.out.println("Error de conexión" + ex);
			return false;
		}
	}
	
	
	
	public Connection getCon() {
		return con;
	}



	public void desconectar() {
		try {
			this.con.close();
		}catch(Exception ex) {
			
		}
	}
}

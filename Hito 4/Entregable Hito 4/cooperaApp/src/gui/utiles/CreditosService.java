package gui.utiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import clases.Creditos;
import gui.utiles.Conexion;

public class CreditosService {

	private Conexion conexion = new Conexion();
	public void save(Creditos c) {

	}
	
	public List<Creditos> getAll(){
		List<Creditos> lista = new ArrayList<Creditos>();
		try {
	
			String sql = "SELECT ID_CREDITO, NOMBRE, DESCRIPCION, TASA_INTERES, CUOTAS_MAX FROM CREDITOS ORDER BY NOMBRE DESC";
			
			conexion.conectar();

			Connection con = conexion.getCon();
			
			PreparedStatement st = con.prepareStatement(sql);
			
			ResultSet rs = st.executeQuery();

			while(rs.next()) {
				Creditos c = new Creditos();
				c.setID_CREDITO(rs.getInt(1));
				c.setNOMBRE(rs.getString(2));
				c.setDESCRIPCION(rs.getString(3));
				c.setTASA_INTERES(rs.getFloat(4));
				c.setCUOTAS_MAX(rs.getInt(5));
				lista.add(c);
			}
			rs.close();
		}catch(Exception ex) {
			
		}finally {
			conexion.desconectar();
		}
		return lista;
	}
	

	
}




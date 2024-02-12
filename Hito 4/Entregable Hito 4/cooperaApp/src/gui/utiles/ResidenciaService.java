package gui.utiles;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import clases.Residencia;
import gui.Conexion;

public class ResidenciaService {
	private Conexion conexion = new Conexion();
	
	

	public Residencia find(String ID_RESIDENCIA) {
		this.conexion.conectar();
		Residencia residencia = null;
		try {
			String sql = "SELECT ID_RESIDENCIA, CIUDAD,REGION"
					+" WHERE JOB_ID=? ";
			PreparedStatement st = this.conexion.getCon().prepareStatement(sql);
			st.setString(1, ID_RESIDENCIA);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				
				residencia = new Residencia();
				residencia.setID_RESIDENCIA(rs.getInt(1));
				residencia.setCIUDAD(rs.getString(2));
				residencia.setREGION(rs.getString(3));
				
				
			}
			rs.close();
			return residencia;
		}catch(Exception ex) {
			return null;
		}finally {
			this.conexion.desconectar();
		}
	}
	

	public boolean save(Residencia residencia) {
		this.conexion.conectar();
		try {
			String sql = "INSERT INTO RESIDENCIAS (ID_RESIDENCIA,CIUDAD,REGION)"
					+" VALUES(?,?,?,?)";
			
			PreparedStatement st = this.conexion.getCon().prepareStatement(sql);
			st.setInt(1, residencia.getID_RESIDENCIA());
			st.setString(2, residencia.getCIUDAD());
			st.setString(3, residencia.getREGION());
			
			st.executeUpdate();
			
			return true;
			
		}catch(SQLException ex) {
			return false;
		}finally {
			this.conexion.desconectar();
		}
	}
	


	
}


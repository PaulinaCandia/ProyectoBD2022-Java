package cl.unab.hrModel.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cl.unab.hrModel.entities.Employee;
import cl.unab.hrModel.utils.Conexion;

public class EmployeesService {

	private Conexion conexion = new Conexion();
	public void save(Employee e) {
		//TODO: Hacer un insert
	}
	
	public List<Employee> getAll(){
		List<Employee> lista = new ArrayList<Employee>();
		try {
			//1. CREAR LA SENTENCIA
			//String sql = "SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,HIRE_DATE FROM EMPLOYEES WHERE FIRST_NAME=? AND LAST_NAME=?"
			String sql = "SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,lower(EMAIL)||'@oracle.com',HIRE_DATE FROM EMPLOYEES ORDER BY LAST_NAME";
			//2. Obtener una coneccion
			conexion.conectar();

			Connection con = conexion.getCon();
			//3. Generar un statement
			PreparedStatement st = con.prepareStatement(sql);
			//4. Ejecutar el statement
			//st.setString(1,"LUCHO" );
			//st.setString(2,"BARRIOS" );
			ResultSet rs = st.executeQuery();
			//5. Recorrer resultset
			while(rs.next()) {
				Employee e = new Employee();
				e.setEmployeeId(rs.getInt(1));
				e.setFirstName(rs.getString(2));
				e.setLastName(rs.getString(3));
				e.setEmail(rs.getString(4));
				e.setHireDate(rs.getTimestamp(5));
				lista.add(e);
			}
			rs.close();
		}catch(Exception ex) {
			
		}finally {
			conexion.desconectar();
		}
		return lista;
	}
	
	public void update(Employee e) {
		//TODO: Hacer un update
	}
	
	public void remove(Employee e) {
		//TODO: Hacer un delete
	}
	
}

package cl.unab.hrModel.services;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cl.unab.hrModel.entities.Employee;
import cl.unab.hrModel.entities.Job;
import cl.unab.hrModel.utils.Conexion;

public class JobsService {
	private Conexion conexion = new Conexion();
	
	
	/**
	 * Busca un job por id
	 * @param jobId
	 * @return un objeto job cuando lo encuentra o null cuando no
	 */
	public Job find(String jobId) {
		this.conexion.conectar();
		Job job = null;
		try {
			String sql = "SELECT JOB_ID, JOB_TITLE, MAX_SALARY, MIN_SALARY FROM JOBS"
					+" WHERE JOB_ID=? ";
			PreparedStatement st = this.conexion.getCon().prepareStatement(sql);
			st.setString(1, jobId);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				
				job = new Job();
				job.setJobId(rs.getString(1));
				job.setJobTitle(rs.getString(2));
				job.setMaxSalary(rs.getInt(3));
				job.setMinSalary(rs.getInt(4));
				
			}
			rs.close();
			return job;
		}catch(Exception ex) {
			return null;
		}finally {
			this.conexion.desconectar();
		}
	}
	
	/**
	 * Almacena un nuevo cargo
	 * @param j
	 * @return resultado
	 */
	public boolean save(Job j) {
		this.conexion.conectar();
		try {
			String sql = "INSERT INTO JOBS (JOB_ID,JOB_TITLE,MIN_SALARY,MAX_SALARY)"
					+" VALUES(?,?,?,?)";
			
			PreparedStatement st = this.conexion.getCon().prepareStatement(sql);
			st.setString(1, j.getJobId());
			st.setString(2, j.getJobTitle());
			st.setInt(3, j.getMinSalary());
			st.setInt(4, j.getMaxSalary());
			
			st.executeUpdate();
			
			return true;
			
		}catch(SQLException ex) {
			return false;
		}finally {
			this.conexion.desconectar();
		}
	}
	
	public List<Job> getAll(){
		this.conexion.conectar();
		List<Job> trabajos = new ArrayList<Job>();
		try {
			String sql = "SELECT JOB_ID, JOB_TITLE, MAX_SALARY, MIN_SALARY FROM JOBS ORDER BY JOB_TITLE";
			PreparedStatement st = this.conexion.getCon().prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				
				Job job = new Job();
				job.setJobId(rs.getString(1));
				job.setJobTitle(rs.getString(2));
				job.setMaxSalary(rs.getInt(3));
				job.setMinSalary(rs.getInt(4));
				trabajos.add(job);
			}
			rs.close();
			return trabajos;
		}catch(Exception ex) {
			return null;
		}finally {
			this.conexion.desconectar();
		}
	}
	
	public boolean update(Job job) {
		
		this.conexion.conectar();
		try {
			String sql = "UPDATE JOBS SET JOB_TITLE=?,"
					+ "MAX_SALARY=?,"
					+ "MIN_SALARY=?"
					+ " WHERE JOB_ID=?";
			PreparedStatement st = this.conexion.getCon().prepareStatement(sql);
			st.setString(1, job.getJobTitle());
			st.setInt(2, job.getMaxSalary());
			st.setInt(3, job.getMinSalary());
			st.setString(4, job.getJobId());
			st.executeUpdate();
			return true;
		}catch(Exception ex) {
			return false;
		}finally {
			this.conexion.desconectar();
		}
	}
	
	public boolean delete(Job j) {
		this.conexion.conectar();
		try {
			
			String sql = "DELETE FROM JOBS WHERE JOB_ID=?";
			PreparedStatement st = this.conexion.getCon().prepareStatement(sql);
			st.setString(1, j.getJobId());
			
			st.executeUpdate();
			
			return true;
		}catch(Exception ex) {
			return false;
		}finally {
			this.conexion.desconectar();
		}
	
	}
	
}

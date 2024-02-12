package cl.unab.hrModel.entities;

public class Job {

	private String jobId;
	private String jobTitle;
	private int maxSalary;
	private int minSalary;
	
	public String getJobId() {
		return jobId.toUpperCase();
	}
	public void setJobId(String jobId) {
		this.jobId = jobId.toUpperCase();
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public int getMaxSalary() {
		return maxSalary;
	}
	public void setMaxSalary(int maxSalary) {
		this.maxSalary = maxSalary;
	}
	public int getMinSalary() {
		return minSalary;
	}
	public void setMinSalary(int minSalary) {
		this.minSalary = minSalary;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.jobId + " " + this.jobTitle;
	}
	
	
	
	
}

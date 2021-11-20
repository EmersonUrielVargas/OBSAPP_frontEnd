package model;

public class Projects {
	

	private int project_id;
	private String name;
	private String description;
	private int score;
	private Users developer_id;
	private ODS ods_id;
	
	
	public Projects() {
		super();
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public int getScore() {
		return score;
	}


	public void setScore(int score) {
		this.score = score;
	}


	public int getProject_id() {
		return project_id;
	}


	public Users getDeveloper_id() {
		return developer_id;
	}
	
	
	
	
	
	
	
}

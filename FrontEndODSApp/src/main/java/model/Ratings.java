package model;



public class Ratings {
	
	private int rating_id;
	private Users author_id;
	private Projects project_id;
	
	private int score;
	
	public Ratings() {
		super();
	}
	
	public int getRating_id() {
		return rating_id;
	}
	
	public Users getAuthor_id() {
		return author_id;
	}

	public Projects getProject_id() {
		return project_id;
	}

	public void setProject_id(Projects project_id) {
		this.project_id = project_id;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public void setRating_id(int rating_id) {
		this.rating_id = rating_id;
	}

	public void setAuthor_id(Users author_id) {
		this.author_id = author_id;
	}
	
	
	
	
	
	
}

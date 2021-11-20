package model;

import java.util.Date;

public class Comments {
	
	private int comment_id;
	private Date date;
	private Users author_id;
	private Projects project_id;
	private String message;
	
	
	
	public Comments() {
		super();
	}

	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}

}

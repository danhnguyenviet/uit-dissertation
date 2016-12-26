package com.wespeak.model;

public class Courseware {
	
	private Integer coursewareId;
	private String coursewareName;
	private String description;
	private Integer active;
	private String coursewarePath;
	private Integer contributorId;
	private String author;
	private Integer numOfView;
	
	public Courseware(){
		super();
	}
	
	public Courseware(Integer coursewareId, String coursewareName, String description, Integer active,
			String coursewarePath, Integer contributorId, String author, Integer numOfView) {
		super();
		this.coursewareId = coursewareId;
		this.coursewareName = coursewareName;
		this.description = description;
		this.active = active;
		this.coursewarePath = coursewarePath;
		this.contributorId = contributorId;
		this.author = author;
		this.numOfView = numOfView;
	}

	public Integer getCoursewareId() {
		return coursewareId;
	}

	public void setCoursewareId(Integer coursewareId) {
		this.coursewareId = coursewareId;
	}

	public String getCoursewareName() {
		return coursewareName;
	}

	public void setCoursewareName(String coursewareName) {
		this.coursewareName = coursewareName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}

	public String getCoursewarePath() {
		return coursewarePath;
	}

	public void setCoursewarePath(String coursewarePath) {
		this.coursewarePath = coursewarePath;
	}

	public Integer getContributorId() {
		return contributorId;
	}

	public void setContributorId(Integer contributorId) {
		this.contributorId = contributorId;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Integer getNumOfView() {
		return numOfView;
	}

	public void setNumOfView(Integer numOfView) {
		this.numOfView = numOfView;
	}
	
}

package com.wespeak.model;

public class ClassList {
	private int ClassId;
	private String ClassName;
	private String StartDate;
	private String EndDate;
	private int TeacherId;
	private String FullName;

	public ClassList(int ClassId, String ClassName, String StartDate, String EndDate, int TeacherId, String FullName) {
		this.ClassId = ClassId;
		this.ClassName = ClassName;
		this.StartDate = StartDate;
		this.EndDate = EndDate;
		this.TeacherId = TeacherId;
		this.FullName = FullName;
	}

	public ClassList() {

	}

	public int getClassId() {
		return ClassId;
	}

	public void setClassId(int classId) {
		ClassId = classId;
	}

	public String getClassName() {
		return ClassName;
	}

	public void setClassName(String className) {
		ClassName = className;
	}

	public String getStartDate() {
		return StartDate;
	}

	public void setStartDate(String startDate) {
		StartDate = startDate;
	}

	public String getEndDate() {
		return EndDate;
	}

	public void setEndDate(String endDate) {
		EndDate = endDate;
	}

	public int getTeacherId() {
		return TeacherId;
	}

	public void setTeacherId(int teacherId) {
		TeacherId = teacherId;
	}

	public String getFullName() {
		return FullName;
	}

	public void setFullName(String fullName) {
		FullName = fullName;
	}
}

package com.hccs.advweb;

public class Student {
	private int id;
	private String fName;
	private String lName;
	
	public Student() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}
	
	public Student(int _id, String _fName, String _lName) {
		id = _id;
		fName = _fName;
		lName = _lName;
	}

}

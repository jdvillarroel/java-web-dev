package com.hccs.advweb;

import java.util.ArrayList;

public class StudentsList {
	
	private static ArrayList<Student> studentsList = null;
	
	public static ArrayList<Student> getStudentsList() {
		if ((studentsList == null) || (studentsList.size() == 0)) {
			
			studentsList = new ArrayList<Student>();
			studentsList.add(new Student(1,"Jane","Doe"));
			studentsList.add(new Student(2,"Chuck","Norris"));
			studentsList.add(new Student(3,"John","Doe"));
			studentsList.add(new Student(4,"Keanu","Reeves"));
			studentsList.add(new Student(5,"Scarlett","Johansson"));
		}
		System.out.println("Student List ---->"+studentsList);
		for (Student st:studentsList) {
			System.out.println(st.getId() + st.getfName() + st.getlName());
		}
		return studentsList;
	}
	public static void setStudentsList(ArrayList<Student> _studentsList) {
		studentsList = _studentsList;
	}

	public static ArrayList<Student> addStudent(Student student) {
		getStudentsList().add(student);
		return studentsList;
	}

	public StudentsList() {
		// TODO Auto-generated constructor stub
	}

}

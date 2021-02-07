package com.hccs.advweb;

import java.util.ArrayList;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddStudent
 */
// @WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Get current students list.
		ArrayList<Student> studentsList = StudentsList.getStudentsList();
		
		// Get the button that was pressed when form was submitted.
		String btnPressed = request.getParameter("button");
		System.out.println("Button Pressed: " + btnPressed);
		
		// Get the rest of data from form
		String studentID = request.getParameter("id");
		String studentFName = request.getParameter("fName");
		String studentLName = request.getParameter("lName");
		
		if (btnPressed.equals("addStudent")) {
			// Create student object from data provided
			Student student = new Student(Integer.parseInt(studentID), studentFName, studentLName);
			
			// Add student to list
			studentsList.add(student);
			//StudentsList.setStudentsList(studentsList);
			
			// Set attribute to new students list and render back to form.jsp
			request.setAttribute("stList", studentsList);			
			request.getRequestDispatcher("form.jsp").forward(request, response);
			
		} else if (btnPressed.equals("removeStudent")) {
			studentsList.remove(Integer.parseInt(studentID) - 1);
			
			
			// Set attribute to new students list and render back to form.jsp
			request.setAttribute("stList", studentsList);		
			request.getRequestDispatcher("form.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 doGet(request, response);		
		
	}

}

package com.schoolerp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



/**
 * Servlet implementation class EnquiryForm
 */
public class EnquiryForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnquiryForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String student_name=request.getParameter("studentname");
		String parent_name=request.getParameter("parentname");
		String admission_class=request.getParameter("admission_class");
		String mob_no=request.getParameter("mobileno");
		String email_id=request.getParameter("emailid");
		String enquiry_msg=request.getParameter("enquirymsg");
		Member member=new Member(student_name, parent_name, admission_class, mob_no, email_id, enquiry_msg);
		EnquiryDao ed=new EnquiryDao();
		String result=ed.insert(member);
		//response.getWriter().print(result);
		request.setAttribute("error", result);
		RequestDispatcher rdp=request.getRequestDispatcher("newenquiryform.jsp");
		rdp.forward(request, response);
	}

}

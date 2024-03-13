package com.schoolerp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class StudentValidation
 */
public class StudentValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentValidation() {
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
	
	private String dburl="jdbc:mysql://localhost:3306/schooldb";
	private String dbuname="root";
	private String dbpassword="rootadmin@123";
	private String dbdriver="com.mysql.jdbc.Driver";
	
	public void loadDriver(String dbdriver) {
		try {
			Class.forName(dbdriver);
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		Connection con=null;
		try {
			con=DriverManager.getConnection(dburl,dbuname,dbpassword);
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		loadDriver(dbdriver);
		Connection con=getConnection();
		String query="select * from student where username=? and password=?";
		String res="";
		try {
			PrintWriter out=response.getWriter();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, uname);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				RequestDispatcher rdp=request.getRequestDispatcher("student.jsp");
				rdp.forward(request, response);
			}
			else {
				res="Invalid Credentials";
				out.println("<html><head>");
	            out.println("<script type='text/javascript'>");
	            out.println("alert(" + "'" + res + "'" + ");</script>");
	            out.println("</head><body></body></html>");
			}
		}
		catch(SQLException e) {
			res=e.getMessage();
			e.printStackTrace();
			request.setAttribute("error", res);
			RequestDispatcher rdp=request.getRequestDispatcher("newheader.jsp");
			rdp.forward(request, response);
		}
		
		
		
	}

}

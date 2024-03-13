package com.schoolerp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class TestForm
 */
@MultipartConfig
public class TestForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestForm() {
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
		
		Part file=request.getPart("file1");
		InputStream fileSt=file.getInputStream();
		loadDriver(dbdriver);
		Connection con=getConnection();
		String res="Your file has been uploaded";
		String query="insert into testfile values(?)";
		
		try {
			PreparedStatement pt=con.prepareStatement(query);
			pt.setBinaryStream(1, fileSt,(int)file.getSize());
			pt.execute();
		}
		catch(SQLException e) {
			res=e.getMessage();
			e.printStackTrace();
		}
		request.setAttribute("error", res);
		RequestDispatcher rdp=request.getRequestDispatcher("testfile.jsp");
		rdp.forward(request, response);
	}

}

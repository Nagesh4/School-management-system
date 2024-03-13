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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Servlet implementation class AdmissionForm
 */
@MultipartConfig
public class AdmissionForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdmissionForm() {
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
	public int admissionNo() {
		int count=0;
		loadDriver(dbdriver);
		Connection con=getConnection();
		String query="select count(*) from admissionform";
		try {
			Statement stat=con.createStatement();
			ResultSet rs=stat.executeQuery(query);
			rs.next();
			count=rs.getInt(1);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return count;
		
	}	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String academic_year=request.getParameter("academic");
		String admission_year=request.getParameter("admissionclass");
		String branch=request.getParameter("branch");
		String first_name=request.getParameter("firstname");
		String middle_name=request.getParameter("middlename");
		String last_name=request.getParameter("lastname");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		String mother_tongue=request.getParameter("mothertongue");
		String nationality=request.getParameter("nationality");
		String religion=request.getParameter("religion");
		String caste=request.getParameter("caste");
		String family_income=request.getParameter("income");
		String relation_with_student=request.getParameter("relationwithstudent");
		String contactno=request.getParameter("pointofcontact");
		String father_name=request.getParameter("fathername");
		String father_occupation=request.getParameter("fatheroccupation");
		String father_mobno=request.getParameter("fatherno");
		String father_email=request.getParameter("fatheremail");
		String mother_name=request.getParameter("mothername");
		String mother_occupation=request.getParameter("motheroccupation");
		String mother_mobno=request.getParameter("motherno");
		String mother_email=request.getParameter("motheremail");
		String address1=request.getParameter("address1");
		String adress2=request.getParameter("address2");
		String country=request.getParameter("country");
		String state=request.getParameter("state");
		String pincode=request.getParameter("pincode");
		String city=request.getParameter("city");
		Part photo=request.getPart("photo");
		InputStream photoSt=photo.getInputStream();
		Part adharcard=request.getPart("adharcard");
		InputStream adharcardSt=adharcard.getInputStream();
		Part leavindcertificate=request.getPart("leavindcertificate");
		InputStream leavindcertificateSt=leavindcertificate.getInputStream();
		Part birthcertificate=request.getPart("birthcertificate");
		InputStream birthcertificateSt=birthcertificate.getInputStream();
		Part castecertificate=request.getPart("castecertificate");
		InputStream castecertificateSt=castecertificate.getInputStream();
		Part parentadharcard=request.getPart("parentadharcard");
		InputStream parentadharcardSt=parentadharcard.getInputStream();
		String name_of_prev_school=request.getParameter("preschoolname");
		String prev_school_class=request.getParameter("preschoolclass");
		String reason_for_leaving_prev_school=request.getParameter("preschoolleave");
		String learning_disability=request.getParameter("learning_disablity");
		String physically_challenged=request.getParameter("physically_challenged");
		String mentally_challenged=request.getParameter("mentally_challenged");
		String special_needs_remark=request.getParameter("specialneedremark");
		
		loadDriver(dbdriver);
		Connection con=getConnection();
		String res="Your admission form has been submitted!!";
		String query="insert into admissionform values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			AdmissionForm af=new AdmissionForm();
			int count=af.admissionNo();
			count=count+1;
			String admno="Adm"+count;
			SimpleDateFormat formatter=new SimpleDateFormat("yyyy/MM/dd");
			SimpleDateFormat formatter2=new SimpleDateFormat("HH:mm:ss");
			Date date=new Date();
			java.sql.Date myDate=new java.sql.Date(date.getTime());
			java.sql.Time myTime=new java.sql.Time(date.getTime());
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,admno);
			ps.setString(2, academic_year);
			ps.setString(3, admission_year);
			ps.setString(4, branch);
			ps.setString(5, first_name);
			ps.setString(6, middle_name);
			ps.setString(7, last_name);
			ps.setString(8, dob);
			ps.setString(9, gender);
			ps.setString(10, mother_tongue);
			ps.setString(11, nationality);
			ps.setString(12, religion);
			ps.setString(13, caste);
			ps.setString(14, family_income);
			ps.setString(15, relation_with_student);
			ps.setString(16, contactno);
			ps.setString(17, father_name);
			ps.setString(18, father_occupation);
			ps.setString(19, father_mobno);
			ps.setString(20, father_email);
			ps.setString(21, mother_name);
			ps.setString(22, mother_occupation);
			ps.setString(23, mother_mobno);
			ps.setString(24, mother_email);
			ps.setString(25, address1);
			ps.setString(26, adress2);
			ps.setString(27, country);
			ps.setString(28, state);
			ps.setString(29, pincode);
			ps.setString(30, city);
			ps.setBinaryStream(31, photoSt, (int)photo.getSize());
			ps.setBinaryStream(32, adharcardSt, (int)adharcard.getSize());
			ps.setBinaryStream(33, leavindcertificateSt, (int)leavindcertificate.getSize());
			ps.setBinaryStream(34, birthcertificateSt, (int)birthcertificate.getSize());
			ps.setBinaryStream(35, castecertificateSt, (int)castecertificate.getSize());
			ps.setBinaryStream(36, parentadharcardSt, (int)parentadharcard.getSize());
			ps.setString(37, name_of_prev_school);
			ps.setString(38, prev_school_class);
			ps.setString(39, reason_for_leaving_prev_school);
			ps.setString(40, learning_disability);
			ps.setString(41, physically_challenged);
			ps.setString(42, mentally_challenged);
			ps.setString(43, special_needs_remark);
			ps.setDate(44, myDate);
			ps.setTime(45, myTime);
			ps.execute();
		}
		catch(SQLException e) {
			res=e.getMessage();
			e.printStackTrace();
		}
		request.setAttribute("error", res);
		RequestDispatcher rdp=request.getRequestDispatcher("admissionnew.jsp");
		rdp.forward(request, response);
	}

}

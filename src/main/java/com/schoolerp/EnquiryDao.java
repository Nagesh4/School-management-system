package com.schoolerp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class EnquiryDao {
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
	public int enquiryNo() {
		int count=0;
		loadDriver(dbdriver);
		Connection con=getConnection();
		String query="select count(*) from enquiry";
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
	public String insert(Member member) {
		loadDriver(dbdriver);
		Connection con=getConnection();
		String res="Your enquiry has been send";
		String sql="insert into enquiry values(?,?,?,?,?,?,?,?,?)";
		try {
			EnquiryDao ed=new EnquiryDao();
			int count=ed.enquiryNo();
			SimpleDateFormat formatter=new SimpleDateFormat("yyyy/MM/dd");
			SimpleDateFormat formatter2=new SimpleDateFormat("HH:mm:ss");
			Date date=new Date();
			java.sql.Date myDate=new java.sql.Date(date.getTime());
			java.sql.Time myTime=new java.sql.Time(date.getTime());
			count=count+1;
			String enqno="Enq"+count;
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,enqno);
			ps.setString(2, member.getStudent_name());
			ps.setString(3, member.getParent_name());
			ps.setString(4, member.getAdmission_class());
			ps.setString(5, member.getMob_no());
			ps.setString(6, member.getEmail_id());
			ps.setString(7, member.getEnquiry_msg());
			ps.setDate(8, myDate);
			ps.setTime(9, myTime);
			ps.execute();
		}catch(SQLException e) {
			res=e.getMessage();
			e.printStackTrace();
		}
		return res;
	}
}

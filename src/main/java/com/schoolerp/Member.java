package com.schoolerp;

public class Member {
	private String student_name, parent_name, admission_class, mob_no, email_id, enquiry_msg;

	public Member(String student_name, String parent_name, String admission_class, String mob_no, String email_id,
			String enquiry_msg) {
		super();
		this.student_name = student_name;
		this.parent_name = parent_name;
		this.admission_class = admission_class;
		this.mob_no = mob_no;
		this.email_id = email_id;
		this.enquiry_msg = enquiry_msg;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getParent_name() {
		return parent_name;
	}

	public void setParent_name(String parent_name) {
		this.parent_name = parent_name;
	}

	public String getAdmission_class() {
		return admission_class;
	}

	public void setAdmission_class(String admission_class) {
		this.admission_class = admission_class;
	}

	public String getMob_no() {
		return mob_no;
	}

	public void setMob_no(String mob_no) {
		this.mob_no = mob_no;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getEnquiry_msg() {
		return enquiry_msg;
	}

	public void setEnquiry_msg(String enquiry_msg) {
		this.enquiry_msg = enquiry_msg;
	}
	
}

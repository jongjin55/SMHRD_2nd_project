package com.VO;

public class memberVO {
	
	private int m_code;
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_address;
	private String m_phone;
	private String m_birth;
	private String m_gender;
	private String m_email;
	
	public memberVO(int m_code, String m_id, String m_pw, String m_name, String m_address, String m_phone,
			String m_birth, String m_gender, String m_email) {
		super();
		this.m_code = m_code;
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_address = m_address;
		this.m_phone = m_phone;
		this.m_birth = m_birth.substring(0, 10);
		this.m_gender = m_gender;
		this.m_email = m_email;
	}

	public memberVO(String m_pw, String m_name, String m_phone, String m_email) {
		// TODO Auto-generated constructor stub
		
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_phone = m_phone;
		this.m_email = m_email;
	}
	
	
	
	

	public memberVO(int getM_code, String getM_id,  String getM_address, String getM_phone, String getM_birth,
			 String getM_gender, String getM_Email, String getM_name) {
		// TODO Auto-generated constructor stub
		this.m_code = getM_code;
		this.m_id = getM_id;
		this.m_address = getM_address;
		this.m_phone = getM_phone;
		this.m_birth = getM_birth.substring(0, 10);
		this.m_gender = getM_gender;
		this.m_email = getM_Email;
		this.m_name = getM_name;
		
	}

	public memberVO(String getM_id,String m_pw, String getM_address, String getM_phone, String getM_birth,
			 String getM_gender, String getM_Email, String getM_name) {
		// TODO Auto-generated constructor stub
		
		this.m_id = getM_id;
		this.m_pw = m_pw;		
		this.m_address = getM_address;
		this.m_phone = getM_phone;
		this.m_birth = getM_birth.substring(0, 10);
		this.m_gender = getM_gender;
		this.m_email = getM_Email;
		this.m_name = getM_name;
		
	}
	public int getM_code() {
		return m_code;
	}

	public void setM_code(int m_code) {
		this.m_code = m_code;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pw() {
		return m_pw;
	}

	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_address() {
		return m_address;
	}

	public void setM_address(String m_address) {
		this.m_address = m_address;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public String getM_birth() {
		return m_birth;
	}

	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}

	public String getM_gender() {
		return m_gender;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	
	

}

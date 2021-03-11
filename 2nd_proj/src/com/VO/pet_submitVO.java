package com.VO;

public class pet_submitVO {

	private int s_code;
	private String s_id;
	private int s_num;
	private String s_date;
	
	public pet_submitVO(int s_code, String s_id, int s_num, String s_date) {
		super();
		this.s_code = s_code;
		this.s_id = s_id;
		this.s_num = s_num;
		this.s_date = s_date.substring(0, 10);
	}


	public String getS_date() {
		return s_date;
	}


	public int getS_code() {
		return s_code;
	}


	public String getS_id() {
		return s_id;
	}


	public int getS_num() {
		return s_num;
	}
	
	
	
}

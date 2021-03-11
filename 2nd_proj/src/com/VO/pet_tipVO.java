package com.VO;

public class pet_tipVO {

	private int t_code;
	private String t_id;
	private String t_title;
	private String t_date;
	private String t_content;
	private int t_hit;

	public pet_tipVO(int t_code, String t_id, String t_title, String t_date, String t_content, int t_hit) {
		super();
		this.t_code = t_code;
		this.t_id = t_id;
		this.t_title = t_title;
		this.t_date = t_date.substring(0, 10);
		this.t_content = t_content;
		this.t_hit = t_hit;
	}

	public pet_tipVO(int t_code, String t_id, String t_title, String t_date, int t_hit) {
		super();
		this.t_code = t_code;
		this.t_id = t_id;
		this.t_title = t_title;
		this.t_date = t_date.substring(0, 10);
		this.t_hit = t_hit;
	}
	
	public pet_tipVO(String t_id, String t_title, String t_date, String t_content, int t_hit) {
		super();
		
		this.t_id = t_id;
		this.t_title = t_title;
		this.t_date = t_date.substring(0, 10);
		this.t_content = t_content;
		this.t_hit = t_hit;
	}
	public int getT_code() {
		return t_code;
	}

	public String getT_id() {
		return t_id;
	}

	public String getT_title() {
		return t_title;
	}

	public String getT_date() {
		return t_date;
	}

	public String getT_content() {
		return t_content;
	}

	public int getT_hit() {
		return t_hit;
	}

}
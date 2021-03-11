package com.VO;

public class pet_boardVO {

	private int b_code;
	private String b_title;
	private String b_id;
	private String b_date;
	private String b_name;
	private int b_age;
	private String b_gender;
	private String b_spicies;
	private String b_content;
	private int b_food;
	private String b_image;

	public pet_boardVO(int b_code, String b_title, String b_id, String b_date, String b_name, int b_age,
			String b_gender, String b_spicies, String b_content, int b_food, String b_image) {
		super();
		this.b_code = b_code;
		this.b_title = b_title;
		this.b_id = b_id;
		this.b_date = b_date.substring(0, 10);
		this.b_name = b_name;
		this.b_age = b_age;
		this.b_gender = b_gender;
		this.b_spicies = b_spicies;
		this.b_content = b_content;
		this.b_food = b_food;
		this.b_image = b_image;
	}

	public int getB_code() {
		return b_code;
	}

	public String getB_title() {
		return b_title;
	}

	public String getB_id() {
		return b_id;
	}

	public String getB_date() {
		return b_date;
	}

	public String getB_name() {
		return b_name;
	}

	public int getB_age() {
		return b_age;
	}

	public String getB_gender() {
		return b_gender;
	}

	public String getB_spicies() {
		return b_spicies;
	}

	public String getB_content() {
		return b_content;
	}

	public int getB_food() {
		return b_food;
	}

	public String getB_image() {
		return b_image;
	}
	
	

}

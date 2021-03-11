package com.VO;

public class pet_petVO {

	private int p_code;
	private String p_spicies;
	private int p_label;
	
	public pet_petVO(int p_code, String p_spicies, int p_label) {
		super();
		this.p_code = p_code;
		this.p_spicies = p_spicies;
		this.p_label = p_label;
	}

	public pet_petVO(String p_spicies) {
		super();
		this.p_spicies = p_spicies;

	}
	public int getP_code() {
		return p_code;
	}

	public String getP_spicies() {
		return p_spicies;
	}

	public int getP_label() {
		return p_label;
	}
	
}

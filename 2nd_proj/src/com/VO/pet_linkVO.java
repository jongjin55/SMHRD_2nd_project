package com.VO;

public class pet_linkVO {

	
	private int l_code;
	private String l_pet;
	private String l_spicies;
	private int l_link;
	
	public int getL_code() {
		return l_code;
	}

	public String getL_pet() {
		return l_pet;
	}

	public String getL_spicies() {
		return l_spicies;
	}

	public int getL_link() {
		return l_link;
	}

	public pet_linkVO(int l_code, String l_pet, String l_spicies, int l_link) {
		super();
		this.l_code = l_code;
		this.l_pet = l_pet;
		this.l_spicies = l_spicies;
		this.l_link = l_link;
	}
}

package com.VO;

public class pet_qaVO{

   private int q_code;
   private String q_id;
   private String q_title;
   private String q_date;
   private String q_content;
   private int q_hit;
   
   public pet_qaVO(int q_code, String q_id, String q_title, String q_date, String q_content, int q_hit) {
      super();
      this.q_code = q_code;
      this.q_id = q_id;
      this.q_title = q_title;
      this.q_date = q_date.substring(0, 10);
      this.q_content = q_content;
      this.q_hit = q_hit;
   }
   public pet_qaVO(int q_code, String q_id, String q_title, String q_date, int q_hit) {
      super();
      this.q_code = q_code;
      this.q_id = q_id;
      this.q_title = q_title;
      this.q_date = q_date.substring(0, 10);
      this.q_hit = q_hit;
   }
   public pet_qaVO(String q_id, String q_title, String q_date, String q_content, int q_hit) {
      super();
      this.q_id = q_id;
      this.q_title = q_title;
      this.q_date = q_date.substring(0, 10);
      this.q_content = q_content;
      this.q_hit = q_hit;
   }
   public int getQ_code() {
      return q_code;
   }

   public void setQ_code(int q_code) {
      this.q_code = q_code;
   }

   public String getQ_id() {
      return q_id;
   }

   public void setQ_id(String q_id) {
      this.q_id = q_id;
   }

   public String getQ_title() {
      return q_title;
   }

   public void setQ_title(String q_title) {
      this.q_title = q_title;
   }

   public String getQ_date() {
      return q_date;
   }

   public void setQ_date(String q_date) {
      this.q_date = q_date;
   }

   public String getQ_content() {
      return q_content;
   }

   public int getQ_hit() {
	return q_hit;
}
public void setQ_content(String q_content) {
      this.q_content = q_content;
   }
   
   
   
   
}
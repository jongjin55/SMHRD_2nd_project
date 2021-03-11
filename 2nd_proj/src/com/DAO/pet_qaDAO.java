package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.VO.pet_qaVO;

public class pet_qaDAO {

   Connection conn = null;
   PreparedStatement psmt = null;
   ResultSet rs = null;

   int cnt = 0;
   pet_qaVO vo = null;

   public void getConn() {
      try {
         InputStream in = getClass().getResourceAsStream("../../../../db.properties");
         // 현재 memberDAO의 클래스 파일을 기준으로 파일을 읽어오기
         Properties p = new Properties();
         // properties 파일 형식을 읽을 수 있는 객체

         p.load(in);
         // properties파일형식으로 db.properties파일을 load

         Class.forName(p.getProperty("dbclass"));
         // 3. DB에 가서 id와 pw를 인증받는 절차
         String url = p.getProperty("dburl");
         String dbid = p.getProperty("dbid");
         String dbpw = p.getProperty("dbpw");

         // DB에 관련된 정보를 properties파일로 관리하는 방법
         conn = DriverManager.getConnection(url, dbid, dbpw);

      } catch (Exception e) {
         e.printStackTrace();
      }
   }

   public void close() {
      // conn, psmt, rs
      if (rs != null) {
         try {
            rs.close();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      }
      if (psmt != null) {
         try {
            psmt.close();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      }
      if (conn != null) {
         try {
            conn.close();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      }
   }

   public ArrayList<pet_qaVO> select() {

      ArrayList<pet_qaVO> arr = new ArrayList<pet_qaVO>();

      try {

         getConn();

         if (conn != null) {
            System.out.println("연결성공");
         } else {
            System.out.println("연결실패");
         }

         String sql = "select * from pet_qa order by q_code desc";
         psmt = conn.prepareStatement(sql);

         rs = psmt.executeQuery();

         while (rs.next()) {
            int q_code = rs.getInt(1);
            String q_id = rs.getString(2);
            String q_title = rs.getString(3);
            String q_date = rs.getString(4);
            int q_hit = rs.getInt(6);

            vo = new pet_qaVO(q_code, q_id, q_title, q_date, q_hit);
            arr.add(vo);
         }

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return arr;
   }

   public pet_qaVO selectOne(String code) {

      try {

         getConn();

         if (conn != null) {
            System.out.println("연결성공");
         } else {
            System.out.println("연결실패");
         }

         String sql = "select * from pet_qa where q_code = ?";
         psmt = conn.prepareStatement(sql);

         psmt.setString(1, code);

         rs = psmt.executeQuery();

         while (rs.next()) {
            int q_code = rs.getInt(1);
            String q_id = rs.getString(2);
            String q_title = rs.getString(3);
            String q_date = rs.getString(4);
            String q_content = rs.getString(5);
            int q_hit = rs.getInt(6);

            vo = new pet_qaVO(q_code, q_id, q_title, q_date, q_content, q_hit);
         
         }

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return vo;
   }
   
   public int delete(String code) {
      
      try {
         getConn();
         

         if (conn != null) {
            System.out.println("연결성공");
         } else {
            System.out.println("연결실패");
         }

         String sql = "delete from pet_qa where q_code = ?";
         
         psmt = conn.prepareStatement(sql);

         psmt.setString(1, code);

         cnt = psmt.executeUpdate();
         
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return cnt;
   }
   
   
   public int update(String id, String tit, String cont, int code) {
      
      try {
         getConn();
         
         if(conn != null) {
            System.out.println("연결성공");
         }else {
            System.out.println("연결실패");
         }
         
      String sql = "update pet_qa set q_title= ?, q_date= sysdate, q_content=? where q_code = ?";
      
      psmt = conn.prepareStatement(sql);
      
      psmt.setString(1, tit);
      psmt.setString(2, cont);
      psmt.setInt(3, code);
         
      cnt = psmt.executeUpdate();
      
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return cnt;
   }
   public void updateCnt(int hit, int code) {
	      
	      try {
	         getConn();
	         
	         if(conn != null) {
	            System.out.println("연결성공");
	         }else {
	            System.out.println("연결실패");
	         }
	         
	      String sql = "update pet_qa set q_hit = ? where q_code = ?";
	      
	      psmt = conn.prepareStatement(sql);
	      
	      psmt.setInt(1, hit);
	      psmt.setInt(2,  code);
	         
	      cnt = psmt.executeUpdate();
	      
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         close();
	      }
	  
	   }
   public int insert(String id, String title, String conts, int hit) {
      
      try {
         getConn();
         
         if(conn != null) {
            System.out.println("연결성공");
         }else {
            System.out.println("연결실패");
         }
         
         String sql = "insert into pet_qa values(pet_qa_seq.nextval, ?, ?, sysdate, ?, ?)";
         
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, id);
         psmt.setString(2, title);
         psmt.setString(3, conts);
         psmt.setInt(4,  hit);
         
         cnt = psmt.executeUpdate();
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return cnt;
   }

   public ArrayList<pet_qaVO> search(String name, String data) {
      
      ArrayList<pet_qaVO> arr = new ArrayList<pet_qaVO>();
      try {
         getConn();
         
         if(conn != null) {
            System.out.println("연결성공");
         }else {
            System.out.println("연결실패");
         }
         
         String data1 = "%"+ data+ "%";
         
         String sql = "select * from pet_qa where " + name + " like ? order by q_code desc";   
         
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, data1);
         
         rs = psmt.executeQuery();
         
         while(rs.next()) {
            int q_code = rs.getInt(1);
            String q_id = rs.getString(2);
            String q_title = rs.getString(3);
            String q_date = rs.getString(4);
            String q_content = rs.getString(5);
            int q_int = rs.getInt(6);

            vo = new pet_qaVO(q_code, q_id, q_title, q_date, q_content, q_int);
            arr.add(vo);
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         close();         
      }
      return arr;
   }
   

}
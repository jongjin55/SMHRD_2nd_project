package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.VO.pet_tipVO;

public class pet_tipDAO {

   Connection conn = null;
   PreparedStatement psmt = null;
   ResultSet rs = null;

   int cnt = 0;
   pet_tipVO vo = null;

   public void getConn() {
      try {
         InputStream in = getClass().getResourceAsStream("../../../../db.properties");
         // ���� memberDAO�� Ŭ���� ������ �������� ������ �о����
         Properties p = new Properties();
         // properties ���� ������ ���� �� �ִ� ��ü

         p.load(in);
         // properties������������ db.properties������ load

         Class.forName(p.getProperty("dbclass"));
         // 3. DB�� ���� id�� pw�� �����޴� ����
         String url = p.getProperty("dburl");
         String dbid = p.getProperty("dbid");
         String dbpw = p.getProperty("dbpw");

         // DB�� ���õ� ������ properties���Ϸ� �����ϴ� ���
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

   public ArrayList<pet_tipVO> select() {

      ArrayList<pet_tipVO> arr = new ArrayList<pet_tipVO>();

      try {

         getConn();

         if (conn != null) {
            System.out.println("���Ἲ��");
         } else {
            System.out.println("�������");
         }

         String sql = "select * from pet_tip order by t_code desc";
         psmt = conn.prepareStatement(sql);

         rs = psmt.executeQuery();

         while (rs.next()) {
            int q_code = rs.getInt(1);
            String q_id = rs.getString(2);
            String q_title = rs.getString(3);
            String q_date = rs.getString(4);
            int q_hit = rs.getInt(6);

            vo = new pet_tipVO(q_code, q_id, q_title, q_date, q_hit);
            arr.add(vo);
         }

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return arr;
   }

   public pet_tipVO selectOne(String code) {

      try {

         getConn();

         if (conn != null) {
            System.out.println("���Ἲ��");
         } else {
            System.out.println("�������");
         }

         String sql = "select * from pet_tip where t_code = ?";
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

            vo = new pet_tipVO(q_code, q_id, q_title, q_date, q_content, q_hit);
         
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
            System.out.println("���Ἲ��");
         } else {
            System.out.println("�������");
         }

         String sql = "delete from pet_tip where t_code = ?";
         
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
            System.out.println("���Ἲ��");
         }else {
            System.out.println("�������");
         }
         
      String sql = "update pet_tip set t_title= ?, t_date= sysdate, t_content=? where t_code = ?";
      
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
	            System.out.println("���Ἲ��");
	         }else {
	            System.out.println("�������");
	         }
	         
	      String sql = "update pet_tip set t_hit = ? where t_code = ?";
	      
	      psmt = conn.prepareStatement(sql);
	      
	      psmt.setInt(1, hit);
	      psmt.setInt(2, code);
	         
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
            System.out.println("���Ἲ��");
         }else {
            System.out.println("�������");
         }
         
         String sql = "insert into pet_tip values(pet_tip_seq.nextval, ?, ?, sysdate, ?, ?)";
         
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, id);
         psmt.setString(2, title);
         psmt.setString(3, conts);
         psmt.setInt(4, hit);
         
         cnt = psmt.executeUpdate();
         
      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         close();
      }
      return cnt;
   }

   public ArrayList<pet_tipVO> search(String name, String data) {
      
      ArrayList<pet_tipVO> arr = new ArrayList<pet_tipVO>();
      try {
         getConn();
         
         if(conn != null) {
            System.out.println("���Ἲ��");
         }else {
            System.out.println("�������");
         }
         
         String data1 = "%"+ data+ "%";
         
         String sql = "select * from pet_tip where " + name + " like ? order by t_code desc";   
         
         psmt = conn.prepareStatement(sql);
         
         psmt.setString(1, data1);
         
         rs = psmt.executeQuery();
         
         while(rs.next()) {
            int q_code = rs.getInt(1);
            String q_id = rs.getString(2);
            String q_title = rs.getString(3);
            String q_date = rs.getString(4);
            String q_content = rs.getString(5);
            int q_hit = rs.getInt(6);

            vo = new pet_tipVO(q_code, q_id, q_title, q_date, q_content, q_hit);
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
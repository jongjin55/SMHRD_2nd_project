package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.VO.memberVO;


public class memberDAO {
	// DAO (Data Access Object)
	// DB에 연결되는 기능들을 한 클래스파일에 모아서 구현(중복되는 최소화 / 보안)
	// 1. Connection 메소드 만들기
	// 2. Close 메소드 만들기
	// 3. 각 기능들에서 자주 사용하는 변수 멤버변수 만들기
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt;
	memberVO vo = null;
	
	public void getConn() {
		try {
//			// 현재 memberDAO의 클래스파일을 기준으로 파일을 읽어오는 기능
//			InputStream in = getClass().getResourceAsStream("../../../../db.properties");
//			
//			// properties 파일 형식을 읽을 수 있는 객체
//			Properties p = new Properties();
//			// Properties 파일 형식으로 db.properties파일을 load함
//			p.load(in);
//			
//			Class.forName(p.getProperty("dbClass"));
//			String url = p.getProperty("dburl");
//			String dbid = p.getProperty("dbid");
//			String dbpw = p.getProperty("dbpw");
			
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@59.0.100.54:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			
			
			
			//DB에 관련된 정보를 properties파일로 관리하는 방법
			conn = DriverManager.getConnection(url, dbid, dbpw);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void Close() {
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}if(psmt!=null) {
			try {
				psmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public int Join(String m_id, String m_pw, String m_address, String m_phone, String m_birth,
			String m_gender, String m_email, String m_name) {
		
		try {
			
			getConn();
			
			String sql = "insert into pet_member values(PET_MEMBER_SEQ.nextval,?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
		
			psmt.setString(1, m_id);
			psmt.setString(2, m_pw);
			psmt.setString(3, m_address);
			psmt.setString(4, m_phone);
			psmt.setString(5, m_birth);
			psmt.setString(6, m_gender);
			psmt.setString(7, m_email);
			psmt.setString(8, m_name);
			
			
			
			cnt = psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			Close();
		}return cnt;
		
	}
	public int Update(String m_pw, String m_name, String m_phone, String m_email) {
		
			vo = new memberVO(m_pw, m_name, m_phone,m_email);
			
		try {
			getConn();
			
			
			String sql = "update pet_member set m_pw = ?, m_name = ?, m_phone =?, m_email = ? where id = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, m_pw);
			psmt.setString(2, m_name);
			psmt.setString(3, m_phone);
			psmt.setString(4, m_email);
			psmt.setString(5, vo.getM_id());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			Close();
		}return cnt;
		
	}
	public memberVO Login(String m_id, String m_pw) {
		
		try {
			getConn();

			String sql = "select * from pet_member where m_id = ? and m_pw = ?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, m_id);
			psmt.setString(2, m_pw);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				int getM_code = rs.getInt(1);
				String getM_id = rs.getString(2);
				String getM_address = rs.getString(4);
				String getM_phone = rs.getString(5);
				String getM_birth = rs.getString(6);
				String getM_gender = rs.getString(7);
				String getM_Email = rs.getString(8);
				String getM_name = rs.getString(9);
				
				vo = new memberVO(getM_code, getM_id, getM_address,
						getM_phone, getM_birth, getM_gender, getM_Email, getM_name);
				
				
					}
			
		}catch (Exception e){
			e.printStackTrace();
		}finally {
			Close();
		}return vo;
	} 
	public ArrayList<memberVO> Select() {
		
		ArrayList<memberVO> arr = new ArrayList<memberVO>();
		try {
			getConn();

		      String sql = "select * from pet_member";
		     
		      psmt = conn.prepareStatement(sql);

		      rs = psmt.executeQuery();
		    
		      System.out.println("123");
		      
		      while(rs.next()) {
		    	  int getM_code = rs.getInt(1);
					String getM_id = rs.getString(2);
					String getM_address = rs.getString(4);
					String getM_phone = rs.getString(5);
					String getM_birth = rs.getString(6);
					String getM_gender = rs.getString(7);
					String getM_Email = rs.getString(8);
					String getM_name = rs.getString(9);
					
					
					System.out.println(getM_code+","+getM_id+","+getM_address+","+getM_phone+","+getM_birth);
					
					vo = new memberVO(getM_code, getM_id, getM_address,
							getM_phone, getM_birth, getM_gender, getM_Email, getM_name);
                  arr.add(vo);
                  System.out.println(vo);
		      }
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			Close();
		}return arr;
	}
public int Delete(int code) {
		
		try {
			
			getConn();
			
			String sql = "delete from pet_member where m_code = ?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, code);

			
			cnt = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			Close();
		}return cnt;
		
	}
public boolean idCheck(String m_id) {
	boolean check = true;
	try {
		getConn();

		String sql = "select * from pet_member where id = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(2, m_id);
		
		
		rs = psmt.executeQuery();
		if(rs.next()) {
			check = false;
		}else {
			check = true;
		}
		
	}catch (Exception e){
		e.printStackTrace();
	}finally {
		Close();
	}return check;
}

}

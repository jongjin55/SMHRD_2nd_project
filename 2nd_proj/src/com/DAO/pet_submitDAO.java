package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.VO.pet_boardVO;
import com.VO.pet_petVO;
import com.VO.pet_submitVO;

public class pet_submitDAO {


	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	int cnt = 0;
	pet_boardVO vo = null;
	pet_submitVO vos = null;
	pet_petVO vop = null;

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
	
	
	
public int send(String id, int num) {
		
		try {
			getConn();
			
		if(conn != null) {
			System.out.println("연결성공");
		} else {
			System.out.println("연결실패");
		}
			
		String sql = "insert into pet_submit values(pet_submit_seq.nextval, ?, ?, sysdate)";
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, id);
		psmt.setInt(2, num);
		
		cnt = psmt.executeUpdate();
		
		
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

public int subDelete(int num) {

	try {

		getConn();

		if (conn != null) {
			System.out.println("연결성공");
		} else {
			System.out.println("연결실패");
		}

		String sql = "delete from pet_submit where s_code = ?";

		psmt = conn.prepareStatement(sql);

		psmt.setInt(1, num);

		cnt = psmt.executeUpdate();

	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		close();
	}
	return cnt;
}
}

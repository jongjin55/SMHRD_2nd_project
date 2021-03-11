package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.VO.pet_boardVO;
import com.VO.pet_petVO;
import com.VO.pet_submitVO;

public class pet_boardDAO {

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

	public int uploadFile(String id, String name, String title, int age, String gender, int food, String spi,
			String conts, String fileName) {

		try {

			getConn();

			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}

			String sql = "insert into pet_board values(file_num.nextval, ?, ?, sysdate, ?, ?, ?, ?, ?, ?, ?)";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, title);
			psmt.setString(2, id);
			psmt.setString(3, name);
			psmt.setInt(4, age);
			psmt.setString(5, gender);
			psmt.setString(6, spi);
			psmt.setString(7, conts);
			psmt.setInt(8, food);
			psmt.setString(9, fileName);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

	public int updateFile(String id, String name, String title, int age, String gender, int food, String spi,
			String conts, String fileName, int code) {

		try {

			getConn();

			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}

			String sql = "update pet_board set b_title=?, b_id=?, b_date = sysdate, b_name=?, b_age=?, b_gender=?, b_spicies=?, b_content=?, b_food=?, b_imgage=? where b_code= ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, title);
			psmt.setString(2, id);
			psmt.setString(3, name);
			psmt.setInt(4, age);
			psmt.setString(5, gender);
			psmt.setString(6, spi);
			psmt.setString(7, conts);
			psmt.setInt(8, food);
			psmt.setString(9, fileName);
			psmt.setInt(10, code);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}
	public ArrayList<pet_boardVO> selectAll() {

		ArrayList<pet_boardVO> arr = new ArrayList<>();
		try {
			getConn();

			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}

			String sql = "select * from pet_board order by b_code desc";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int code = rs.getInt(1);
				String title = rs.getString(2);
				String id = rs.getString(3);
				String date = rs.getString(4);
				String name = rs.getString(5);
				int age = rs.getInt(6);
				String gender = rs.getString(7);
				String spi = rs.getString(8);
				String content = rs.getString(9);
				int food = rs.getInt(10);
				String image = rs.getString(11);

				vo = new pet_boardVO(code, title, id, date, name, age, gender, spi, content, food, image);
				arr.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return arr;
	}

	public int deleteOne(int num) {

		try {

			getConn();

			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}

			String sql = "delete from pet_board where b_code = ?";

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

	
	public pet_boardVO selectOne(int num) {

		try {
			getConn();

			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}
			System.out.println(num + "여기여기");

			String sql = "select * from pet_board where b_code = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, num);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int code = rs.getInt(1);
				String title = rs.getString(2);
				String id = rs.getString(3);
				String date = rs.getString(4);
				String name = rs.getString(5);
				int age = rs.getInt(6);
				String gender = rs.getString(7);
				String spi = rs.getString(8);
				String content = rs.getString(9);
				int food = rs.getInt(10);
				String image = rs.getString(11);

				vo = new pet_boardVO(code, title, id, date, name, age, gender, spi, content, food, image);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	public ArrayList<pet_boardVO> petSelect(int num) {

		ArrayList<pet_boardVO> arr = new ArrayList<>();
		try {
			getConn();

			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}
			System.out.println(num + "여기여기");

			String sql = "select * from pet_board where b_spicies in (select p_spicies from pet_pet where p_label = ?)";

			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, num);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int code = rs.getInt(1);
				String title = rs.getString(2);
				String id = rs.getString(3);
				String date = rs.getString(4);
				String name = rs.getString(5);
				int age = rs.getInt(6);
				String gender = rs.getString(7);
				String spi = rs.getString(8);
				String content = rs.getString(9);
				int food = rs.getInt(10);
				String image = rs.getString(11);
				
				vo = new pet_boardVO(code, title, id, date, name, age, gender, spi, content, food, image);
				arr.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return arr;
	}
	public ArrayList<Integer> linkSelect(int num) {

		ArrayList<Integer> arr = new ArrayList<>();
		try {
			getConn();

			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}
			System.out.println(num + "여기여기");

			String sql = "select l_link from pet_link where l_spicies in (select b_spicies from pet_board where b_spicies in (select p_spicies from pet_pet where p_label = ?))";

			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, num);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int i = rs.getInt(1);
				
				arr.add(i);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return arr;
	}
	
	public ArrayList<pet_boardVO> petSelectOne() {

		ArrayList<pet_boardVO> arr = new ArrayList<>();
		try {
			getConn();

			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}
			//System.out.println(num + "여기여기");

			String sql = "select * from pet_board where b_spicies = '14'";
			//b_spicies in (select p_spicies from pet_pet where p_label = ?)
			psmt = conn.prepareStatement(sql);

			//psmt.setInt(1, num);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int code = rs.getInt(1);
				String title = rs.getString(2);
				String id = rs.getString(3);
				String date = rs.getString(4);
				String name = rs.getString(5);
				int age = rs.getInt(6);
				String gender = rs.getString(7);
				String spi = rs.getString(8);
				String content = rs.getString(9);
				int food = rs.getInt(10);
				String image = rs.getString(11);

				vo = new pet_boardVO(code, title, id, date, name, age, gender, spi, content, food, image);
				arr.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}

	public ArrayList<pet_submitVO> selectMsg() {

		ArrayList<pet_submitVO> arr = new ArrayList<>();

		try {

			getConn();

			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}

			String sql = "select * from pet_submit";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int i = rs.getInt(1);
				String j = rs.getString(2);
				int k = rs.getInt(3);
				String l = rs.getString(4);

				vos = new pet_submitVO(i, j, k, l);
				arr.add(vos);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}

	
}

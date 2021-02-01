package com.cos.fedex.domain.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cos.fedex.config.DB;
import com.cos.fedex.domain.user.dto.JoinReqDto;
import com.cos.fedex.domain.user.dto.LoginReqDto;
import com.cos.fedex.domain.user.dto.UpdateReqDto;

public class UserDao {
	public int updateUser(UpdateReqDto dto) {
		String sql = "UPDATE user SET password=?,email=?,phone=?,address=?,postcode=? where username=?";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPassword());
			pstmt.setString(2, dto.getEmail());
			pstmt.setString(3, dto.getPhone());
			pstmt.setString(4, dto.getAddress());
			pstmt.setString(5, dto.getPostcode());
			pstmt.setString(6, dto.getUsername());
			
			int result=pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public User findByUsernameAndPassword(LoginReqDto dto) {
		String sql = "SELECT id,username,password,email,address,phone,postcode FROM user WHERE username = ?AND password=?";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs  = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUsername());
			pstmt.setString(2, dto.getPassword());
			rs =  pstmt.executeQuery();

			if(rs.next()) {
				User user=User.builder()
						.id(rs.getInt("id"))
						.password(rs.getString("password"))
						.username(rs.getString("username"))
						.email(rs.getString("email"))
						.phone(rs.getString("phone"))
						.address(rs.getString("address"))
						.postcode(rs.getString("postcode"))
						.build();
				return user;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DB.close(conn, pstmt, rs);
		}
		return null;
	}
	public int save(JoinReqDto dto) { // 회원가입
		String sql = "INSERT INTO user(username, password, email, phone, address, postcode) VALUES(?,?,?,?,?,?)";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUsername());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getEmail());
			pstmt.setString(4, dto.getPhone());
			pstmt.setString(5, dto.getAddress());
			pstmt.setString(6, dto.getPostcode());
			int result = pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DB.close(conn, pstmt);
		}
		return -1;
	}
	public int findByUsername(String username) {
		String sql = "SELECT * FROM user WHERE username = ?";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs  = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			rs =  pstmt.executeQuery();

			if(rs.next()) {
				return 1; // 있어
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DB.close(conn, pstmt, rs);
		}
		return -1; // 없어
	}
}

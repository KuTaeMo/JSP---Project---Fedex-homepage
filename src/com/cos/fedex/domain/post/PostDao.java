package com.cos.fedex.domain.post;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cos.fedex.config.DB;
import com.cos.fedex.domain.post.dto.SendRespDto;
import com.cos.fedex.domain.user.dto.JoinReqDto;

public class PostDao {
	public int send(Post post) { 
		String sql = "INSERT INTO post(username, receivername, receiveraddress, receiverpostcode, size, sort) VALUES(?,?,?,?,?,?)";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, post.getUsername());
			pstmt.setString(2, post.getReceivername());
			pstmt.setString(3, post.getReceiveraddress());
			pstmt.setString(4, post.getReceiverpostcode());
			pstmt.setInt(5, post.getSize());
			pstmt.setString(6, post.getSort());
			int result = pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DB.close(conn, pstmt);
		}
		return -1;
	}
	public int findPk() {
		String sql="SELECT @@IDENTITY";
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			pstmt=conn.prepareStatement(sql);
			rs =  pstmt.executeQuery();
			
			if(rs.next()) {
				int pk=rs.getInt("@@IDENTITY");
				return pk;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return -1;
	}
	public SendRespDto findById(int id) {
		String sql="SELECT id, username, receivername, receiveraddress, receiverpostcode, size, sort FROM post where id=?";
		Connection conn=DB.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,id);
			rs =  pstmt.executeQuery();
			if(rs.next()) {
				SendRespDto dto=SendRespDto.builder()
						.id(rs.getInt("id"))
						.username(rs.getString("username"))
						.receivername(rs.getString("receivername"))
						.receiveraddress(rs.getString("receiveraddress"))
						.receiverpostcode(rs.getString("receiverpostcode"))
						.size(rs.getInt("size"))
						.sort(rs.getString("sort"))
						.build();
						
				return dto;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}

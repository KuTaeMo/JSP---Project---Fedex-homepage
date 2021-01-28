package com.cos.fedex.domain.charge;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cos.fedex.config.DB;
import com.cos.fedex.domain.user.dto.JoinReqDto;
import com.cos.fedex.domain.user.dto.LoginReqDto;

public class ChargeDao {

	public Charge findBySize(int size) {
		String sql = "SELECT * FROM charge WHERE size = ?";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs  = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, size);
			rs =  pstmt.executeQuery();

			if(rs.next()) {
				Charge charge=Charge.builder()
						.size(rs.getInt("size"))
						.postcharge(rs.getString("postcharge"))
						.build();
				return charge;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DB.close(conn, pstmt, rs);
		}
		return null; // 없어
	}
}

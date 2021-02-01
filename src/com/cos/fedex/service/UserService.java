package com.cos.fedex.service;

import com.cos.fedex.domain.user.User;
import com.cos.fedex.domain.user.UserDao;
import com.cos.fedex.domain.user.dto.JoinReqDto;
import com.cos.fedex.domain.user.dto.LoginReqDto;
import com.cos.fedex.domain.user.dto.UpdateReqDto;

public class UserService {
	private UserDao userDao; 

	public UserService() {
		userDao = new UserDao();
	}
	// 
	public User 로그인(LoginReqDto dto) {
		return userDao.findByUsernameAndPassword(dto);
	}
	public int 회원가입(JoinReqDto dto) {
		int result = userDao.save(dto);
		return result;
	}
	public int 유저네임중복체크(String username) {
		int result = userDao.findByUsername(username);
		return result;
	}
	public int 유저수정(UpdateReqDto dto) {
		int result=userDao.updateUser(dto);
		return result;
	}
}

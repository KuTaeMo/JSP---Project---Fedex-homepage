package com.cos.fedex.service;

import com.cos.fedex.domain.user.User;
import com.cos.fedex.domain.user.UserDao;
import com.cos.fedex.domain.user.dto.LoginReqDto;

public class UserService {
	private UserDao userDao; 

	public UserService() {
		userDao = new UserDao();
	}
	// 
	public User 로그인(LoginReqDto dto) {
		return userDao.findByUsernameAndPassword(dto);
	}
}

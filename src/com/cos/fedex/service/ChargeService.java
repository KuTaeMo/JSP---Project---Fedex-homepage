package com.cos.fedex.service;

import com.cos.fedex.domain.charge.Charge;
import com.cos.fedex.domain.charge.ChargeDao;
import com.cos.fedex.domain.user.User;
import com.cos.fedex.domain.user.UserDao;
import com.cos.fedex.domain.user.dto.JoinReqDto;
import com.cos.fedex.domain.user.dto.LoginReqDto;

public class ChargeService {
	private ChargeDao chargeDao; 

	public ChargeService() {
		chargeDao = new ChargeDao();
	}
	public Charge 요금조회(int size) {
		return chargeDao.findBySize(size);
	}
	
}

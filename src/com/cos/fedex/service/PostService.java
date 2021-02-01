package com.cos.fedex.service;

import com.cos.fedex.domain.post.Post;
import com.cos.fedex.domain.post.PostDao;
import com.cos.fedex.domain.post.dto.SendRespDto;
import com.cos.fedex.domain.user.User;
import com.cos.fedex.domain.user.UserDao;
import com.cos.fedex.domain.user.dto.JoinReqDto;
import com.cos.fedex.domain.user.dto.LoginReqDto;

public class PostService {
	private PostDao postDao; 

	public PostService() {
		postDao=new PostDao();
	}
	// 
	public int 발송(Post post) {
		int result=postDao.send(post);
		if(result==1) {
			int re=postDao.findPk();
			return re;
		}else {
			return -1;
		}
	}
	public SendRespDto 배송조회(int id) {
		return postDao.findById(id);
	}
}

package com.cos.fedex.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.fedex.domain.charge.Charge;
import com.cos.fedex.domain.post.Post;
import com.cos.fedex.domain.post.dto.SendRespDto;
import com.cos.fedex.service.ChargeService;
import com.cos.fedex.service.PostService;
import com.cos.fedex.util.Script;

@WebServlet("/post")
public class postController extends HttpServlet {

    public postController() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String cmd=request.getParameter("cmd");
		PostService postService=new PostService();
		
		//http://localhost:8000/fedexProject/user?cmd=loginForm
		if(cmd.equals("send")){
			String username=request.getParameter("username");
			String receivername=request.getParameter("receivername");
			String receiveraddress=request.getParameter("receiveraddress");
			String receiverpostcode=request.getParameter("receiverpostcode");
			String size=request.getParameter("size");
			String sort=request.getParameter("sort");
			
			int postsize=0;
			if(size.equals("500g 미만 - 1호")) {
				postsize=1;
			}else if(size.equals("500g ~ 1kg - 2호")) {
				postsize=2;
			}else if(size.equals("1kg ~ 1.5kg - 3호")) {
				postsize=3;
			}else if(size.equals("1.5kg ~ 2kg - 4호")) {
				postsize=4;
			}else if(size.equals("2kg ~ 2.5kg - 5호")) {
				postsize=5;
			}
			
			Post post=Post.builder()
					
					.username(username)
					.receivername(receivername)
					.receiveraddress(receiveraddress)
					.receiverpostcode(receiverpostcode)
					.size(postsize)
					.sort(sort)
					.build();
			ChargeService chargeService=new ChargeService();
			Charge postcharge= chargeService.요금조회(postsize);
			
			int result=postService.발송(post);
			if(result != -1) {	
				SendRespDto dto=SendRespDto.builder()
						.id(result)
						.username(post.getUsername())
						.receivername(post.getReceivername())
						.receiveraddress(post.getReceiveraddress())
						.receiverpostcode(post.getReceiverpostcode())
						.size(postsize)
						.sort(post.getSort())
						.charge(postcharge.getPostcharge())
						.build();
						
				
				HttpSession session=request.getSession();
				session.setAttribute("post", dto);
				RequestDispatcher dis=request.getRequestDispatcher("board/SendSuccess.jsp");
				dis.forward(request, response);
			}else {
				Script.back(response,"발송 실패");
			}
		}else if(cmd.equals("postsearch")) {
			int id=Integer.parseInt(request.getParameter("postid"));
			
			SendRespDto dto=postService.배송조회(id);
			
			SendRespDto searchentity=SendRespDto.builder()
					.id(dto.getId())
					.username(dto.getUsername())
					.receivername(dto.getReceivername())
					.receiveraddress(dto.getReceiveraddress())
					.receiverpostcode(dto.getReceiverpostcode())
					.size(dto.getSize())
					.sort(dto.getSort())
					.charge(dto.getCharge())
					.build();
			
			HttpSession session=request.getSession();
			session.setAttribute("postsearch", searchentity);
			RequestDispatcher dis=request.getRequestDispatcher("board/postSearch.jsp");
			dis.forward(request, response);
		}
	}
}

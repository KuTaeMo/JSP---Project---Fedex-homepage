package com.cos.fedex.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.fedex.domain.user.User;
import com.cos.fedex.domain.user.dto.JoinReqDto;
import com.cos.fedex.domain.user.dto.LoginReqDto;
import com.cos.fedex.service.UserService;
import com.cos.fedex.util.Script;

@WebServlet("/user")
public class userController extends HttpServlet {

    public userController() {
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
		UserService userService=new UserService();
		
		//http://localhost:8000/fedexProject/user?cmd=loginForm
		if(cmd.equals("loginForm")){
			RequestDispatcher dis=request.getRequestDispatcher("user/loginForm.jsp");
			dis.forward(request, response);
		}else if(cmd.equals("joinForm")) {
			RequestDispatcher dis=request.getRequestDispatcher("user/joinForm.jsp");
			dis.forward(request, response);
		}else if(cmd.equals("login")) {
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			LoginReqDto dto=new LoginReqDto();
			
			dto.setUsername(username);
			dto.setPassword(password);
			User userEntity = userService.로그인(dto);
			if(userEntity != null) {
				HttpSession session = request.getSession();
				session.setAttribute("principal", userEntity); // 인증주체
				response.sendRedirect("index.jsp");
			}else {
				Script.back(response, "로그인실패");
			}
		}else if(cmd.equals("join")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			String phone=request.getParameter("phone");
			String address = request.getParameter("address");
			String postcode=request.getParameter("postcode");
			JoinReqDto dto = new JoinReqDto();
			dto.setUsername(username);
			dto.setPassword(password);
			dto.setEmail(email);
			dto.setPhone(phone);
			dto.setAddress(address);
			dto.setPostcode(postcode);
			System.out.println("회원가입 : "+dto);
			int result = userService.회원가입(dto);
			if(result == 1) {
				response.sendRedirect("index.jsp");
			}else {
				Script.back(response,"회원가입 실패");
			}
		}else if(cmd.equals("usernameCheck")) {
			BufferedReader br = request.getReader();//데이터가 text이기 때문에 버퍼로 읽음
			String username = br.readLine();
			System.out.println(username);
			int result = userService.유저네임중복체크(username);
			PrintWriter out = response.getWriter();
			if(result == 1) {
				out.print("ok");
			}else {
				out.print("fail");
			}
			out.flush();
		}else if(cmd.equals("myForm")) {
			RequestDispatcher dis=request.getRequestDispatcher("user/myForm.jsp");
			dis.forward(request, response);
		}else if(cmd.equals("logout")) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("index.jsp");
		}
	}
}

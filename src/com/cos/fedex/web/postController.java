package com.cos.fedex.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.fedex.service.UserService;

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
		UserService userService=new UserService();
		
		//http://localhost:8000/fedexProject/user?cmd=loginForm
		if(cmd.equals("postSearch")){
			RequestDispatcher dis=request.getRequestDispatcher("board/postSearch.jsp");
			dis.forward(request, response);
		}
	}
}

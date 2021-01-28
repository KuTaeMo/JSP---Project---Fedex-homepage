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
import com.cos.fedex.domain.charge.dto.ChargeViewRespDto;
import com.cos.fedex.service.ChargeService;

@WebServlet("/charge")
public class chargeController extends HttpServlet {

    public chargeController() {
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
		ChargeService chargeService=new ChargeService();
		
		//http://localhost:8000/fedexProject/user?cmd=loginForm
		if(cmd.equals("showcharge")){
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
			System.out.println(size);
			System.out.println(sort);
			System.out.println(postsize+"호");

			Charge charentity=chargeService.요금조회(postsize);
			
			ChargeViewRespDto dto=ChargeViewRespDto.builder()
					.size(charentity.getSize())
					.postcharge(charentity.getPostcharge())
					.sort(sort)
					.build();
			HttpSession session=request.getSession();
			session.setAttribute("charge", dto);
			RequestDispatcher dis=request.getRequestDispatcher("board/showCharge.jsp");
			dis.forward(request, response);
		}
	}
}

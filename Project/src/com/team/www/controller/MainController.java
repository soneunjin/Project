package com.team.www.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.team.www.dao.MemberDAO;
import com.team.www.vo.MemberVO;


public class MainController implements ClsController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/main/main.jsp";
		
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		
		MemberDAO mDAO = new MemberDAO();
		list = mDAO.getTen();
		
		
		req.setAttribute("LIST", list);
		return view;
	}
	
}
	



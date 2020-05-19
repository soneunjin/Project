package com.team.www.controller.member;

import javax.servlet.http.*;

import com.team.www.controller.ClsController;
import com.team.www.dao.*;

public class JoinProc implements ClsController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/Project/main.cls";
		req.setAttribute("isRedirect", true);
		
		// 파라미터 가져오고
		String sid = req.getParameter("email");
		System.out.println(sid);
		String spw = req.getParameter("pwe");
		System.out.println(spw);
		String bno = req.getParameter("bno");
		System.out.println(bno);
		String name = req.getParameter("idx");
		System.out.println(name);
		String bir = req.getParameter("birth");
		System.out.println(bir);
		String cano = req.getParameter("opt");
		System.out.println(cano);
		
		int membir = 0;
		int carno = 0;
		try {
			membir = Integer.parseInt(bir);
			carno = Integer.parseInt(cano);
		} catch(Exception e) {}
		MemberDAO mDAO = new MemberDAO();
		int cnt = mDAO.addMember(sid, spw, bno, name, membir, carno);
		
		
		return view;
	}
}



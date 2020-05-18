package www.team.com.controller.member;

import javax.servlet.http.*;

import www.team.com.controller.ClsController;

public class JoinForm implements ClsController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/member/login.jsp";
		return view;
	}

}

package www.team.com.controller.member;

import javax.servlet.http.*;

import www.team.com.controller.*;

public class LoginForm implements ClsController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/member/login.jsp";
		return view;
	}

}

package www.team.com.controller.member;

import javax.servlet.http.*;

import www.team.com.controller.*;
import www.team.com.dao.*;

public class LoginProc implements ClsController {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "/Project/main.cls";
		req.setAttribute("isRedirect", true);
		
		// 파라미터 가져오고
		String sid = req.getParameter("id");
		String spw = req.getParameter("pw");
		MemberDAO mDAO = new MemberDAO();
		int cnt = mDAO.getLoginCnt(sid, spw);
		
		if(cnt == 1) {
			HttpSession session = req.getSession();
			session.setAttribute("SID", sid);
		} else {
			view = "/Project/member/login.cls";
		}
		
		return view;
	}

}

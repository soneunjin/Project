package com.team.www.sql;

public class MemberSQL {
	public final int SEL_LOGIN_CNT = 1001;
	public final int ADD_DATA = 2001;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_LOGIN_CNT:
			buff.append("SELECT ");
			buff.append("	COUNT(*) cnt ");
			buff.append("FROM ");
			buff.append("	member ");
			buff.append("WHERE ");
			buff.append("	memid = ? ");
			buff.append("	AND mempw = ? ");
			break;
		case ADD_DATA:
			buff.append("INSERT INTO ");
			buff.append(" 	member(memno, memid, mempw, bno, name, membir, carno) ");
			buff.append("VALUES( ");
			buff.append(" 	(SELECT NVL(MAX(memno) +1, 1000) FROM member), ");
			buff.append(" ?, ?, ?, ?, ?, ? ");
			buff.append(") ");
		}
		return buff.toString();
	}
}

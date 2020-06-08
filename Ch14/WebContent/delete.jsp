<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="member.MemberBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//파라미터 수신
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	//1단계
	Class.forName("com.mysql.jdbc.Driver");
	//2단계
	Connection conn = DriverManager.getConnection(host, user, pass);
	//3단계
	Statement stmt = conn.createStatement();
	//4단계
	String sql = "DELETE FROM `MEMBER` WHERE `uid` = '삭제할 id'";
	//5단계
	MemberBean mb = new MemberBean();
	if(rs.next()){
		mb.setUid(rs.getString(1));
		mb.setName(rs.getString(2));
		mb.setHp(rs.getString(3));
		mb.setPos(rs.getString(4));
		mb.setDep(rs.getInt(5));
		mb.setRdate(rs.getString(6));
	}
	//6단계
	
	//리다이렉트
	response.sendRedirect("./list.jsp");
%>
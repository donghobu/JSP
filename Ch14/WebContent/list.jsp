<%@page import="member.MemberBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%

	// 1,2단계
	Connection conn = DBConfig.getConnection();
	
	// 3단계
	Statement stmt = conn.createStatement();
	
	// 4단계
	String sql = "SELECT * FROM `MEMBER` ORDER BY `rdate` ASC";
	ResultSet rs = stmt.executeQuery(sql);
	
	// 5단계 - 결과셋 처리(SELECT일 경우)
	List<MemberBean> memberList = new ArrayList<>();
	
	while(rs.next()) {
		MemberBean mb = new MemberBean();
		
		String uid   = rs.getString(1);
		String name  = rs.getString(2);
		String hp    = rs.getString(3);
		String pos   = rs.getString(4);
		int    dep   = rs.getInt(5);
		String rdate = rs.getString(6);
		
		mb.setUid(uid);
		mb.setName(name);
		mb.setHp(hp);
		mb.setPos(pos);
		mb.setDep(dep);
		mb.setRdate(rdate);
		
		memberList.add(mb);
		
	}
	// 6단계
	rs.close();
	stmt.close();
	conn.close();
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<script>
	function onDelete(){
		var result = confirm("정말 삭제하시겠습니까?")
		return result;
	}
</script>
</head>
<body>
	<h3>직원목록</h3>
	
	<table border="1">
	<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>휴대폰</th>
		<th>직급</th>
		<th>부서</th>
		<th>입사일</th>
		<th>기타</th>
	</tr>
	<% for(MemberBean mb : memberList) {%>
	<tr>
		<td><%= mb.getUid() %></td>
		<td><%= mb.getName() %></td>
		<td><%= mb.getHp() %></td>
		<td><%= mb.getPos() %></td>
		<td><%= mb.getDep() %></td>
		<td><%= mb.getRdate().substring(0, 10) %></td>
		<td>
			<a href="./delete.jsp" onclick="return onDelete">삭제</a>
			<a href="./modifyForm.jsp?uid=<%= mb.getUid() %>">수정</a>
		</td>
	</tr>
	<% } %>
	</table>
	
	<a href="./regForm.jsp">직원 등록하기</a>

</body>
</html>
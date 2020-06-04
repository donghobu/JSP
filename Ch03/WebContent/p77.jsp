<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
<b>request.getParameter()메서드 사용</b>
name 파라미터 = <%= request.getParameter("name") %><br>
address 파라미터 = <%= request.getParameter("address") %>
<p>
<b>request.getParameterValues() 메서드 사용</b>
<%
	String[] values = request.getParameterValues("pet");
	if(values !=null) {
	for(int i=0; i<values.length; i++){
%>
	<%= values[i] %>
<%
	}
	}
%>
<p>
<b>request.getParameterNames() 메서드 사용</b>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()) {
		String name = (String)paramEnum.nextElement();
%>
	<%= name %>
<%
	}
%>
<p>
<b>request.getParameterMap() 메서드 사용</b>
<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])
%>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합 구하기</title>
</head>
<body>
<%
	int sum = 0;
	for(int i=1; i<=10; i++) {
		sum = sum + i;
	}
%>
1부터 10까지의 합은 <%= sum %>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bind user for openid(Demo Page)</title>
</head>

<script>
function regDone(){
	window.location.href = '<%=request.getParameter("returnUrl") %>';
}
</script>
<body>
	<h2>bindingKey:<%=request.getParameter("bindingKey") %></h2>
	<h2>returnUrl :<%=request.getParameter("returnUrl") %></h2>
	<button onclick="regDone()">ok</button>
</body>
</html>
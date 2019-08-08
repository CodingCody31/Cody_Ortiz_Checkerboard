<%@ page language="java" contentType="text/html; charset=UTF-8; text/css"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkerboard</title>
<link href="checkerstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<% int height = Integer.parseInt(request.getParameter("height")); %>
<% int width = Integer.parseInt(request.getParameter("width")); %>
<h1>Checkerboard:<%=width %>W X <%=height %>H </h1>
<br/>
<%for(int i = 0; i < height; i++){ %>
	<%for (int j = 0; j < width; j++){ %>
		<%if(i%2==0){%>
			<%if(j%2==0){ %>
				<div class = 'purple'></div>
				<%} else {%>
				<div class = 'blue'></div>
				<%} %>
		
		<%}else{%>
			<%if(j%2==1){ %>
				<div class = 'purple'></div>
			<%} else { %>
				<div class = 'blue'></div>
				<%} %>
		<%} %>
	<%} %>
	<br/>
<%} %>

</body>
</html>
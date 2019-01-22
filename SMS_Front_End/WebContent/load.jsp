<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@taglib prefix="ctu" uri="WEB-INF/c.tld" %>
	<jsp:include page="/load.jsp" />
    <ctu:out value="${message }"></ctu:out>
</body>
</html>
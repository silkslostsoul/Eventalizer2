<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Home</title>
	</head>
	<body>
	<ul>
		<li><a href="<c:url value="/signout" />">Sign Out</a></li>
	</ul>
	<h3>Your Facebook Friends</h3>
	<ul>
		<c:out value="${friend.id}"/>/picture" align="middle"/><c:out value="${friend.name}"/>
	</ul>	
	</body>
</html>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>Sign In</title>
	</head>
	<body>
		<form action="<c:url value="/signin/twitter" />" method="POST">
		    <button type="submit">Sign in Twitter</button>
		    <input type="hidden" name="scope" value="email,publish_stream,offline_access" />		    
		</form>
	</body>
</html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>
<title>List Items</title>

<!-- reference our style sheet -->

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>
	
	<a href="${pageContext.request.contextPath}/">Back to List</a>
	<div class="starter-template">
       <h1>${item.shortDescription}</h1>
       <p class="lead">${item.detailDescription}</p>
    </div>

	
	
</body>

</html>










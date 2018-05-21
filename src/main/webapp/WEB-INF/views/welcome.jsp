<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Welcome</title>

<link href="${contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/listall.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<form id="logoutForm" method="POST" action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>

			<h2>
				Welcome ${pageContext.request.userPrincipal.name} | <a
					onclick="document.forms['logoutForm'].submit()">Logout</a>
			</h2>

		</c:if>

		
		<div id="container">

			<div id="content">
				
				<input type="button" value="Add"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="add-button"
				/>
				<input type="button" value="Manage the post"
				   onclick="window.location.href='list'; return false;"
				   class="add-button"
				/>
				
				
				<table>
					<tr>
						<th>Short Description</th>
						<th>Price</th>
						<th>Detail</th>
					</tr>

					<!-- loop over and print our customers -->
					<c:forEach var="tempItem" items="${allitems}">
						<c:url var="detail" value="/showDetail">
							<c:param name="itemId" value="${tempItem.id}" />
						</c:url>
						<tr>
							<td>${tempItem.shortDescription}</td>
							<td>${tempItem.price}</td>
							<td><a href="${detail}">Show Detail</a></td>
						</tr>

					</c:forEach>

				</table>

			</div>

		</div>

	</div>
	</container>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>

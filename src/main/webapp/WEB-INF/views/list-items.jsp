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
	<div id="container">

		<div id="content">
			<input type="button" value="Back to List"
				onclick="window.location.href='${pageContext.request.contextPath}/'; return false;"
				class="add-button" />
			<table>
				<tr>
					<th>Short Description</th>
					<th>Detail Description</th>
					<th>Price</th>
					<th>Action</th>
				</tr>


				<c:forEach var="tempItem" items="${items}">

					<!-- construct an "update" link with item id -->
					<!-- construct an "update" link with item id -->
					<c:url var="updateLink" value="/showFormForUpdate">
						<c:param name="itemId" value="${tempItem.id}" />
					</c:url>

					<!-- construct an "delete" link with item id -->
					<c:url var="deleteLink" value="/delete">
						<c:param name="itemdeleteId" value="${tempItem.id}" />
					</c:url>

					<tr>
						<td>${tempItem.shortDescription}</td>
						<td>${tempItem.detailDescription}</td>
						<td>${tempItem.price}</td>

						<td>
							<!-- display the update link --> <a href="${updateLink}">Update</a>
							| <a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
						</td>

					</tr>

				</c:forEach>

			</table>

		</div>

	</div>




</body>

</html>










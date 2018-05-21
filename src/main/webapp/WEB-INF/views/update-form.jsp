<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Customer</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>


	<div id="container">
		<h3>Add an item</h3>
	
		<form:form action="updateItem" modelAttribute="item" method="POST">

			<!-- need to associate this data with item id -->
			<form:hidden path="id" />
					
			<table>
				<tbody>
					<tr>
						<td><label>Short Description:</label></td>
						<td><form:input path="shortDescription" /></td>
					</tr>
				
					<tr>
						<td><label>Detail Description:</label></td>
						<td><form:input path="detailDescription" /></td>
					</tr>

					<tr>
						<td><label>Price:</label></td>
						<td><form:input path="price" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>











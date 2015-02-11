<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>

	<!-- Basic table to display all the medical Centres available -->
	<table border="1" width="100%">
		<tr>
			<th>Name</th>
			<th>Address</th>
			<th>Phone Number</th>
		</tr>
		<c:forEach var="row" items="${medicalCentres}">
			<tr>
				<td><c:out value="${row.name}" /></td>
				<td><c:out value="${row.address}" /></td>
				<td><c:out value="${row.phoneNos}" /></td>
			</tr>
		</c:forEach>
</body>
</html>
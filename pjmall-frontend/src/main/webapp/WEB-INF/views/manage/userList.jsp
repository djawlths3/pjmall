<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Shop Homepage - Start Bootstrap Template</title>
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.servletContext.contextPath }/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link
	href="${pageContext.servletContext.contextPath }/assets/css/shop-homepage.css"
	rel="stylesheet">
</head>
<body>
	<!-- Navigation -->
	<c:import url='/WEB-INF/views/includes/navigation.jsp'>
		<c:param name="active" value="shopping" />
	</c:import>
	<!-- /.Navigation -->

	<div class="container">
		<div class="row">

			<div class="col-lg-3">
				<h1 class="my-4">PJMall</h1>
				<div class="list-group">
					<a href="${pageContext.servletContext.contextPath }/manage/user"
						class="list-group-item">유저 목록</a> <a
						href="${pageContext.servletContext.contextPath }/manage/product"
						class="list-group-item">상품 등록</a>
				</div>
			</div>

			<div class="col-lg-9">
				<div    style="height: 36%; font-size: 37px; text-align: center; padding-top: 10px;" >유저 목록</div>

				<div class="row" style="height: 500px">
					<table class="table table-condensed">
						<thead>
							<tr>
								<th>이름</th>
								<th>id</th>
								<th>Email</th>
								<th>주소</th>
								<th>전화번호</th>
								<th>가입날짜</th>
							</tr>
						</thead>
						<tbody id='tbody'>
							<tr>
								<td>엄기윤</td>
								<td>djawlths3</td>
								<td>john@example.com</td>
								<td>왕십리 그 어딘가 abcdefg하하하하호호호호호하하하하핳</td>
								<td>01095590484</td>
								<td>2019-08-06</td>						
							</tr>	
							<tr>
								<td>엄기윤</td>
								<td>djawlths3</td>
								<td>john@example.com</td>
								<td>왕십리 그 어딘가 abcdefg하하하하호호호호호하하하하핳</td>
								<td>01095590484</td>
								<td>2019-08-06</td>						
							</tr>							
						</tbody>
					</table>

				</div>
				<!-- /.row -->
			</div>

		</div>

	</div>

	<c:import url='/WEB-INF/views/includes/footer.jsp' />

</body>

</html>

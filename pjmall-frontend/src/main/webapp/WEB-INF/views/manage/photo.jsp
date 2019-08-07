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
<link
	href="${pageContext.servletContext.contextPath }/assets/css/product.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link
	href="${pageContext.servletContext.contextPath }/assets/css/shop-homepage.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="${pageContext.servletContext.contextPath }/assets/js/jquery/jquery.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath }/assets/js/product.js"></script>
</head>
<body>
	<!-- Navigation -->
	<c:import url='/WEB-INF/views/includes/navigation.jsp'>
		<c:param name="active" value="shopping" />
	</c:import>
	<!-- /.Navigation -->

	<div class="container">
		<div class="row" style="height: 777px;">

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
				<div class="container" style="margin-top: 23px;">

					<!-- Contact Section Heading -->
					<h2
						class="page-section-heading text-center text-uppercase text-secondary mb-0">사진추가</h2>

					<!-- Contact Section Form -->
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
							<form name="sentMessage" id="contactForm" novalidate="novalidate" action="/manage/product/photoAdd" method="post" enctype="multipart/form-data">
								<input type="hidden" value='${prdocutNo }' name='productNo'/>
								<br>								
							
								<div class="control-group">
									<div class="row">
										<div class="imgUp">
											<div class="imagePreview"></div>
											<label class="btn btn-primary"> 썸네일<input
												type="file" class="uploadFile img" name='productImg'
												style="width: 0px; height: 0px; overflow: hidden;" multiple>
											</label>
										</div>
										<i class="fa fa-plus imgAdd"></i>
									</div>								
								</div>
								 
								<br>
								<hr/>		
								<!-- container -->
								<br>	
								<div id="success"></div>
								<div class="form-group">
									<center>
									<button type="submit" class="btn btn-primary btn-xl">Send</button>
										</center>
								</div>

							</form>
						</div>
					</div>

				</div>
				<!-- /.row -->
			</div>

		</div>

	</div>

</body>

</html>

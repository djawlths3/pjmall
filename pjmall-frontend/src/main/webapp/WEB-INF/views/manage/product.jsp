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
						class="page-section-heading text-center text-uppercase text-secondary mb-0">상품등록</h2>

					<!-- Icon Divider -->
					<div class="divider-custom">
						<div class="divider-custom-line"></div>
						<div class="divider-custom-icon">
							<i class="fas fa-star"></i>
						</div>
						<div class="divider-custom-line"></div>
					</div>

					<!-- Contact Section Form -->
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
							<form name="sentMessage" id="contactForm" novalidate="novalidate">
								<div class="control-group">
									<div
										class="form-group floating-label-form-group controls mb-0 pb-2">
										<label>카테고리</label> <select id='category' name='categortNo'
											class="browser-default custom-select">
											<option selected>카테고리선택</option>
											<option value="1">One</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<div
										class="form-group floating-label-form-group controls mb-0 pb-2">
										<label>상품명</label> <input class="form-control"
											id="productName" type="text" placeholder="상품명"
											required="required"
											data-validation-required-message="Please enter your name.">
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="control-group">
									<div
										class="form-group floating-label-form-group controls mb-0 pb-2">
										<label>가격</label> <input class="form-control" id="price"
											type="text" placeholder="가격" required="required"
											data-validation-required-message="Please enter price.">
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="control-group">
									<div
										class="form-group floating-label-form-group controls mb-0 pb-2">
										<label>설명</label>
										<textarea class="form-control" id="etc" rows="5"
											placeholder="설명" required="required"
											data-validation-required-message="Please enter a etc"></textarea>
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<br>
								<!-- 
								<div class="control-group">
									<div class="row">
										<div class="imgUp">
											<div class="imagePreview"></div>
											<label class="btn btn-primary"> 썸네일<input
												type="file" class="uploadFile img" value="Upload Photo"
												style="width: 0px; height: 0px; overflow: hidden;">
											</label>
										</div>
										<i class="fa fa-plus imgAdd"></i>
									</div>								
								</div>
								<br>
								 -->
								
								<hr/>
								<div class="row">
									<div class="productOptions">
										<label>사이즈</label> <input class="productOption productSize" type="text" placeholder="사이즈" required="required">
									</div>
									<div class="productOptions">
										<label>색상</label> <input class="productOption productColor" type="text" placeholder="색상" required="required">
									</div>
									<div class="productOptions">										
										<label>수량</label> <input class="productOption productQuantity" type="text" placeholder="수량" required="required">
									</div>
									<i class="fa fa-plus optAdd"></i>
								</div>
								
								<!-- container -->
								<br>	
								<div id="success"></div>
								<div class="form-group">
									<button type="submit" class="btn btn-primary btn-xl"
										id="sendProductButton">Send</button>
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

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
<title>회원가입</title>
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.servletContext.contextPath }/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.servletContext.contextPath }/assets/css/join.css" rel="stylesheet">
	<link
	href="${pageContext.servletContext.contextPath }/assets/css/shop-login.css" rel="stylesheet">
	<script
	src="${pageContext.servletContext.contextPath }/assets/js/jquery/jquery.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath }/assets/js/join.js"></script>
</head>
<body>
	<!-- Navigation -->
	<c:import url='/WEB-INF/views/includes/navigation.jsp'>
		<c:param name="active" value="join" />
	</c:import>
	<!-- /.Navigation -->
	
	<!-- modal -->
	<div class="modal fade" id="defaultModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                    	   <h4 class="modal-title">알림</h4>
                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        </div>
                        <div class="modal-body">
                            <p class="modal-contents"></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div>
	
		<div class="container joinForm">
		<div class="form-group" id="divId">
			<label for="inputId" class="col-lg-2 control-label">아이디</label>
			<div class="col-lg-10" style="display: inline-flex;">
				<input type="text" class="form-control onlyAlphabetAndNumber" id="id" data-rule-required="true" name='id' placeholder="2~15자이내의 알파벳, 숫자만 입력 가능합니다." maxlength="15">
				<button type="button" id="idCheck" class="btn btn-info" style="margin-left: 10px; width: 120px;">아이디확인</button>
			</div>

		</div>
		<div class="form-group" id="divPassword">
			<label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
			<div class="col-lg-10">
				<input type="password" class="form-control" id="password" name='password'
					name="excludeHangul" data-rule-required="true" placeholder="특수문자, 알파벳, 숫자를 조합해서 8자 이상으로 만들어주세요"
					maxlength="30">
			</div>
		</div>
		<div class="form-group" id="divPasswordCheck">
			<label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드
				확인</label>
			<div class="col-lg-10">
				<input type="password" class="form-control" id="passwordCheck"
					data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
			</div>
		</div>
		<div class="form-group" id="divName">
			<label for="inputName" class="col-lg-2 control-label">이름</label>
			<div class="col-lg-10">
				<input type="text" class="form-control onlyHangul" id="name" name='name'
					data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
			</div>
		</div>
	
		<div class="form-group" id="divNickname">
			<label for="inputNickname" class="col-lg-2 control-label">주소</label>
			<div class="col-lg-10">
				<input type="text" class="form-control" id="address"
					data-rule-required="true" placeholder="주소" maxlength="50">
			</div>
		</div>	
		<div class="form-group" id="divEmail">
			<label for="inputEmail" class="col-lg-2 control-label">이메일</label>
			<div class="col-lg-10">
				<input type="email" class="form-control" id="email" name="email"
					data-rule-required="true" placeholder="이메일" maxlength="40">
			</div>
		</div>
		<div class="form-group" id="divPhoneNumber">
			<label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰
				번호</label>
			<div class="col-lg-10">
				<input type="tel" class="form-control onlyNumber" id="phoneNumber" name="phoneNumber"
					data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요."
					maxlength="11">
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-offset-2 col-lg-10">
				<button id='joinBtn' type="submit" class="btn btn-primary" disabled>회원가입</button>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<c:import url='/WEB-INF/views/includes/footer.jsp' />
	<!-- /.Footer -->
</body>
</html>
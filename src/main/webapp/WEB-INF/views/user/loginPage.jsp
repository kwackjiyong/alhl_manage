<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
<!------------ CSS 임포트 ------------>
<c:import url="../import/css.jsp" />
<!------------ CSS END -------------->

<style>
.ClickBtn {
	float: right;
	background-color: #9F6118;
	border: 1px solid transparent;
	outline: none;
	color: white;
	margin: 0px 4px;
	padding: 6px 12px;
	border-radius: .25rem
}
</style>
</head>
<body class="fix-menu">

	<section class="p-fixed d-flex text-center">
		<!-- Container-fluid starts -->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<!-- Authentication card start -->
					<div class="login-card card-block auth-body mr-auto ml-auto">
						<form action = "login.do" method="post">
							<div class="text-center"></div>
							<div class="auth-box">
								<div class="row m-b-20">
									<div class="col-md-12">
										<img src="<c:url value='resources/images/logo_alhl.png'/>">
									</div>
								</div>
								<hr>
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Your ID" name = "userId">
									<span class="md-line"></span>
								</div>
								<div class="input-group">
									<input type="password" class="form-control"
										placeholder="Password" name = "userPassword"> <span class="md-line"></span>
								</div>
								<div class="row m-t-25 text-left">
									<div class="col-sm-7 col-xs-12">
										<div class="checkbox-fade fade-in-primary">
											<label> <input type="checkbox" value=""> <span
												class="cr"><i
													class="cr-icon icofont icofont-ui-check txt-primary"></i></span> <span
												class="text-inverse">Remember me</span>
											</label>
										</div>
									</div>
									<div class="col-sm-5 col-xs-12 forgot-phone text-right">
										<a href="auth-reset-password.html"
											class="text-right f-w-600 text-inverse">비밀번호 잊으셨나요?</a>
									</div>
								</div>
								<div class="row m-t-30">
									<div class="col-md-12">
										<button type="submit"
											class="ClickBtn btn-md btn-block waves-effect text-center m-b-20">로그인</button>
									</div>
								</div>

							</div>
						</form>
						<!-- end of form -->
					</div>
					<!-- Authentication card end -->
				</div>
				<!-- end of col-sm-12 -->
			</div>
			<!-- end of row -->
		</div>
		<!-- end of container-fluid -->
	</section>
	
<!-- 	<script>
	var idJ = /^[a-z0-9]{4,12}$/;
	var checkPoint = 0;
	// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
	$("#user_id").blur(function() {
		// id = "id_reg" / name = "userId"
		var user_id = $('#user_id').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/idCheck.ing?userId='+ user_id,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : "+ data);							
				
				if (data == 1) {
						// 1 : 아이디가 중복되는 문구
						$("#id_check").text("사용중인 아이디입니다.");
						$("#id_check").css("color", "red");
						$("#reg_submit").attr("disabled", true);
					} else {
						if(idJ.test(user_id)){
							// 0 : 아이디 길이 / 문자열 검사
							$("#id_check").text("사용 가능합니다.");
							$("#id_check").css("color", "blue");
							$("#reg_submit").attr("disabled", false);
				
						} else if(user_id == ""){
							
							$('#id_check').text('아이디를 입력해주세요');
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);				
							
						} else {
							$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다");
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						}
						
					}
				}, error : function() {
						console.log("실패");
				}
			});
		});
	
	
	$("#pw_2").blur(function() {
		// id = "id_reg" / name = "userId"
		var pw_1 = $('#pw_1').val();
		var pw_2 = $('#pw_2').val();
		if(pw_1 == '' || pw_2 == ''){
			$('#pw_check').text("비밀번호를 입력해주세요");
			$('#pw_check').css('color', 'red');
			$("#reg_submit").attr("disabled", true);
		}else if(pw_1 == pw_2){
			$('#pw_check').text('비밀번호가 일치합니다.');
			$('#pw_check').css('color', 'blue');
			$("#reg_submit").attr("disabled", false);				
			
		} else {
			$('#pw_check').text("비밀번호가 일치하지않습니다.");
			$('#pw_check').css('color', 'red');
			$("#reg_submit").attr("disabled", true);
		}
	});
</script> -->
	<!------------ 자바스크립트 임포트 ------------>
	<c:import url="../import/javascript.jsp" />
	<!------------ Javascript END ------------>
</body>
</html>
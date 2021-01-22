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
						<form action = "login.ing" method="post">
							<div class="text-center"></div>
							<div class="auth-box">
								<div class="row m-b-20">
									<div class="col-md-12">
										<img src="<c:url value='resources/images/logo_alhl.png'/>">
									</div>
								</div>
								<hr>
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Your ID" name = "userId" id="userId">
									<span class="md-line"></span>
								</div>
								<div class="input-group">
									<input type="password" class="form-control"
										placeholder="Password" name = "userPassword"> <span class="md-line"></span>
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
	
	<!------------ 자바스크립트 임포트 ------------>
	<c:import url="../import/javascript.jsp" />
	<!------------ Javascript END ------------>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#userId').focus();
		})
	</script>
</body>
</html>
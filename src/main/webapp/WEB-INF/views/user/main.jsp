<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>올룩꿀룩 관리자 페이지</title>
<!------------ css 임포트 ------------>
<c:import url="../import/css.jsp" />
<!------------ CSS END -------------->		
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<body>

	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<c:import url="../import/navigationbar.jsp" />

			<div class="pcoded-main-container" style="margin-top: 80px;">
				<div class="pcoded-wrapper">

					<!------------ 사이드바 임포트 ------------>
					<c:import url="../import/sidebar.jsp" />
					<!------------ 사이드바 임포트 END ------------>

					<div class="pcoded-content">
						<div class="pcoded-inner-content">

							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-header start -->
									<div class="page-header card">
										<div class="row align-items-end">
											<div class="col-lg-12">
												<div class="page-header-title">
													<i class="ti-star" style="background-color: #93BE52"></i>
													<div class="pcoded-mtext">
														<h4>고객 리스트</h4>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- Page-header end -->

									<!-- Page body start -->
									<div class="page-body">
										<div class="row">
											<div class="col-md-12">
												<div class="card add-task-card">
													<div class="card-header">
														<div class="card-header-left">
															<h5>사용자 조회</h5>
														</div>
														<div class="card-header-right">
															<select name="cars" id="cars" class="form-control">
																<option value="volvo">횟수혜택</option>
																<option value="saab">할인 %</option>
															</select>
														</div>
													</div>
													<div class="card-block">
														<div class="card-block table-border-style">
															<div class="table-responsive">
																<table class="table table-hover">
																	<thead>
																		<tr>
																			<th>#</th>
																			<th>사용자id</th>
																			<th>이름</th>
																			<th>생년월일</th>
																			<th>성별</th>
																			<th>이메일</th>
																			<th>생성일</th>
																		</tr>
																	</thead>
																	<tbody>
																		<%-- <c:forEach> --%>
																		<tr id = "btnRow">
																			<th scope="row">1</th>
																			<td>1</td>
																			<td>2</td>
																			<td>@3</td>
																			<td>@4</td>
																			<td>@5</td>
																			<td>@6</td>
																		</tr>
																		<%-- 	</c:forEach> --%>

																		<%-- 	<c:forEach items="${list}" var="list">
													<tr>
														<td>${list.queId}</td>
														<td><a href="#" onclick="javascript:location.href='question_info.do?queId=${list.queId}'" >${list.queTitle}</td>
														<td>${list.userId}</td>
														<td>${list.queTime}</td>
														<c:if test="${null != list.queAnswer}">
															<td style="color:green;">응답됨</td>
														</c:if>
														<c:if test="${null == list.queAnswer}">
															<td style="color:red;">대기중</td>
														</c:if>
													</tr>
												</c:forEach> --%>
																	</tbody>
																</table>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- Page body end -->
								</div>
							</div>
							<!-- Main-body end -->
							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
	$(document).ready(function() {
		$("#btnRow").click(function() {
			location.href = "user_Find.do";
		});
	})
	</script>

	<!------------ 자바스크립트 임포트 ------------>
	<c:import url="../import/javascript.jsp" />

	<!------------ Javascript import END ------------>
</body>
</html>
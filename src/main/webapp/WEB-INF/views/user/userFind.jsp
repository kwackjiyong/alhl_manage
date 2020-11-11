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
									<div class="page-body">
										<div class="card fb-card">
											<div class="card-header">
												<i class="icofont icofont-social-facebook"></i>
												<div class="d-inline-block">
													<h5>고객조회</h5>
													<span>blog page timeline</span>
												</div>
											</div>
											<div class="card-block text-center">
											<div class = "row">
												<div class="col-4 b-r-default">
													<h4 class="sub-title">사용자</h4>
														<div class="form-group row">
															<div class="col-sm-3">
																<input type="text" class="form-control form-control-lg"
																	placeholder=".form-control-lg">
															</div>
														</div>
														<div class="form-group row">
															<div class="col-sm-10">
																<input type="text" class="form-control"
																	placeholder=".form-control">
															</div>
														</div>
														<div class="form-group row">
															<div class="col-sm-8">
																<input type="text" class="form-control form-control-sm"
																	placeholder=".form-control-sm">
															</div>
														</div>
												</div>
												<div class="col-4 b-r-default">
													<h4 class="sub-title">사용 중인 이용권</h4>
														<div class="form-group row">
															<div class="col-sm-3">
																<input type="text" class="form-control form-control-lg"
																	placeholder=".form-control-lg">
															</div>
														</div>
														<div class="form-group row">
															<div class="col-sm-10">
																<input type="text" class="form-control"
																	placeholder=".form-control">
															</div>
														</div>
														<div class="form-group row">
															<div class="col-sm-8">
																<input type="text" class="form-control form-control-sm"
																	placeholder=".form-control-sm">
															</div>
														</div>
												</div>
												<div class="col-4 b-r-default">
													<h4 class="sub-title">남은 기간</h4>
														<div class="form-group row">
															<div class="col-sm-3">
																<input type="text" class="form-control form-control-lg"
																	placeholder=".form-control-lg">
															</div>
														</div>
														<div class="form-group row">
															<div class="col-sm-10">
																<input type="text" class="form-control"
																	placeholder=".form-control">
															</div>
														</div>
														<div class="form-group row">
															<div class="col-sm-8">
																<input type="text" class="form-control form-control-sm"
																	placeholder=".form-control-sm">
															</div>
														</div>
												</div>
											</div>
											</div>
										</div>
									</div>

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
																			<th>결제액</th>
																			<th>구매이용권</th>
																			<th>날짜</th>
																		</tr>
																	</thead>
																	<tbody>
																		<%-- <c:forEach> --%>
																		<tr data-toggle="modal" data-target="#btnRow">
																			<th scope="row">1</th>
																			<td>1</td>
																			<td>2</td>
																			<td>@3</td>
																			<td>@4</td>
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

	<!-------------------- Modal -------------------->
	<div class="modal fade" id="btnEventAdd" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">이벤트 추가</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트 종류</label>
						<div class="col-sm-8">
							<select name="cars" id="cars" class="form-control">
								<option value="volvo">횟수혜택</option>
								<option value="saab">할인 %</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">수량</label>
						<div class="col-sm-8">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트 시작</label>
						<div class="col-sm-8">
							<input type="date" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트 종료</label>
						<div class="col-sm-8">
							<input type="date" class="form-control">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-success">추가</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="btnRow" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">이벤트 수정</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트 수정</label>
						<div class="col-sm-8">
							<select name="cars" id="cars" class="form-control">
								<option value="volvo">횟수혜택</option>
								<option value="saab">할인 %</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">수량</label>
						<div class="col-sm-8">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트 시작</label>
						<div class="col-sm-8">
							<input type="date" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트 종료</label>
						<div class="col-sm-8">
							<input type="date" class="form-control">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-success">추가</button>
				</div>
			</div>
		</div>
	</div>

	<!-------------------- 모달 END -------------------->

	<!------------ 자바스크립트 임포트 ------------>
	<c:import url="../import/javascript.jsp" />
	<!------------ Javascript import END ------------>
</body>
</html>
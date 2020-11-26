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
										<div class="row">
											<div class="col-md-12">
												<div class="card fb-card">
													<div class="card-header">
														<i class="ti-user"></i>
														<div class="d-inline-block">
															<h5>고객 인적 정보</h5>
															<span>고객 인적사항 정보입니다.</span>
														</div>
														<div class="card-header-right">
															
															<button class="btn btn-warning btn-round btn-sm " data-toggle="modal" data-target="#customEdit">수정</button>
														</div>
													</div>
													<div class="card-block text-center">
														<div class="row">
															
															<div class="col-2">
																<h4 class="sub-title">사용자 id</h4>
																<div class="form-group row">
																	<div class="col-sm-10">
																		<label class="form-label">${user.userId}</label>
																	</div>
																</div>
															</div>
															<div class="col-2">
																<h4 class="sub-title">사용자명</h4>
																<div class="form-group row">
																	<div class="col-sm-10">
																		<label class="form-label">${user.userName}</label>
																	</div>
																</div>
															</div>
															<div class="col-2">
																<h4 class="sub-title">생년월일</h4>
																<div class="form-group row">
																	<div class="col-sm-10">
																		<label class="form-label">${user.userBirth}</label>
																	</div>
																</div>
															</div>
															<div class="col-2">
																<h4 class="sub-title">성별</h4>
																<div class="form-group row">
																	<div class="col-sm-10">
																		<label class="form-label">
																			<c:if test="${user.userGender == 0}">
																				여자
																			</c:if>
																			<c:if test="${user.userGender == 1}">
																				남자
																			</c:if>
																			
																		</label>
																	</div>
																</div>
															</div>
															<div class="col-2">
																<h4 class="sub-title">이메일</h4>
																<div class="form-group row">
																	<div class="col-sm-10">
																		<label class="form-label">${user.userEmail}</label>
																	</div>
																</div>
															</div>
															<div class="col-2">
																<h4 class="sub-title">cash</h4>
																<div class="form-group row">
																	<div class="col-sm-10">
																		<label class="form-label">${user.cash}꿀</label>
																	</div>
																</div>
															</div>
														</div>

														
													</div>
												</div>
											</div>
										</div>	
										<div class="row">
											<div class="col-md-6">
												<div class="card fb-card">
													<div class="card-header">
														<i class="ti-credit-card"></i>
														<div class="d-inline-block">
															<h5>이용권 정보</h5>
															<span>고객 이용권 정보입니다.</span>
														</div>
													</div>
													<div class="card-block text-center">
														<div class="row">
															
															<div class="col-6 b-r-default">
																<h4 class="sub-title">사용 중인 이용권</h4>
																<div class="form-group row">
																	<div class="col-lg-12">
																		<label>${shop.productNum}</label>
																	</div>
																</div>
																<div class="form-group row">
																	<div class="col-sm-8">
																		<select name="cars" id="cars" class="form-control">
																			<option value="0">애곰이</option>
																			<option value="1">곰곰이</option>
																			<option value="2">꿀곰이</option>
																			<option value="3">불곰이</option>
																			
																		</select>
																	</div>
																	
																	<div class="col-sm-4">
																		<button class="btn btn-danger btn-round btn-sm">변경</button>
																	</div>
																</div>
															</div>
															<div class="col-6">
																<h4 class="sub-title">남은 기간</h4>
																<div class="form-group row">
																	<div class="col-lg-12">
																		<label>${shop.checkOutTime} 까지</label>
																	</div>
																</div>
																<div class="form-group row">
																	<div class="col-sm-8">
																		<select name="cars" id="cars" class="form-control">
																			<option value="1">1주일 연장</option>
																			<option value="2">만료</option>
																		</select>
																	</div>
																	
																	<div class="col-sm-4">
																		<button class="btn btn-danger btn-round btn-sm">변경</button>
																	</div>
																</div>
															</div>
														</div>

														
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="card twitter-card">
													<div class="card-header">
														<i class="ti-write"></i>
														<div class="d-inline-block">
															<h5>비고란</h5>
															<span>회원님의 비고란을 입력하세요.</span>
														</div>
													</div>
													<div class="card-block text-center">
														<div class="row">
															<div class="col-6 b-r-default">
																<div class="table-responsive">
																	<table class="table table-hover">
																		<thead>
																			<tr>
																				<th>내용</th>
																				<th>날짜</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td>
																					<span>단순변심 환불 1회</span>
																				</td>
																				<td>
																					<p class="d-inline-block m-r-20">2020-11-11 01:26</p>
																					<div class="progress d-inline-block"></div>
																				</td>
																			</tr>

																		</tbody>
																	</table>
																</div>
															</div>
															<div class="col-6">
																<textarea rows="6" cols="10" class="form-control"></textarea>
																<button class="btn btn-success btn-round">입력</button>
															</div>
														</div>
													</div>
												</div>
											</div>
											
										</div>

										<div class="row">
											<div class="col-md-12">
												<div class="card dribble-card">
													<div class="card-header">
														<i class="ti-money"></i>
														<div class="d-inline-block">
															<h5>구매내역</h5>
															<span>회원님의 구매내역 입니다.</span>
														</div>
														<div class="card-header-right">
															<div class="row">
																<div class="col-sm-7 row">
																	<input type="search" class="form-control col-sm-8" />
																	<button class ="btn btn-primary btn-sm col-sm-4" >검색</button>
																</div>

																<div class="col-sm-5">
																	<select name="cars" id="cars" class="form-control">
																		<option value="volvo">20개 보기</option>
																		<option value="saab">50개 보기</option>
																	</select>
																</div>
															</div>
														</div>
													</div>
													<div class="card-block text-center">
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
																		<tr>
																			<th scope="row">1</th>
																			<td>rhkrwldyd</td>
																			<td>2155</td>
																			<td>불곰이</td>
																			<td>20/06/27</td>
																		</tr>
																		<tr>
																			<th scope="row">2</th>
																			<td>rhkrwldyd</td>
																			<td>2155</td>
																			<td>불곰이</td>
																			<td>20/06/27</td>
																		</tr>
																		<tr>
																			<th scope="row">3</th>
																			<td>rhkrwldyd</td>
																			<td>2155</td>
																			<td>불곰이</td>
																			<td>20/06/27</td>
																		</tr>
																		<tr>
																			<th scope="row">4</th>
																			<td>rhkrwldyd</td>
																			<td>2155</td>
																			<td>불곰이</td>
																			<td>20/06/27</td>
																		</tr>
																		<tr>
																			<th scope="row">5</th>
																			<td>rhkrwldyd</td>
																			<td>2155</td>
																			<td>불곰이</td>
																			<td>20/06/27</td>
																		</tr>
																		
																	</tbody>
																</table>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
							<!-- Main-body end -->
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

	<div class="modal fade" id="customEdit" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">고객 인적사항 수정</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">id</label>
						<div class="col-sm-8">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">사용자명</label>
						<div class="col-sm-8">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">생년월일</label>
						<div class="col-sm-8">
							<input type="date" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">성별</label>
						<div class="col-sm-8">
							<div class="btn-group " role="group" data-toggle="tooltip"
								data-placement="top" title="" data-original-title=".btn-xlg">
								<button type="button"
									class="btn btn-info  waves-effect waves-light">남성</button>
								<button type="button"
									class="btn btn-danger  waves-effect waves-light">여성</button>
							</div>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이메일</label>
						<div class="col-sm-8">
							<input type="text" class="form-control">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-success">수정</button>
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
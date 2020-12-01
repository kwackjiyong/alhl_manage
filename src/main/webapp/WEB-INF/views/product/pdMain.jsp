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
	<!-- Pre-loader start -->
	<div class="theme-loader">
		<div class="ball-scale">
			<div class='contain'>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
				<div class="ring">
					<div class="frame"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<c:import url="../import/navigationbar.jsp" />

			<div class="pcoded-main-container" style="margin-top: 80px;">
				<div class="pcoded-wrapper">

					<!------------ 사이드바 임포트 ------------>
					<c:import url="../import/sidebar.jsp" />
					<c:import url="../import/modal.jsp" />
					<!------------ 사이드바 임포트 END ------------>

					<div class="pcoded-content">
						<div class="pcoded-inner-content">
							<div class="main-body">
								<div class="page-wrapper">
									<div class="page-header card">
                                        <div class="row align-items-end">
                                            <div class="col-lg-12">
                                                <div class="page-header-title">
                                                	<i class="ti-shopping-cart bg-c-pink"></i>
                                                    <div class="d-inline">
                                                        <h4>상품 관리</h4>
                                                        <span>상품정보를 수정/확인 할 수 있습니다.</span>
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
															<h5>상품 목록</h5>
														</div>
														<div class="card-header-right">
															<button type="button" id = "createBtn" class="btn btn-primary btn-sm"
																data-toggle="modal" data-target="#btnProductAdd">
																상품 추가</button>
														</div>
													</div>
													<div class="card-block">
														<div class="card-block table-border-style">
															<div class="table-responsive">
																<table class="table table-hover">
																	<thead>
																		<tr>
																			<th>#</th>
																			<th>상품명</th>
																			<th>혜택</th>
																			<th>가격</th>
																			<th>생성일</th>
																			<th>사용여부</th>
																			<th>수정</th>
																		</tr>
																	</thead>
																	<tbody>
																	
																		<c:forEach items="${product_list}" var="pd_list">
																			<tr>
																				<td scope="row">${pd_list.spId}</td>
																				<td>${pd_list.productName }</td>
																				<td>${pd_list.benefit }</td>
																				<td>${pd_list.price }</td>
																				<td>${pd_list.createDate }</td>
																				<td><button class="btn btn-danger btn-round btn-sm">사용중지</button></td>
																				<td><button name = "spModify" class="btn btn-success btn-round btn-sm" data-toggle="modal" data-target="#btnProductEdit" value = "${pd_list.spId }">수정</button>
																				<button name = "spDelete"class="btn btn-warning btn-round btn-sm" data-toggle="modal" data-target="#btnProductEdit">삭제</button>
																				</td>
																			</tr>
																		</c:forEach>
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
							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-------------------- Modal -------------------->
<!-- 	
	상품추가 모달창
	<div class="modal fade" id="btnProductAdd" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">상품 추가</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">상품명</label>
						<div class="col-sm-8">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">혜택</label>
						<div class="col-sm-8">
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">가격</label>
						<div class="col-sm-8">
							<input type="text" class="form-control">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning"
						data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-success">추가</button>
				</div>
			</div>
		</div>
	</div> -->
	
	<!------------ 자바스크립트 임포트 ------------>
	<c:import url="../import/javascript.jsp" />
	
	<script>
	
	</script>
	<!------------ Javascript END ------------>
</body>
</html>

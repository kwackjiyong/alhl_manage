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
                                                        <h4>상품 정보</h4>
                                                        <span>상품정보를 확인 할 수 있습니다.</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
									<!-- Page-header end -->
									<!-- Page body start -->
									<div class="page-body">
										<div class="card">
											<div class="card-header">
												<div class="card-header-left">
													<h5>상품 정보</h5>
												</div>
												<div class="card-header-right">
													<button type="button" class="btn btn-warning btn-sm"
														data-toggle="modal" data-target="#btnProductEdit">
														상품 수정</button>
												</div>
											</div>

											<div class="card-block">
												<div class="row ">
													<div class="form-group">
														<div class="col-lg-12">
															<label class="label label-warning">상품번호</label><label>${shop_product.productNum}</label>
														</div>
													</div>
													<div class="form-group">
														<div class="col-lg-12">
															<label class="label label-warning">상품명</label><label>${shop_product.productName}</label>
														</div>
													</div>
													<div class="form-group">
														<div class="col-lg-12">
															<label class="label label-warning">혜택</label><label>${shop_product.benefit} 회</label>
														</div>
													</div>
													<div class="form-group">
														<div class="col-lg-12">
															<label class="label label-warning">가격</label><label>${shop_product.price} 원</label>
														</div>
													</div>
													<div class="form-group">
														<div class="col-lg-12">
															<label class="label label-warning">출시일</label><label>${shop_product.createDate} </label>
														</div>
													</div>

												</div>
											</div>


										</div>
										<div class="card add-task-card">
											<div class="card-header">
												<div class="card-header-left">
													<h5>통계/내역</h5>
												</div>
											</div>
											<div class="card-block">
												<div class="row">
													<div class="col-lg-12 col-xl-6">
														<div class="card">
															<div class="card-block">
																<div id="container1"></div>
															</div>
														</div>
													</div>
													<div class="col-lg-12 col-xl-6">
														<div class="card">
															<div class="card-header">
																<h5>상품 결제 내역</h5>
																<div class="card-header-right">
																	<ul class="list-unstyled card-option">
																		<li><i class="icofont icofont-simple-left"></i></li>
																		<li><i class="icofont icofont-maximize full-card"></i></li>
																	</ul>
																</div>
															</div>
															<div class="card-block table-border-style">
																<div class="table-responsive">
																	<table class="table">
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
																		<c:forEach items="${list}" var="log">
																		<tr>
																			<th>${log.sLogId}</th>
																			<td>${log.userId}</td>
																			<td>${log.payment}</td>
																			<td>${log.productNum}</td>
																			<td>${log.logDate}</td>
																		</tr>
																		</c:forEach>
																	</tbody>
																	
																	</table>
																	<table class="table" >
																	<tr align="center">
																		<td>
																			<div class="btn-group" role="group"
																				aria-label="Basic example">
																				<c:if test="${1 != listPageNum}">
																					<button type="button"
																						class="btn btn-primary btn-sm"
																						onclick="javascript:location.href='product_info.do?pageNum=1&&productNum=${shop_product.productNum}';">처음</button>
																					<button type="button"
																						class="btn btn-primary btn-sm"
																						onclick="javascript:location.href='product_info.do?pageNum=${listPageNum-1}&&productNum=${shop_product.productNum}';">이전</button>
																				</c:if>
																				<c:forEach items="${listPageNumList}" var="page">
																					<button type="button"
																						class="btn btn-outline-primary btn-sm"
																						onclick="javascript:location.href='product_info.do?pageNum=${page}&&productNum=${shop_product.productNum}';">
																						${page}</button>

																				</c:forEach>
																				<c:if
																					test="${listPageNumList_lastNum != listPageNum}">
																					<button type="button"
																						class="btn btn-primary btn-sm"
																						onclick="javascript:location.href='product_info.do?pageNum=${listPageNum+1}&&productNum=${shop_product.productNum}';">다음</button>
																					<button type="button"
																						class="btn btn-primary btn-sm"
																						onclick="javascript:location.href='product_info.do?pageNum=${listPageNumList_lastNum}&&productNum=${shop_product.productNum}';">마지막</button>
																				</c:if>
																			</div>
																		</td>
																		<td></td>
																	</tr>
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
							</div>
							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-------------------- Modal -------------------->
	
	<!-- 상품추가 모달창 -->
	<div class="modal fade" id="btnProductEdit" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<form class="modal-content" action="update_product.ing" method="post">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">상품 수정</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<input name="productNum" type="hidden" class="form-control" value="${shop_product.productNum}">
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">상품명</label>
						<div class="col-sm-8">
							<input name="productName" type="text" class="form-control" value="${shop_product.productName}">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">혜택</label>
						<div class="col-sm-8">
							<input name="benefit" type="text" class="form-control" value="${shop_product.benefit}">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">가격</label>
						<div class="col-sm-8">
							<input name="price" type="text" class="form-control" value="${shop_product.price}">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning"
						data-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-success">수정</button>
				</div>
			</form>
		</div>
	</div>
	<!------------ 자바스크립트 임포트 ------------>
	<c:import url="../import/javascript.jsp" />
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/series-label.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>
	<script>
		var month_all= new Array();	   
		<c:forEach items="${shop_product_stat}" var="mon"> 
			month_all.push(${mon.payment});
		</c:forEach>
		Highcharts.chart('container1', {
		
		    title: {
		        text: '[${shop_product.productName}] 매출현황 '
		    },
		
		    subtitle: {
		        text: '연간 매출'
		    },
		
		    yAxis: {
		        title: {
		            text: '원'
		        }
		    },
		
		    xAxis: {
		        accessibility: {
		            rangeDescription: 'Range: 1 to 12'
		        }
		    },
		
		    legend: {
		        layout: 'vertical',
		        align: 'right',
		        verticalAlign: 'middle'
		    },
		
		    plotOptions: {
		        series: {
		            label: {
		                connectorAllowed: false
		            },
		            pointStart: 1
		        }
		    },
		
		    series: [{
		        name: '${shop_product.productName}',
		        data: month_all
		    }],
		
		    responsive: {
		        rules: [{
		            condition: {
		                maxWidth: 300
		            },
		            chartOptions: {
		                legend: {
		                    layout: 'horizontal',
		                    align: 'center',
		                    verticalAlign: 'bottom'
		                }
		            }
		        }]
		    }
		
		});
	</script>
	
	<!------------ Javascript END ------------>
</body>
</html>

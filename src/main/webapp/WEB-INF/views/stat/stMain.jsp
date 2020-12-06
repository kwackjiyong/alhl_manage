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
                                                    <i class="icofont icofont-chart-bar-graph bg-c-yellow"></i>
                                                    <div class="d-inline">
                                                        <h4>매출/통계</h4>
                                                        <span>통계와 내역을 확인 할 수 있습니다.</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
									<!-- Page-header end -->

									<div class="page-body">
										
										<div class="row">
											
											<div class="col-sm-12">
                                                <!-- Tab variant tab card start -->
                                                <div class="card">
                                                    <div class="card-block tab-icon">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <!-- Nav tabs -->
                                                                <ul class="nav nav-tabs md-tabs " role="tablist">
                                                                    <li class="nav-item">
                                                                        <a class="nav-link active" data-toggle="tab" href="#home7" role="tab"><i class="icofont icofont-home"></i>매출 통계</a>
                                                                        <div class="slide"></div>
                                                                    </li>
                                                                    <li class="nav-item">
                                                                        <a class="nav-link" data-toggle="tab" href="#profile7" role="tab"><i class="icofont icofont-ui-user "></i>이용권 통계</a>
                                                                        <div class="slide"></div>
                                                                    </li>
                                                                    <li class="nav-item">
                                                                        <a class="nav-link" data-toggle="tab" href="#messages7" role="tab"><i class="icofont icofont-ui-message"></i>검색 통계</a>
                                                                        <div class="slide"></div>
                                                                    </li>
                                                                    <li class="nav-item">
                                                                        <a class="nav-link" data-toggle="tab" href="#settings7" role="tab"><i class="icofont icofont-ui-settings"></i>유저 통계</a>
                                                                        <div class="slide"></div>
                                                                    </li>
                                                                </ul>
                                                                <!-- Tab panes -->
                                                                <div class="tab-content card-block">
                                                                    <div class="tab-pane active" id="home7" role="tabpanel">
                                                                    	<div class="row">
                                                                    		<div class="col-lg-12 col-xl-6">
																				<div class="card"  id="container1">
													
																				</div>
																			</div>
																			<div class="col-lg-12 col-xl-6">
																				<div class="card">
																					<div class="card-header">
											                                            <h5>상품 결제 내역</h5>
											                                            <div class="card-header-right">    <ul class="list-unstyled card-option">        <li><i class="icofont icofont-simple-left "></i></li>        <li><i class="icofont icofont-maximize full-card"></i></li>       </ul></div>
											                                        </div>
											                                        <div class="card-block table-border-style">
											                                            <div class="table-responsive">
											                                                <table id="datalist1" width="100%" class="table table-hover" style="text-align: center;">
											                                                    <thead>
											                                                        <tr>
											                                                            <th width="20%" >#</th>
											                                                            <th width="20%">상품번호</th>
											                                                            <th width="20%">결제액</th>
											                                                            <th width="20%">사용자</th>
											                                                            <th width="20%">결제일</th>
											                                                        </tr>
											                                                    </thead>
											                                                    <tbody>
																									<c:forEach items="${sldto}" var="sl">
																										<tr>
																											<th>${sl.sLogId}</th>
																											<th>${sl.productNum}</th>
																											<td>${sl.payment}</td>
																											<td>${sl.userId}</td>
																											<td>${sl.logDate}</td>
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
                                                                    <div class="tab-pane" id="profile7" role="tabpanel">
                                                                        <div class="row">
                                                                    		<div class="col-lg-12 col-xl-6">
																				<div class="card"  id="container2">
													
																				</div>
																			</div>
																			<div class="col-lg-12 col-xl-6">
																				<div class="card">
																					<div class="card-header">
											                                            <h5>상품 결제 내역</h5>
											                                            <div class="card-header-right">    <ul class="list-unstyled card-option">        <li><i class="icofont icofont-simple-left "></i></li>        <li><i class="icofont icofont-maximize full-card"></i></li>       </ul></div>
											                                        </div>
											                                        <div class="card-block table-border-style">
											                                            <div class="table-responsive">
											                                                <table id="datalist2"  width="100%" class="table table-hover" style="text-align: center;">
											                                                    <thead>
											                                                        <tr>
											                                                            <th width="20%" >#</th>
											                                                            <th width="20%">상품번호</th>
											                                                            <th width="20%">결제액</th>
											                                                            <th width="20%">사용자</th>
											                                                            <th width="20%">결제일</th>
											                                                        </tr>
											                                                    </thead>
											                                                    <tbody>
																									<c:forEach items="${sldto}" var="sl">
																										<tr>
																											<th>${sl.sLogId}</th>
																											<th>${sl.productNum}</th>
																											<td>${sl.payment}</td>
																											<td>${sl.userId}</td>
																											<td>${sl.logDate}</td>
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
                                                                    <div class="tab-pane" id="messages7" role="tabpanel">
                                                                        <div class="row">
                                                                    		<div class="col-lg-12 col-xl-6">
																				<div class="card"  id="container3">
													
																				</div>
																			</div>
																			<div class="col-lg-12 col-xl-6">
																				<div class="card">
																					<div class="card-header">
											                                            <h5>검색 내역</h5>
											                                            <div class="card-header-right">    <ul class="list-unstyled card-option">        <li><i class="icofont icofont-simple-left "></i></li>        <li><i class="icofont icofont-maximize full-card"></i></li>       </ul></div>
											                                        </div>
											                                        <div class="card-block table-border-style">
											                                            <div class="table-responsive">
											                                                <table id="datalist3" width="100%" class="table table-hover" style="text-align: center;">
											                                                    <thead>
											                                                        <tr>
											                                                            <th width="25%" >#</th>
											                                                            <th width="25%">사용자id</th>
											                                                            <th width="25%">검색어</th>
											                                                            <th width="25%">검색일</th>
											                                                        </tr>
											                                                    </thead>
											                                                    <tbody>
																									<c:forEach items="${srchdto}" var="sl">
																										<tr>
																											<th>${sl.srchId}</th>
																											<td>${sl.userId}</td>
																											<td>${sl.srchWord}</td>
																											<td>${sl.srchTime}</td>
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
                                                                    <div class="tab-pane" id="settings7" role="tabpanel">
                                                                    	<div class="row">
                                                                    		<div class="col-lg-12 col-xl-6">
																				<div class="card"  id="container4">
													
																				</div>
																			</div>
																			<div class="col-lg-12 col-xl-6">
																				<div class="card">
																					<div class="card-header">
											                                            <h5>사용자 내역</h5>
											                                            <div class="card-header-right">    <ul class="list-unstyled card-option">        <li><i class="icofont icofont-simple-left "></i></li>        <li><i class="icofont icofont-maximize full-card"></i></li>       </ul></div>
											                                        </div>
											                                        <div class="card-block table-border-style">
											                                            <div class="table-responsive">
											                                                <table id="datalist4"  width="100%" class="table table-hover" style="text-align: center;">
											                                                    <thead>
											                                                        <tr>
											                                                            <th width="20%">사용자id</th>
											                                                            <th width="20%">사용자명</th>
											                                                            <th width="20%">생년월일</th>
											                                                            <th width="20%">성별</th>
											                                                            <th width="20%">이메일</th>
											                                                            <th width="20%">이메일확인여부</th>
											                                                            <th width="20%">사용자권한</th>
											                                                            <th width="20%">CASH</th>
											                                                            <th width="20%">가입일</th>
											                                                        </tr>
											                                                    </thead>
											                                                    <tbody>
																									<c:forEach items="${userdto}" var="user">
																										<tr>
																											<th>${user.userId}</th>
																											<th>${user.userName}</th>
																											<td>${user.userBirth}</td>
																											<td>${user.userGender}</td>
																											<td>${user.userEmail}</td>
																											<td>${user.userEmailCertified}</td>
																											<td>${user.userAuthority}</td>
																											<td>${user.cash}</td>
																											<td>${user.creatTime}</td>
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
                                                        <!-- Row end -->
                                                    </div>
                                                </div>
                                                <!-- Tab variant tab card start -->
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

	<!------------ 자바스크립트 임포트 ------------>
	<c:import url="../import/javascript.jsp" />
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/series-label.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>
	<script>
	$(document).ready(function() {
		$('#datalist1').DataTable({
			"lengthMenu" : [ 5, 10, 25, 50, 100 ],
			"scrollY" : 600,
			"scrollCollapse" : true,
			"pagingType" : "full_numbers",
			"language" : {
				search : "리스트 내 검색 : ",
				"info" : "총 _PAGES_ 페이지 중 _PAGE_ 페이지 ",
				"infoEmpty" : "검색 결과가 없습니다.",
				"infoFiltered" : " ( _MAX_개의 검색결과 중)",
				"lengthMenu" : "_MENU_ 개씩 보기",
				"paginate" : {
					"first" : "처음",
					"last" : "마지막",
					"next" : "다음",
					"previous" : "이전"
				}

			}
		});
		$('#datalist2').DataTable({
			"lengthMenu" : [ 5, 10, 25, 50, 100 ],
			"scrollY" : 600,
			"scrollCollapse" : true,
			"pagingType" : "full_numbers",
			"language" : {
				search : "리스트 내 검색 : ",
				"info" : "총 _PAGES_ 페이지 중 _PAGE_ 페이지 ",
				"infoEmpty" : "검색 결과가 없습니다.",
				"infoFiltered" : " ( _MAX_개의 검색결과 중)",
				"lengthMenu" : "_MENU_ 개씩 보기",
				"paginate" : {
					"first" : "처음",
					"last" : "마지막",
					"next" : "다음",
					"previous" : "이전"
				}

			}
		});
		$('#datalist3').DataTable({
			"lengthMenu" : [ 5, 10, 25, 50, 100 ],
			"scrollY" : 600,
			"scrollCollapse" : true,
			"pagingType" : "full_numbers",
			"language" : {
				search : "리스트 내 검색 : ",
				"info" : "총 _PAGES_ 페이지 중 _PAGE_ 페이지 ",
				"infoEmpty" : "검색 결과가 없습니다.",
				"infoFiltered" : " ( _MAX_개의 검색결과 중)",
				"lengthMenu" : "_MENU_ 개씩 보기",
				"paginate" : {
					"first" : "처음",
					"last" : "마지막",
					"next" : "다음",
					"previous" : "이전"
				}

			}
		});
		$('#datalist4').DataTable({
			"lengthMenu" : [ 5, 10, 25, 50, 100 ],
			"scrollY" : 600,
			"scrollCollapse" : true,
			"pagingType" : "full_numbers",
			"language" : {
				search : "리스트 내 검색 : ",
				"info" : "총 _PAGES_ 페이지 중 _PAGE_ 페이지 ",
				"infoEmpty" : "검색 결과가 없습니다.",
				"infoFiltered" : " ( _MAX_개의 검색결과 중)",
				"lengthMenu" : "_MENU_ 개씩 보기",
				"paginate" : {
					"first" : "처음",
					"last" : "마지막",
					"next" : "다음",
					"previous" : "이전"
				}

			}
		});
	});
	
	//상품별 월별 매출 통계
	var month_a= new Array();	   // 전체값
	var month_1= new Array();	 
	var month_2= new Array();	  
	var month_3= new Array();	 
	
	<c:forEach items="${shopMonthData_sum.get(0)}" var="shop"> 
	month_a.push(${shop.payment});
	</c:forEach>
	<c:forEach items="${shopMonthData_sum.get(1)}" var="shop"> 
		month_1.push(${shop.payment});
	</c:forEach>
	<c:forEach items="${shopMonthData_sum.get(2)}" var="shop"> 
		month_2.push(${shop.payment});
	</c:forEach>
	<c:forEach items="${shopMonthData_sum.get(3)}" var="shop"> 
		month_3.push(${shop.payment});
	</c:forEach>
	Highcharts.chart('container1', {
	
	    title: {
	        text: '연간 매출 '
	    },
	
	    subtitle: {
	        text: '상품별 월별 정렬'
	    },
	
	    yAxis: {
	        title: {
	            text: 'Won'
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
	        name: 'Total',
	        data: month_a
	    }, {
	        name: '곰곰이',
	        data: month_1
	    }, {
	        name: '꿀곰이',
	        data: month_2
	    }, {
	        name: '불곰이',
	        data: month_3
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
	//상품별 월별 이용권 통계
	var month_a= new Array();	   // 전체값
	var month_1= new Array();	 
	var month_2= new Array();	  
	var month_3= new Array();	 
	
	<c:forEach items="${shopMonthData_cnt.get(0)}" var="shop"> 
	month_a.push(${shop.payment});
	</c:forEach>
	<c:forEach items="${shopMonthData_cnt.get(1)}" var="shop"> 
		month_1.push(${shop.payment});
	</c:forEach>
	<c:forEach items="${shopMonthData_cnt.get(2)}" var="shop"> 
		month_2.push(${shop.payment});
	</c:forEach>
	<c:forEach items="${shopMonthData_cnt.get(3)}" var="shop"> 
		month_3.push(${shop.payment});
	</c:forEach>
	Highcharts.chart('container2', {
	
	    title: {
	        text: '연간 이용권 판매수'
	    },
	
	    subtitle: {
	        text: '상품별 월별 정렬'
	    },
	
	    yAxis: {
	        title: {
	            text: 'Won'
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
	        name: 'Total',
	        data: month_a
	    }, {
	        name: '곰곰이',
	        data: month_1
	    }, {
	        name: '꿀곰이',
	        data: month_2
	    }, {
	        name: '불곰이',
	        data: month_3
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
	
	//연령별 월별 검색 통계
	var month_all= new Array();	   // 전체값
	var month_10= new Array();	 
	var month_20= new Array();	  
	var month_30= new Array();	  
	var month_40= new Array();	  
	var month_50= new Array();	   
	<c:forEach items="${srchMonthData.get(0)}" var="mon"> 
		month_all.push(${mon.srchId});
	</c:forEach>
	<c:forEach items="${srchMonthData.get(1)}" var="mon"> 
		month_10.push(${mon.srchId});
	</c:forEach>
	<c:forEach items="${srchMonthData.get(2)}" var="mon"> 
		month_20.push(${mon.srchId});
	</c:forEach>
	<c:forEach items="${srchMonthData.get(3)}" var="mon"> 
		month_30.push(${mon.srchId});
	</c:forEach>
	<c:forEach items="${srchMonthData.get(4)}" var="mon"> 
		month_40.push(${mon.srchId});
	</c:forEach>
	<c:forEach items="${srchMonthData.get(5)}" var="mon">
		month_50.push(${mon.srchId});
	</c:forEach>
	
	Highcharts.chart('container3', {
		
	    title: {
	        text: '연간 검색 수'
	    },
	
	    subtitle: {
	        text: '월별 연령별 정렬'
	    },
	
	    yAxis: {
	        title: {
	            text: 'Count'
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
	        name: 'Total',
	        data: month_all
	    }, {
	        name: '10대',
	        data: month_10
	    }, { 
	        name: '20대',
	        data: month_20
	    }, {
	        name: '30대',
	        data: month_30
	    }, {
	        name: '40대',
	        data: month_40
	    }, {
	        name: '50대이상',
	        data: month_50
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
	
	
	//연령별 월별 사용자 가입수 통계
	var month_all= new Array();	   // 전체값
	var month_10= new Array();	 
	var month_20= new Array();	  
	var month_30= new Array();	  
	var month_40= new Array();	  
	var month_50= new Array();	   
	<c:forEach items="${userMonthData.get(0)}" var="mon"> 
		month_all.push(${mon.cash});
	</c:forEach>
	<c:forEach items="${userMonthData.get(1)}" var="mon"> 
		month_10.push(${mon.cash});
	</c:forEach>
	<c:forEach items="${userMonthData.get(2)}" var="mon"> 
		month_20.push(${mon.cash});
	</c:forEach>
	<c:forEach items="${userMonthData.get(3)}" var="mon"> 
		month_30.push(${mon.cash});
	</c:forEach>
	<c:forEach items="${userMonthData.get(4)}" var="mon"> 
		month_40.push(${mon.cash});
	</c:forEach>
	<c:forEach items="${userMonthData.get(5)}" var="mon">
		month_50.push(${mon.cash});
	</c:forEach>
	
	Highcharts.chart('container4', {
		
	    title: {
	        text: '연간 가입자 수'
	    },
	
	    subtitle: {
	        text: '월별 연령별 정렬'
	    },
	
	    yAxis: {
	        title: {
	            text: 'Count'
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
	        name: 'Total',
	        data: month_all
	    }, {
	        name: '10대',
	        data: month_10
	    }, { 
	        name: '20대',
	        data: month_20
	    }, {
	        name: '30대',
	        data: month_30
	    }, {
	        name: '40대',
	        data: month_40
	    }, {
	        name: '50대이상',
	        data: month_50
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

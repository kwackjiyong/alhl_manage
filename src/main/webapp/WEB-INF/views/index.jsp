<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>올룩꿀룩 관리자 페이지</title>
<!------------ css 임포트 ------------>
<c:import url="import/css.jsp" />
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

			<c:import url="import/navigationbar.jsp" />

			<div class="pcoded-main-container" style="margin-top: 80px;">
				<div class="pcoded-wrapper">

					<!------------ 사이드바 임포트 ------------>
					<c:import url="import/sidebar.jsp" />
					<!------------ 사이드바 임포트 END ------------>

					<div class="pcoded-content">
						<div class="pcoded-inner-content">
							<div class="main-body">
								<div class="page-wrapper">
									
									<!-- Page-header end -->

									<div class="page-body">
										<div class="row">
											<!-- card1 start -->
                                            <div class="col-md-4">
                                                <div class="card widget-card-1">
                                                    <div class="card-block-small">
                                                    <i class="ti-search"></i>
                                                        <i class="icofont icofont-ui-v-card bg-c-green card1-icon"></i>
                                                        <span class="text-c-green f-w-600">이용권 월매출</span>
                                                        <h4>${shopSum} 원</h4>
                                                        <div>
                                                            <span class="f-left m-t-10 text-muted">
                                                                <i class="text-c-green f-16 icofont icofont-tag m-r-10"></i>11/05 12:13에 업데이트 되었습니다.
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- card1 end -->
                                            <!-- card1 start -->
                                            <div class="col-md-4">
                                                <div class="card widget-card-1">
                                                    <div class="card-block-small">
                                                        <i class="icofont icofont-look bg-c-pink card1-icon"></i>
                                                        <span class="text-c-pink f-w-600">일일 검색 횟수</span>
                                                        <h4>${srchCnt} 회</h4>
                                                        <span class="f-left m-t-10 text-muted">
                                                            <i class="text-c-green f-16 icofont icofont-tag m-r-10"></i>11/05 12:13에 업데이트 되었습니다.
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- card1 end -->
                                            
                                            <div class="col-md-4">
                                                <div class="card widget-card-1">
                                                    <div class="card-block-small">
                                                        <i class="icofont icofont-street-view bg-c-blue card1-icon"></i>
                                                        <span class="text-c-blue f-w-600">일일 가입자수</span>
                                                        <h4>${userCnt} 명</h4>
                                                        <span class="f-left m-t-10 text-muted">
                                                            <i class="text-c-green f-16 icofont icofont-tag m-r-10"></i>11/05 12:13에 업데이트 되었습니다.
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            
											<div class="col-lg-6 col-md-12">
												<div class="card widget-card-1">
													<div class="card-block-small">
														<div id="container1"></div>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-12">
												<div class="card widget-card-1">
													<div class="card-block-small">
														<div id="container2"></div>
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

	<!------------ 자바스크립트 임포트 ------------>
	<c:import url="import/javascript.jsp" />
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/series-label.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>
	<script>
		var month_a= new Array();	   // 전체값
		var month_1= new Array();	 
		var month_2= new Array();	  
		var month_3= new Array();	 
		
		<c:forEach items="${shopMonthData.get(0)}" var="shop"> 
		month_a.push(${shop.payment});
		</c:forEach>
		<c:forEach items="${shopMonthData.get(1)}" var="shop"> 
			month_1.push(${shop.payment});
		</c:forEach>
		<c:forEach items="${shopMonthData.get(2)}" var="shop"> 
			month_2.push(${shop.payment});
		</c:forEach>
		<c:forEach items="${shopMonthData.get(3)}" var="shop"> 
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
		
		Highcharts.chart('container2', {
			
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
	</script>
	
	<!------------ Javascript END ------------>
</body>
</html>

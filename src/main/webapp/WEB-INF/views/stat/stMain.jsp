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
											                                                <table class="table">
											                                                    <thead>
											                                                        <tr>
											                                                            <th>#</th>
											                                                            <th>상품번호</th>
											                                                            <th>상품명</th>
											                                                            <th>정상가</th>
											                                                            <th>할인율</th>
											                                                            <th>결제액</th>
											                                                            <th>사용자</th>
											                                                            <th>결제일</th>
											                                                        </tr>
											                                                    </thead>
											                                                    <tbody>
											                                                        <tr>
											                                                            <th scope="row">1</th>
											                                                            <th>3</th>
											                                                            <td>꿀곰이</td>
											                                                            <td>2000</td>
											                                                            <td>10</td>
											                                                            <td>900</td>
											                                                            <td>rhkrwldyd</td>
											                                                            <td>2020-11-11</td>
											                                                        </tr>
											                                                        <tr>
											                                                            <th scope="row">2</th>
											                                                            <th>2</th>
											                                                            <td>곰곰이</td>
											                                                            <td>1000</td>
											                                                            <td>10</td>
											                                                            <td>900</td>
											                                                            <td>rhkrwldyd</td>
											                                                            <td>2020-11-11</td>
											                                                        </tr>
											                                                        <tr>
											                                                            <th scope="row">3</th>
											                                                            <th>3</th>
											                                                            <td>꿀곰이</td>
											                                                            <td>2000</td>
											                                                            <td>10</td>
											                                                            <td>900</td>
											                                                            <td>rhkrwldyd</td>
											                                                            <td>2020-11-11</td>
											                                                        </tr>
											                                                        <tr>
											                                                            <th scope="row">4</th>
											                                                            <th>3</th>
											                                                            <td>꿀곰이</td>
											                                                            <td>2000</td>
											                                                            <td>10</td>
											                                                            <td>900</td>
											                                                            <td>rhkrwldyd</td>
											                                                            <td>2020-11-11</td>
											                                                        </tr>
											                                                        <tr>
											                                                            <th scope="row">5</th>
											                                                            <th>4</th>
											                                                            <td>불곰이</td>
											                                                            <td>5000</td>
											                                                            <td>10</td>
											                                                            <td>900</td>
											                                                            <td>rhkrwldyd</td>
											                                                            <td>2020-11-11</td>
											                                                        </tr>
											                                                    </tbody>
											                                                </table>
											                                            </div>
											                                        </div>
																				</div>
																			</div>
                                                                    	
                                                                    	</div>
                                                                        
																		
                                                                    </div>
                                                                    <div class="tab-pane" id="profile7" role="tabpanel">
                                                                        <div class="col-lg-12 col-xl-6">
																			<div class="card widget-card-1"  id="container1">
												
																			</div>
																		</div>
                                                                    </div>
                                                                    <div class="tab-pane" id="messages7" role="tabpanel">
                                                                        <p class="m-0">3. This is Photoshop's version of Lorem IpThis is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean mas Cum sociis natoque penatibus et magnis dis.....</p>
                                                                    </div>
                                                                    <div class="tab-pane" id="settings7" role="tabpanel">
                                                                        <p class="m-0">4.Cras consequat in enim ut efficitur. Nulla posuere elit quis auctor interdum praesent sit amet nulla vel enim amet. Donec convallis tellus neque, et imperdiet felis amet.</p>
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
		Highcharts.chart('container1', {
		
		    title: {
		        text: '상품별 월간 매출 '
		    },
		
		    subtitle: {
		        text: '2020/11/05에 업데이트 되었습니다.'
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
		        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
		    }, {
		        name: '곰곰이',
		        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
		    }, {
		        name: '꿀곰이',
		        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
		    }, {
		        name: '불곰이',
		        data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
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

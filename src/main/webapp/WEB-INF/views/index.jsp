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
									<!-- Page-header start -->
									<div class="page-header card">
										<div class="row align-items-end">
											<div class="col-lg-8">
												<div class="page-header-title">
													<i class="icofont icofont-chart-bar-graph bg-c-blue"></i>
													<div class="d-inline">
														<h4>Morris Chart</h4>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
													</div>
												</div>
											</div>
											<div class="col-lg-4">
												<div class="page-header-breadcrumb">
													<ul class="breadcrumb-title">
														<li class="breadcrumb-item"><a href="index.html">
																<i class="icofont icofont-home"></i>
														</a></li>
														<li class="breadcrumb-item"><a href="#!">Charts</a></li>
														<li class="breadcrumb-item"><a href="#">Morris
																Chart</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<!-- Page-header end -->

									<div class="page-body">
										<div class="row">
											<!-- SITE VISIT CHART start -->
											<div class="col-md-12 col-lg-6">
												<div class="card">
													<div class="card-header">
														<h5>Site visit chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
														<div class="card-header-right">
															<i class="icofont icofont-spinner-alt-5"></i>
														</div>
													</div>
													<div class="card-block">
														<div id="morris-site-visit"
															style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
															<svg height="356.4" version="1.1" width="412.4"
																xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink"
																style="overflow: hidden; position: relative; top: -0.6px;">
																<desc
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc>
																<defs
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
																<text x="32.34375" y="320.184375" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text>
																<path fill="none" stroke="#e0e0e0"
																	d="M44.84375,320.184375H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="246.38828124999998"
																	text-anchor="end" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.396093749999977"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">75</tspan></text>
																<path fill="none" stroke="#e0e0e0"
																	d="M44.84375,246.38828124999998H387.4"
																	stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="172.5921875" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.396874999999994"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">150</tspan></text>
																<path fill="none" stroke="#e0e0e0"
																	d="M44.84375,172.5921875H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="98.79609375000001"
																	text-anchor="end" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.397656250000011"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">225</tspan></text>
																<path fill="none" stroke="#e0e0e0"
																	d="M44.84375,98.79609375000001H387.4"
																	stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="25" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.3984375"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">300</tspan></text>
																<path fill="none" stroke="#e0e0e0"
																	d="M44.84375,25H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="387.4" y="332.684375" text-anchor="middle"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2016</tspan></text>
																<text x="330.33334949794613" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2015</tspan></text>
																<text x="273.2666989958923" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2014</tspan></text>
																<text x="216.2000484938384" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2013</tspan></text>
																<text x="158.9770510041077" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2012</tspan></text>
																<text x="101.91040050205385" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2011</tspan></text>
																<text x="44.84375" y="332.684375" text-anchor="middle"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2010</tspan></text>
																<path fill="#e2e5ea" stroke="none"
																	d="M44.84375,320.184375L101.91040050205385,192.27114583333332L158.9770510041077,241.46854166666668L216.2000484938384,251.30802083333333L273.2666989958923,143.07375L330.33334949794613,216.86984375L387.4,74.19739583333333L387.4,320.184375L44.84375,320.184375Z"
																	fill-opacity="0.4"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 0.4;"></path>
																<path fill="none" stroke="#b4becb"
																	d="M44.84375,320.184375L101.91040050205385,192.27114583333332L158.9770510041077,241.46854166666668L216.2000484938384,251.30802083333333L273.2666989958923,143.07375L330.33334949794613,216.86984375L387.4,74.19739583333333"
																	stroke-width="0"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<circle cx="44.84375" cy="320.184375" r="0"
																	fill="#b4becb" stroke="#b4becb" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="101.91040050205385" cy="192.27114583333332"
																	r="0" fill="#b4becb" stroke="#b4becb" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="158.9770510041077" cy="241.46854166666668"
																	r="0" fill="#b4becb" stroke="#b4becb" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="216.2000484938384" cy="251.30802083333333"
																	r="3" fill="#b4becb" stroke="#b4becb" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="273.2666989958923" cy="143.07375" r="0"
																	fill="#b4becb" stroke="#b4becb" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="330.33334949794613" cy="216.86984375" r="0"
																	fill="#b4becb" stroke="#b4becb" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="387.4" cy="74.19739583333333" r="0"
																	fill="#b4becb" stroke="#b4becb" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<path fill="#0ddbe4" stroke="none"
																	d="M44.84375,320.184375L101.91040050205385,221.78958333333333L158.9770510041077,261.1475L216.2000484938384,123.39479166666666L273.2666989958923,172.5921875L330.33334949794613,231.62906249999997L387.4,172.5921875L387.4,320.184375L44.84375,320.184375Z"
																	fill-opacity="0.4"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 0.4;"></path>
																<path fill="none" stroke="#01c0c8"
																	d="M44.84375,320.184375L101.91040050205385,221.78958333333333L158.9770510041077,261.1475L216.2000484938384,123.39479166666666L273.2666989958923,172.5921875L330.33334949794613,231.62906249999997L387.4,172.5921875"
																	stroke-width="0"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<circle cx="44.84375" cy="320.184375" r="0"
																	fill="#01c0c8" stroke="#01c0c8" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="101.91040050205385" cy="221.78958333333333"
																	r="0" fill="#01c0c8" stroke="#01c0c8" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="158.9770510041077" cy="261.1475" r="0"
																	fill="#01c0c8" stroke="#01c0c8" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="216.2000484938384" cy="123.39479166666666"
																	r="3" fill="#01c0c8" stroke="#01c0c8" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="273.2666989958923" cy="172.5921875" r="0"
																	fill="#01c0c8" stroke="#01c0c8" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="330.33334949794613" cy="231.62906249999997"
																	r="0" fill="#01c0c8" stroke="#01c0c8" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="387.4" cy="172.5921875" r="0" fill="#01c0c8"
																	stroke="#01c0c8" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg>
															<div class="morris-hover morris-default-style"
																style="left: 166.2px; top: 95px;">
																<div class="morris-hover-row-label">2013</div>
																<div class="morris-hover-point" style="color: #b4becb">
																	Site A: 70</div>
																<div class="morris-hover-point" style="color: #01c0c8">
																	Site B: 200</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- SITE VISIT CHART Ends -->
											<!-- Bar Chart start -->
											<div class="col-md-12 col-lg-6">
												<div class="card">
													<div class="card-header">
														<h5>Bar chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
														<div class="card-header-right">
															<i class="icofont icofont-spinner-alt-5"></i>
														</div>
													</div>
													<div class="card-block">
														<div id="morris-bar-chart"
															style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
															<svg height="356.4" version="1.1" width="412.4"
																xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink"
																style="overflow: hidden; position: relative; left: -0.2px; top: -0.6px;">
																<desc
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc>
																<defs
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
																<text x="32.34375" y="320.184375" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text>
																<path fill="none" stroke="#eef0f2"
																	d="M44.84375,320.184375H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="246.38828124999998"
																	text-anchor="end" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.396093749999977"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">25</tspan></text>
																<path fill="none" stroke="#eef0f2"
																	d="M44.84375,246.38828124999998H387.4"
																	stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="172.5921875" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.396874999999994"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan></text>
																<path fill="none" stroke="#eef0f2"
																	d="M44.84375,172.5921875H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="98.79609374999998"
																	text-anchor="end" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.397656249999983"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">75</tspan></text>
																<path fill="none" stroke="#eef0f2"
																	d="M44.84375,98.79609374999998H387.4"
																	stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="25" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.3984375"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">100</tspan></text>
																<path fill="none" stroke="#eef0f2"
																	d="M44.84375,25H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="362.9316964285714" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2012</tspan></text>
																<text x="265.05848214285714" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2010</tspan></text>
																<text x="167.18526785714286" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2008</tspan></text>
																<text x="69.31205357142858" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2006</tspan></text>
																<rect x="50.960825892857144" y="25"
																	width="10.234151785714284" height="295.184375" rx="0"
																	ry="0" fill="#5fbeaa" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="64.19497767857143" y="54.518437500000005"
																	width="10.234151785714284" height="265.6659375" rx="0"
																	ry="0" fill="#5d9cec" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="77.42912946428571" y="143.07375"
																	width="10.234151785714284" height="177.110625" rx="0"
																	ry="0" fill="#cccccc" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="99.89743303571429" y="98.79609374999998"
																	width="10.234151785714284" height="221.38828125" rx="0"
																	ry="0" fill="#5fbeaa" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="113.13158482142858" y="128.31453125"
																	width="10.234151785714284" height="191.86984375" rx="0"
																	ry="0" fill="#5d9cec" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="126.36573660714285" y="202.11062499999997"
																	width="10.234151785714284" height="118.07375000000002"
																	rx="0" ry="0" fill="#cccccc" stroke="none"
																	fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="148.83404017857143" y="172.5921875"
																	width="10.234151785714284" height="147.5921875" rx="0"
																	ry="0" fill="#5fbeaa" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="162.06819196428572" y="202.11062499999997"
																	width="10.234151785714284" height="118.07375000000002"
																	rx="0" ry="0" fill="#5d9cec" stroke="none"
																	fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="175.30234375" y="231.62906249999997"
																	width="10.234151785714284" height="88.55531250000001"
																	rx="0" ry="0" fill="#cccccc" stroke="none"
																	fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="197.77064732142856" y="98.79609374999998"
																	width="10.234151785714284" height="221.38828125" rx="0"
																	ry="0" fill="#5fbeaa" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="211.00479910714284" y="128.31453125"
																	width="10.234151785714284" height="191.86984375" rx="0"
																	ry="0" fill="#5d9cec" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="224.23895089285713" y="202.11062499999997"
																	width="10.234151785714284" height="118.07375000000002"
																	rx="0" ry="0" fill="#cccccc" stroke="none"
																	fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="246.7072544642857" y="172.5921875"
																	width="10.234151785714284" height="147.5921875" rx="0"
																	ry="0" fill="#5fbeaa" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="259.94140625" y="202.11062499999997"
																	width="10.234151785714284" height="118.07375000000002"
																	rx="0" ry="0" fill="#5d9cec" stroke="none"
																	fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="273.1755580357143" y="231.62906249999997"
																	width="10.234151785714284" height="88.55531250000001"
																	rx="0" ry="0" fill="#cccccc" stroke="none"
																	fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="295.64386160714287" y="98.79609374999998"
																	width="10.234151785714284" height="221.38828125" rx="0"
																	ry="0" fill="#5fbeaa" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="308.87801339285716" y="128.31453125"
																	width="10.234151785714284" height="191.86984375" rx="0"
																	ry="0" fill="#5d9cec" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="322.11216517857144" y="202.11062499999997"
																	width="10.234151785714284" height="118.07375000000002"
																	rx="0" ry="0" fill="#cccccc" stroke="none"
																	fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="344.58046874999997" y="25"
																	width="10.234151785714284" height="295.184375" rx="0"
																	ry="0" fill="#5fbeaa" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="357.81462053571425" y="54.518437500000005"
																	width="10.234151785714284" height="265.6659375" rx="0"
																	ry="0" fill="#5d9cec" stroke="none" fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
																<rect x="371.04877232142854" y="202.11062499999997"
																	width="10.234151785714284" height="118.07375000000002"
																	rx="0" ry="0" fill="#cccccc" stroke="none"
																	fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect></svg>
															<div class="morris-hover morris-default-style"
																style="left: 27.9406px; top: 110px; display: none;">
																<div class="morris-hover-row-label">2006</div>
																<div class="morris-hover-point" style="color: #5FBEAA">
																	A: 100</div>
																<div class="morris-hover-point" style="color: #5D9CEC">
																	B: 90</div>
																<div class="morris-hover-point" style="color: #cCcCcC">
																	C: 60</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- Bar Chart Ends -->
											<!-- EXTRA AREA CHART start -->
											<div class="col-lg-12">
												<div class="card">
													<div class="card-header">
														<h5>Extra area chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
														<div class="card-header-right">
															<i class="icofont icofont-spinner-alt-5"></i>
														</div>
													</div>
													<div class="card-block">
														<div id="morris-extra-area"
															style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
															<svg height="404.8" version="1.1" width="412.4"
																xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink"
																style="overflow: hidden; position: relative; top: -0.2px;">
																<desc
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc>
																<defs
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
																<text x="32.34375" y="368.584375" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.404687500000023"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text>
																<path fill="none" stroke="#5fbeaa"
																	d="M44.84375,368.584375H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="282.68828125000005"
																	text-anchor="end" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.3992187500000455"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan></text>
																<path fill="none" stroke="#5fbeaa"
																	d="M44.84375,282.68828125000005H387.4"
																	stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="196.7921875" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.401562500000011"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">100</tspan></text>
																<path fill="none" stroke="#5fbeaa"
																	d="M44.84375,196.7921875H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="110.89609375000003"
																	text-anchor="end" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.403906250000034"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">150</tspan></text>
																<path fill="none" stroke="#5fbeaa"
																	d="M44.84375,110.89609375000003H387.4"
																	stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="25" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.3984375"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">200</tspan></text>
																<path fill="none" stroke="#5fbeaa"
																	d="M44.84375,25H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="387.4" y="381.084375" text-anchor="middle"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.404687500000023"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2016</tspan></text>
																<text x="330.33334949794613" y="381.084375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.404687500000023"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2015</tspan></text>
																<text x="273.2666989958923" y="381.084375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.404687500000023"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2014</tspan></text>
																<text x="216.2000484938384" y="381.084375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.404687500000023"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2013</tspan></text>
																<text x="158.9770510041077" y="381.084375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.404687500000023"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2012</tspan></text>
																<text x="101.91040050205385" y="381.084375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.404687500000023"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2011</tspan></text>
																<text x="44.84375" y="381.084375" text-anchor="middle"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.404687500000023"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2010</tspan></text>
																<path fill="#fad0c3" stroke="none"
																	d="M44.84375,368.584375C59.11041262551346,347.1103515625,87.64373787654038,286.98308593750005,101.91040050205385,282.68828125000005C116.17706312756731,278.39347656250004,144.71038837859425,336.37040222084477,158.9770510041077,334.22593750000004C173.28280037654037,332.07559753334476,201.89429912140574,267.6594024666553,216.2000484938384,265.5090625C230.46671111935188,263.3645977791553,259.00003637037884,309.53081054687505,273.2666989958923,317.04671875C287.53336162140573,324.562626953125,316.0666868724327,321.34152343750003,330.33334949794613,325.63632812500003C344.6000121234596,329.93113281250004,373.13333737448653,344.96294921875,387.4,351.40515625L387.4,368.584375L44.84375,368.584375Z"
																	fill-opacity="0.8"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 0.8;"></path>
																<path fill="none" stroke="#fb9678"
																	d="M44.84375,368.584375C59.11041262551346,347.1103515625,87.64373787654038,286.98308593750005,101.91040050205385,282.68828125000005C116.17706312756731,278.39347656250004,144.71038837859425,336.37040222084477,158.9770510041077,334.22593750000004C173.28280037654037,332.07559753334476,201.89429912140574,267.6594024666553,216.2000484938384,265.5090625C230.46671111935188,263.3645977791553,259.00003637037884,309.53081054687505,273.2666989958923,317.04671875C287.53336162140573,324.562626953125,316.0666868724327,321.34152343750003,330.33334949794613,325.63632812500003C344.6000121234596,329.93113281250004,373.13333737448653,344.96294921875,387.4,351.40515625"
																	stroke-width="0"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<circle cx="44.84375" cy="368.584375" r="0"
																	fill="#fb9678" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="101.91040050205385" cy="282.68828125000005"
																	r="0" fill="#fb9678" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="158.9770510041077" cy="334.22593750000004"
																	r="0" fill="#fb9678" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="216.2000484938384" cy="265.5090625" r="0"
																	fill="#fb9678" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="273.2666989958923" cy="317.04671875" r="0"
																	fill="#fb9678" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="330.33334949794613" cy="325.63632812500003"
																	r="0" fill="#fb9678" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="387.4" cy="351.40515625" r="0"
																	fill="#fb9678" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<path fill="#afb1db" stroke="none"
																	d="M44.84375,368.584375C59.11041262551346,362.14216796875,87.64373787654038,353.55255859375,101.91040050205385,342.815546875C116.17706312756731,332.07853515625,144.71038837859425,282.04494183374663,158.9770510041077,282.68828125000005C173.28280037654037,283.33338323999664,201.89429912140574,341.5182926000342,216.2000484938384,347.9693125C230.46671111935188,354.40270666253423,259.00003637037884,348.82827343750006,273.2666989958923,334.22593750000004C287.53336162140573,319.6236015625,316.0666868724327,229.00322265625002,330.33334949794613,231.15062500000002C344.6000121234596,233.29802734375002,373.13333737448653,321.34152343750003,387.4,351.40515625L387.4,368.584375L44.84375,368.584375Z"
																	fill-opacity="0.8"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 0.8;"></path>
																<path fill="none" stroke="#7e81cb"
																	d="M44.84375,368.584375C59.11041262551346,362.14216796875,87.64373787654038,353.55255859375,101.91040050205385,342.815546875C116.17706312756731,332.07853515625,144.71038837859425,282.04494183374663,158.9770510041077,282.68828125000005C173.28280037654037,283.33338323999664,201.89429912140574,341.5182926000342,216.2000484938384,347.9693125C230.46671111935188,354.40270666253423,259.00003637037884,348.82827343750006,273.2666989958923,334.22593750000004C287.53336162140573,319.6236015625,316.0666868724327,229.00322265625002,330.33334949794613,231.15062500000002C344.6000121234596,233.29802734375002,373.13333737448653,321.34152343750003,387.4,351.40515625"
																	stroke-width="0"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<circle cx="44.84375" cy="368.584375" r="0"
																	fill="#7e81cb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="101.91040050205385" cy="342.815546875" r="0"
																	fill="#7e81cb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="158.9770510041077" cy="282.68828125000005"
																	r="0" fill="#7e81cb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="216.2000484938384" cy="347.9693125" r="0"
																	fill="#7e81cb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="273.2666989958923" cy="334.22593750000004"
																	r="0" fill="#7e81cb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="330.33334949794613" cy="231.15062500000002"
																	r="0" fill="#7e81cb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="387.4" cy="351.40515625" r="0"
																	fill="#7e81cb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<path fill="#0ddbe4" stroke="none"
																	d="M44.84375,368.584375C59.11041262551346,366.43697265625,87.64373787654038,368.584375,101.91040050205385,359.994765625C116.17706312756731,346.036650390625,144.71038837859425,257.34834606916894,158.9770510041077,256.919453125C173.28280037654037,256.48938513166894,201.89429912140574,368.38579169160397,216.2000484938384,356.558921875C230.46671111935188,344.764365910354,259.00003637037884,169.52017773437504,273.2666989958923,162.43375000000003C287.53336162140573,155.34732226562502,316.0666868724327,276.24607421875,330.33334949794613,299.8675C344.6000121234596,323.48892578125003,373.13333737448653,338.5207421875,387.4,351.40515625L387.4,368.584375L44.84375,368.584375Z"
																	fill-opacity="0.8"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 0.8;"></path>
																<path fill="none" stroke="#01c0c8"
																	d="M44.84375,368.584375C59.11041262551346,366.43697265625,87.64373787654038,368.584375,101.91040050205385,359.994765625C116.17706312756731,346.036650390625,144.71038837859425,257.34834606916894,158.9770510041077,256.919453125C173.28280037654037,256.48938513166894,201.89429912140574,368.38579169160397,216.2000484938384,356.558921875C230.46671111935188,344.764365910354,259.00003637037884,169.52017773437504,273.2666989958923,162.43375000000003C287.53336162140573,155.34732226562502,316.0666868724327,276.24607421875,330.33334949794613,299.8675C344.6000121234596,323.48892578125003,373.13333737448653,338.5207421875,387.4,351.40515625"
																	stroke-width="0"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<circle cx="44.84375" cy="368.584375" r="0"
																	fill="#01c0c8" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="101.91040050205385" cy="359.994765625" r="0"
																	fill="#01c0c8" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="158.9770510041077" cy="256.919453125" r="0"
																	fill="#01c0c8" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="216.2000484938384" cy="356.558921875" r="0"
																	fill="#01c0c8" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="273.2666989958923" cy="162.43375000000003"
																	r="0" fill="#01c0c8" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="330.33334949794613" cy="299.8675" r="0"
																	fill="#01c0c8" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="387.4" cy="351.40515625" r="0"
																	fill="#01c0c8" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg>
															<div class="morris-hover morris-default-style"
																style="left: 350.2px; top: 127px; display: none;">
																<div class="morris-hover-row-label">2012</div>
																<div class="morris-hover-point" style="color: #fb9678">
																	Site A: 20</div>
																<div class="morris-hover-point" style="color: #7E81CB">
																	Site B: 50</div>
																<div class="morris-hover-point" style="color: #01C0C8">
																	Site C: 65</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- EXTRA AREA CHART Ends -->
											<!-- Area Chart start -->
											<div class="col-lg-12">
												<div class="card">
													<div class="card-header">
														<h5>Area chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
														<div class="card-header-right">
															<i class="icofont icofont-spinner-alt-5"></i>
														</div>
													</div>
													<div class="card-block">
														<div id="area-example"
															style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
															<svg height="356.4" version="1.1" width="412.4"
																xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink"
																style="overflow: hidden; position: relative; top: -0.4px;">
																<desc
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc>
																<defs
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
																<text x="32.34375" y="320.184375" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text>
																<path fill="none" stroke="#aaaaaa"
																	d="M44.84375,320.184375H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="246.38828124999998"
																	text-anchor="end" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.396093749999977"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan></text>
																<path fill="none" stroke="#aaaaaa"
																	d="M44.84375,246.38828124999998H387.4"
																	stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="172.5921875" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.396874999999994"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">100</tspan></text>
																<path fill="none" stroke="#aaaaaa"
																	d="M44.84375,172.5921875H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="98.79609374999998"
																	text-anchor="end" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.397656249999983"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">150</tspan></text>
																<path fill="none" stroke="#aaaaaa"
																	d="M44.84375,98.79609374999998H387.4"
																	stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="25" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.3984375"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">200</tspan></text>
																<path fill="none" stroke="#aaaaaa"
																	d="M44.84375,25H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="387.4" y="332.684375" text-anchor="middle"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2012</tspan></text>
																<text x="330.33334949794613" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2011</tspan></text>
																<text x="273.2666989958923" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2010</tspan></text>
																<text x="216.2000484938384" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2009</tspan></text>
																<text x="158.9770510041077" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2008</tspan></text>
																<text x="101.91040050205385" y="332.684375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2007</tspan></text>
																<text x="44.84375" y="332.684375" text-anchor="middle"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.395312499999989"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2006</tspan></text>
																<path fill="#afe3d4" stroke="none"
																	d="M44.84375,39.75921875C59.11041262551346,58.2082421875,87.64373787654038,95.10628906249998,101.91040050205385,113.55531249999999C116.17706312756731,132.00433593749997,144.71038837859425,187.35140625,158.9770510041077,187.35140625C173.28280037654037,187.35140625,201.89429912140574,113.55531249999999,216.2000484938384,113.55531249999999C230.46671111935188,113.55531249999999,259.00003637037884,187.35140625,273.2666989958923,187.35140625C287.53336162140573,187.35140625,316.0666868724327,132.00433593749997,330.33334949794613,113.55531249999999C344.6000121234596,95.10628906249998,373.13333737448653,58.2082421875,387.4,39.75921875L387.4,320.184375L44.84375,320.184375Z"
																	fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></path>
																<path fill="none" stroke="#64ddbb"
																	d="M44.84375,39.75921875C59.11041262551346,58.2082421875,87.64373787654038,95.10628906249998,101.91040050205385,113.55531249999999C116.17706312756731,132.00433593749997,144.71038837859425,187.35140625,158.9770510041077,187.35140625C173.28280037654037,187.35140625,201.89429912140574,113.55531249999999,216.2000484938384,113.55531249999999C230.46671111935188,113.55531249999999,259.00003637037884,187.35140625,273.2666989958923,187.35140625C287.53336162140573,187.35140625,316.0666868724327,132.00433593749997,330.33334949794613,113.55531249999999C344.6000121234596,95.10628906249998,373.13333737448653,58.2082421875,387.4,39.75921875"
																	stroke-width="3"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<circle cx="44.84375" cy="39.75921875" r="4"
																	fill="#64ddbb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="101.91040050205385" cy="113.55531249999999"
																	r="4" fill="#64ddbb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="158.9770510041077" cy="187.35140625" r="4"
																	fill="#64ddbb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="216.2000484938384" cy="113.55531249999999"
																	r="4" fill="#64ddbb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="273.2666989958923" cy="187.35140625" r="4"
																	fill="#64ddbb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="330.33334949794613" cy="113.55531249999999"
																	r="4" fill="#64ddbb" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="387.4" cy="39.75921875" r="4" fill="#64ddbb"
																	stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<path fill="#e6f7f4" stroke="none"
																	d="M44.84375,172.5921875C59.11041262551346,181.81669921875,87.64373787654038,200.26572265625,101.91040050205385,209.490234375C116.17706312756731,218.71474609375,144.71038837859425,246.38828124999998,158.9770510041077,246.38828124999998C173.28280037654037,246.38828124999998,201.89429912140574,209.490234375,216.2000484938384,209.490234375C230.46671111935188,209.490234375,259.00003637037884,246.38828124999998,273.2666989958923,246.38828124999998C287.53336162140573,246.38828124999998,316.0666868724327,218.71474609375,330.33334949794613,209.490234375C344.6000121234596,200.26572265625,373.13333737448653,181.81669921875,387.4,172.5921875L387.4,320.184375L44.84375,320.184375Z"
																	fill-opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></path>
																<path fill="none" stroke="#93ebdd"
																	d="M44.84375,172.5921875C59.11041262551346,181.81669921875,87.64373787654038,200.26572265625,101.91040050205385,209.490234375C116.17706312756731,218.71474609375,144.71038837859425,246.38828124999998,158.9770510041077,246.38828124999998C173.28280037654037,246.38828124999998,201.89429912140574,209.490234375,216.2000484938384,209.490234375C230.46671111935188,209.490234375,259.00003637037884,246.38828124999998,273.2666989958923,246.38828124999998C287.53336162140573,246.38828124999998,316.0666868724327,218.71474609375,330.33334949794613,209.490234375C344.6000121234596,200.26572265625,373.13333737448653,181.81669921875,387.4,172.5921875"
																	stroke-width="3"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<circle cx="44.84375" cy="172.5921875" r="4"
																	fill="#93ebdd" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="101.91040050205385" cy="209.490234375" r="4"
																	fill="#93ebdd" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="158.9770510041077" cy="246.38828124999998"
																	r="4" fill="#93ebdd" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="216.2000484938384" cy="209.490234375" r="4"
																	fill="#93ebdd" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="273.2666989958923" cy="246.38828124999998"
																	r="4" fill="#93ebdd" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="330.33334949794613" cy="209.490234375" r="4"
																	fill="#93ebdd" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="387.4" cy="172.5921875" r="4" fill="#93ebdd"
																	stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg>
															<div class="morris-hover morris-default-style"
																style="left: 312.4px; top: 16px;">
																<div class="morris-hover-row-label">2012</div>
																<div class="morris-hover-point" style="color: #93EBDD">
																	Series A: 100</div>
																<div class="morris-hover-point" style="color: #64DDBB">
																	Series B: 90</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- Area Chart Ends -->
											<!-- LINE CHART start -->
											<div class="col-md-12 col-lg-6">
												<div class="card">
													<div class="card-header">
														<h5>Line chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
													</div>
													<div class="card-block">
														<div id="line-example"
															style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
															<svg height="342" version="1.1" width="534"
																xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink"
																style="overflow: hidden; position: relative; top: -0.6px;">
																<desc
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc>
																<defs
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
																<text x="32.34375" y="305.784375" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.401562500000011"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text>
																<path fill="none" stroke="#aaaaaa"
																	d="M44.84375,305.784375H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="235.58828125000002"
																	text-anchor="end" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.400781250000023"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">25</tspan></text>
																<path fill="none" stroke="#aaaaaa"
																	d="M44.84375,235.58828125000002H387.4"
																	stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="165.3921875" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.400000000000006"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan></text>
																<path fill="none" stroke="#aaaaaa"
																	d="M44.84375,165.3921875H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="95.19609375000002"
																	text-anchor="end" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.399218750000017"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">75</tspan></text>
																<path fill="none" stroke="#aaaaaa"
																	d="M44.84375,95.19609375000002H387.4"
																	stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="32.34375" y="25" text-anchor="end"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal">
																<tspan dy="4.3984375"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">100</tspan></text>
																<path fill="none" stroke="#aaaaaa"
																	d="M44.84375,25H387.4" stroke-width="0.5"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="387.4" y="318.284375" text-anchor="middle"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.401562500000011"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2012</tspan></text>
																<text x="330.33334949794613" y="318.284375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.401562500000011"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2011</tspan></text>
																<text x="273.2666989958923" y="318.284375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.401562500000011"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2010</tspan></text>
																<text x="216.2000484938384" y="318.284375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.401562500000011"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2009</tspan></text>
																<text x="158.9770510041077" y="318.284375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.401562500000011"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2008</tspan></text>
																<text x="101.91040050205385" y="318.284375"
																	text-anchor="middle" font-family="sans-serif"
																	font-size="12px" stroke="none" fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.401562500000011"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2007</tspan></text>
																<text x="44.84375" y="318.284375" text-anchor="middle"
																	font-family="sans-serif" font-size="12px" stroke="none"
																	fill="#888888"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;"
																	font-weight="normal"
																	transform="matrix(1,0,0,1,0,8.0078)">
																<tspan dy="4.401562500000011"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2006</tspan></text>
																<path fill="none" stroke="#ff9f55"
																	d="M44.84375,53.07843750000001C59.11041262551346,70.62746093750002,87.64373787654038,105.72550781250003,101.91040050205385,123.27453125000002C116.17706312756731,140.82355468750004,144.71038837859425,193.470625,158.9770510041077,193.470625C173.28280037654037,193.470625,201.89429912140574,123.27453125000002,216.2000484938384,123.27453125000002C230.46671111935188,123.27453125000002,259.00003637037884,193.470625,273.2666989958923,193.470625C287.53336162140573,193.470625,316.0666868724327,140.82355468750004,330.33334949794613,123.27453125000002C344.6000121234596,105.72550781250003,373.13333737448653,70.62746093750002,387.4,53.07843750000001"
																	stroke-width="3"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<path fill="none" stroke="#b4c1d7"
																	d="M44.84375,25C59.11041262551346,42.549023437500004,87.64373787654038,77.64707031250002,101.91040050205385,95.19609375000002C116.17706312756731,112.74511718750001,144.71038837859425,165.3921875,158.9770510041077,165.3921875C173.28280037654037,165.3921875,201.89429912140574,95.19609375000002,216.2000484938384,95.19609375000002C230.46671111935188,95.19609375000002,259.00003637037884,165.3921875,273.2666989958923,165.3921875C287.53336162140573,165.3921875,316.0666868724327,112.74511718750001,330.33334949794613,95.19609375000002C344.6000121234596,77.64707031250002,373.13333737448653,42.549023437500004,387.4,25"
																	stroke-width="3"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<circle cx="44.84375" cy="53.07843750000001" r="4"
																	fill="#ff9f55" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="101.91040050205385" cy="123.27453125000002"
																	r="4" fill="#ff9f55" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="158.9770510041077" cy="193.470625" r="4"
																	fill="#ff9f55" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="216.2000484938384" cy="123.27453125000002"
																	r="4" fill="#ff9f55" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="273.2666989958923" cy="193.470625" r="4"
																	fill="#ff9f55" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="330.33334949794613" cy="123.27453125000002"
																	r="4" fill="#ff9f55" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="387.4" cy="53.07843750000001" r="4"
																	fill="#ff9f55" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="44.84375" cy="25" r="4" fill="#b4c1d7"
																	stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="101.91040050205385" cy="95.19609375000002"
																	r="4" fill="#b4c1d7" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="158.9770510041077" cy="165.3921875" r="4"
																	fill="#b4c1d7" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="216.2000484938384" cy="95.19609375000002"
																	r="4" fill="#b4c1d7" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="273.2666989958923" cy="165.3921875" r="4"
																	fill="#b4c1d7" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="330.33334949794613" cy="95.19609375000002"
																	r="4" fill="#b4c1d7" stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle>
																<circle cx="387.4" cy="25" r="4" fill="#b4c1d7"
																	stroke="#ffffff" stroke-width="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg>
															<div class="morris-hover morris-default-style"
																style="display: none;"></div>
														</div>
													</div>
												</div>
											</div>
											<!-- LINE CHART Ends -->
											<!-- Donut chart start -->
											<div class="col-md-12 col-lg-6">
												<div class="card">
													<div class="card-header">
														<h5>Donut chart</h5>
														<span>lorem ipsum dolor sit amet, consectetur
															adipisicing elit</span>
														<div class="card-header-right">
															<i class="icofont icofont-spinner-alt-5"></i>
														</div>
													</div>
													<div class="card-block">
														<div id="donut-example">
															<svg height="342" version="1.1" width="534"
																xmlns="http://www.w3.org/2000/svg"
																xmlns:xlink="http://www.w3.org/1999/xlink"
																style="overflow: hidden; position: relative; left: -0.2px;">
																<desc
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.2.0</desc>
																<defs
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
																<path fill="none" stroke="#5fbeaa"
																	d="M206.2,282.33333333333337A108.93333333333334,108.93333333333334,0,0,0,229.61077610033374,279.7880006085797"
																	stroke-width="2" opacity="0"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path>
																<path fill="#5fbeaa" stroke="#ffffff"
																	d="M206.2,285.33333333333337A111.93333333333334,111.93333333333334,0,0,0,230.255503716316,282.7179027061232L240.24161812386353,328.098830750297A158.4,158.4,0,0,1,206.2,331.8Z"
																	stroke-width="3"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<path fill="none" stroke="#34495e"
																	d="M229.61077610033374,279.7880006085797A108.93333333333334,108.93333333333334,0,1,0,99.07393396565607,153.6395069110992"
																	stroke-width="2" opacity="1"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 1;"></path>
																<path fill="#34495e" stroke="#ffffff"
																	d="M230.255503716316,282.7179027061232A111.93333333333334,111.93333333333334,0,1,0,96.12370570889628,153.0953072850279L45.51090094848411,143.75926036664882A163.4,163.4,0,1,1,241.31616415050064,332.9820009128696Z"
																	stroke-width="3"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<path fill="none" stroke="#ff9f55"
																	d="M99.07393396565607,153.6395069110992A108.93333333333334,108.93333333333334,0,0,0,206.16577758458985,282.3333279576889"
																	stroke-width="2" opacity="0"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path>
																<path fill="#ff9f55" stroke="#ffffff"
																	d="M96.12370570889628,153.0953072850279A111.93333333333334,111.93333333333334,0,0,0,206.16483510680925,285.3333278096448L206.1502371731857,331.7999921832734A158.4,158.4,0,0,1,50.42794804308372,144.66625974343435Z"
																	stroke-width="3"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
																<text x="206.2" y="163.4" text-anchor="middle"
																	font-family="&quot;Arial&quot;" font-size="15px"
																	stroke="none" fill="#000000"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: Arial; font-size: 15px; font-weight: 800;"
																	font-weight="800"
																	transform="matrix(1.6949,0,0,1.6949,-143.4448,-121.0556)"
																	stroke-width="0.5900015299877601">
																<tspan dy="6.001562500000006"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">In-Store Sales</tspan></text>
																<text x="206.2" y="183.4" text-anchor="middle"
																	font-family="&quot;Arial&quot;" font-size="14px"
																	stroke="none" fill="#000000"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-family: Arial; font-size: 14px;"
																	transform="matrix(2.2672,0,0,2.2672,-261.4356,-222.2603)"
																	stroke-width="0.4410667839657283">
																<tspan dy="4.798437500000006"
																	style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">50</tspan></text></svg>
														</div>
													</div>
												</div>
											</div>
											<!-- Donut chart Ends -->
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
	<!------------ Javascript END ------------>
</body>
</html>

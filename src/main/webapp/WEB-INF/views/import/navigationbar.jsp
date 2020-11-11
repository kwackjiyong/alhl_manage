<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar header-navbar pcoded-header iscollapsed"
	header-theme="theme1" pcoded-header-position="fixed">
	<div class="navbar-wrapper">

		<div class="navbar-logo" logo-theme="theme1">
			<a class="mobile-menu" id="mobile-collapse" href="#!"> <i
				class="ti-menu"></i>
			</a> <a class="mobile-search morphsearch-search" href="#"> <i
				class="ti-search"></i>
			</a> <a href="index.do"> <img class="img-fluid"
				src="<c:url value='resources/images/logo2.png'/>" alt="Theme-Logo">
			</a> <a class="mobile-options"> <i class="ti-more"></i>
			</a>
		</div>

		<div class="navbar-container container-fluid">
			<ul class="nav-left">
				<li>
					<div class="sidebar_toggle">
						<a href="javascript:void(0)"><i class="ti-menu"></i></a>
					</div>
				</li>

				<li><a href="#!" onclick="javascript:toggleFullScreen()"> <i
						class="ti-fullscreen"></i>
				</a></li>
			</ul>
			<ul class="nav-right">
				
				<li class="user-profile header-notification"><a href="#!">
						 <span>kwack ji yong</span> <i
						class="ti-angle-down"></i>
				</a>
					<ul class="show-notification profile-notification">
						<li><a href="#!"> <i class="ti-settings"></i> Settings
						</a></li>
						<li><a href="#"> <i class="ti-user"></i> Profile
						</a></li>
						<li><a href="#"> <i class="ti-email"></i> My Messages
						</a></li>
						<li><a href="#"> <i class="ti-lock"></i> Lock Screen
						</a></li>
						<li><a href="auth-normal-sign-in.html"> <i
								class="ti-layout-sidebar-left"></i> Logout
						</a></li>
					</ul></li>
			</ul>

		</div>
	</div>
</nav>
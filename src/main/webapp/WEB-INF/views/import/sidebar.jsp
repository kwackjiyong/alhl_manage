<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="pcoded-navbar">
	<div class="sidebar_toggle">
		<a href="#"><i class="icon-close icons"></i></a>
	</div>
	<div class="pcoded-inner-navbar main-menu">
		<div class="main-menu-header">

			<div class="user-details">
				<span>${sessionScope.userData.userName}</span> <span id="more-details">grant${sessionScope.userData.userAuthority}<i
					class="ti-angle-down"></i></span>
			</div>
		</div>

		<div class="main-menu-content">
			<ul>
				<li class="more-details"><a href="#"><i class="ti-user"></i>View
						Profile</a> <a href="#!"><i class="ti-settings"></i>Settings</a> <a
					href="logout.ing"><i
						class="ti-layout-sidebar-left"></i>Logout</a></li>
			</ul>
		</div>
		<div class="pcoded-search">
			<span class="searchbar-toggle"> </span>
			<form class="pcoded-search-box " action="manage_user.do">
				<input name="userId" type="text" placeholder="Search"> <span
					class="search-icon"><i class="ti-search" aria-hidden="true"></i></span>
			</form>
		</div>
		<ul class="pcoded-item pcoded-left-item">
			<li><a href="manage_user.do"> <span class="pcoded-micon"><i
						class="ti-user"></i></span> <span class="pcoded-mtext"
					data-i18n="nav.form-components.main">사용자 관리</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
			<li><a href="product_main.do"> <span class="pcoded-micon"><i
						class="ti-shopping-cart"></i></span> <span class="pcoded-mtext"
					data-i18n="nav.form-components.main">상품 관리</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
			<li><a href="event_main.do"> <span class="pcoded-micon"><i
						class="ti-star"></i></span> <span class="pcoded-mtext"
					data-i18n="nav.form-components.main">이벤트 관리</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
			<li><a href="stat_main.do"> <span class="pcoded-micon"><i
						class="ti-bar-chart"></i></span> <span class="pcoded-mtext"
					data-i18n="nav.form-components.main">매출/통계</span> <span
					class="pcoded-mcaret"></span>
			</a></li>
		</ul>

	</div>
</nav>
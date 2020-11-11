<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="pcoded-navbar">
	<div class="sidebar_toggle">
		<a href="#"><i class="icon-close icons"></i></a>
	</div>
	<div class="pcoded-inner-navbar main-menu">
		<div class="">
			<div class="main-menu-header">
				
				<div class="user-details">
					<span>곽지용</span> <span id="more-details">Admin<i
						class="ti-angle-down"></i></span>
				</div>
			</div>

			<div class="main-menu-content">
				<ul>
					<li class="more-details"><a href="#"><i class="ti-user"></i>View
							Profile</a> <a href="#!"><i class="ti-settings"></i>Settings</a> <a
						href="auth-normal-sign-in.html"><i
							class="ti-layout-sidebar-left"></i>Logout</a></li>
				</ul>
			</div>
		</div>
		<div class="pcoded-search">
			<span class="searchbar-toggle"> </span>
			<div class="pcoded-search-box ">
				<input type="text" placeholder="Search"> <span
					class="search-icon"><i class="ti-search" aria-hidden="true"></i></span>
			</div>
		</div>
		<ul class="pcoded-item pcoded-left-item">
		 <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)">
                                        <span class="pcoded-micon"><i class="ti-user"></i></span>
                                        <span class="pcoded-mtext"  data-i18n="nav.basic-components.main">사용자 관리</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="manage_user.do">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.basic-components.alert">사용자 리스트</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="user_Find.do">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext" data-i18n="nav.basic-components.breadcrumbs">사용자 조회</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        </ul>
			<li><a href="product_main.do"> <span
					class="pcoded-micon"><i class="ti-shopping-cart"></i></span> <span
					class="pcoded-mtext" data-i18n="nav.form-components.main">상품 관리</span> <span class="pcoded-mcaret"></span>
			</a></li>
			<li><a href="event_main.do"> <span
					class="pcoded-micon"><i class="ti-star"></i></span> <span
					class="pcoded-mtext" data-i18n="nav.form-components.main">이벤트 관리</span> <span class="pcoded-mcaret"></span>
			</a></li>
			<li><a href="stat_main.do"> <span
					class="pcoded-micon"><i class="ti-bar-chart"></i></span> <span
					class="pcoded-mtext" data-i18n="nav.form-components.main">매출/통계</span> <span class="pcoded-mcaret"></span>
			</a></li>
		</ul>

	</div>
</nav>
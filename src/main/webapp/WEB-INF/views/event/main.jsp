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
									<!-- Page-header start -->
									<div class="page-header card">
										<div class="row align-items-end">
											<div class="col-lg-12">
												<div class="page-header-title">
													<i class="ti-star" style="background-color: #93BE52"></i>
													<div class="pcoded-mtext">
														<h4>이벤트 관리</h4>
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
															<h5>진행중인 리스트</h5>
														</div>
														<div class="card-header-right">
															<button type="button" class="btn btn-primary"
																data-toggle="modal" data-target="#btnEventAdd">
																이벤트 추가</button>
														</div>
													</div>
													<div class="card-block">
														<div class="card-block table-border-style">
															<div class="table-responsive">
																<table class="table table-hover">
																	<thead>
																		<tr>
																			<th>#</th>
																			<th>이벤트명</th>
																			<th>시행 관리자id</th>
																			<th>혜택대상</th>
																			<th>정량</th>
																			<th>이벤트 종류</th>
																			<th>이벤트 시작일</th>
																			<th>이벤트 종료일</th>
																			<th>예약한 날짜</th>
																			<th></th>
																		</tr>
																	</thead>
																	<tbody>
																		<c:forEach items="${eventlist}" var="list">
																		<tr data-toggle="modal" data-target="#btnRow" onclick="javascript:updateInfo('${list.eventId}','${list.eventName}','${list.eventSize}','${list.eventKind}','${list.productNum}','${list.startDate}','${list.finishDate}');">
																			<th>${list.eventId}</th>
																			<td>${list.eventName}</td>
																			<td>${list.adminId}</td>
																			<td>${list.productNum}</td>
																			<td>${list.eventSize}</td>
																			<td>${list.eventKind}</td>
																			<td>${list.startDate}</td>
																			<td>${list.finishDate}</td>
																			<td>${list.reserDate}</td>
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
									<!-- Page body end -->
								</div>
							</div>
							<!-- Main-body end -->
							<div id="styleSelector"></div>
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
			<form class="modal-content" action="eventInsert.ing" method="post">
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
							<select name="eventKind" class = "form-control">
									<option value="횟수">횟수혜택</option>
									<option value="할인">할인 %</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트명</label>
						<div class="col-sm-8">
							<input name="eventName" type="text" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">혜택 제품</label>
						<div class="col-sm-8">
							<select name="productNum" class = "form-control">
									<option value="1">곰곰이</option>
									<option value="2">꿀곰이</option>
									<option value="3">불곰이</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">수량</label>
						<div class="col-sm-8">
							<input name="eventSize" type="text" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트 시작일</label>
						<div class="col-sm-8">
							<input name="startTime" type="date" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트 종료일</label>
						<div class="col-sm-8">
							<input name="finishTime" type="date" class="form-control">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning"
						data-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-success">추가</button>
				</div>
			</form>
		</div>
	</div>
	
	<div class="modal fade" id="btnRow" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<form class="modal-content" action="eventUpdate.ing" method="post">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">이벤트 수정</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<input name="eventId" id="eventId" type="hidden" class="form-control">
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트 종류</label>
						<div class="col-sm-8">
							<select name="eventKind" id="eventKind" class = "form-control">
									<option value="횟수">횟수혜택</option>
									<option value="할인">할인 %</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트명</label>
						<div class="col-sm-8">
							<input name="eventName" id="eventName" type="text" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">혜택 제품</label>
						<div class="col-sm-8">
							<select name="productNum" id="productNum"  class = "form-control">
									<option value="1">곰곰이</option>
									<option value="2">꿀곰이</option>
									<option value="3">불곰이</option>
							</select>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">수량</label>
						<div class="col-sm-8">
							<input name="eventSize" id="eventSize" type="text" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트 시작일</label>
						<div class="col-sm-8">
							<input name="startTime" id="startTime" type="date" class="form-control">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">이벤트 종료일</label>
						<div class="col-sm-8">
							<input name="finishTime" id="finishTime" type="date" class="form-control">
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
	
	<!-------------------- 모달 END -------------------->
	
	<!------------ 자바스크립트 임포트 ------------>
	<c:import url="../import/javascript.jsp" />
	<!------------ Javascript import END ------------>
	<script type="text/javascript">
	function updateInfo(eventId,eventName,eventSize,eventKind,productNum,startTime,finishTime){
		document.getElementById("eventName").value= eventName;
		document.getElementById("eventId").value= eventId;
		document.getElementById("eventSize").value= eventSize;
		//val startDate = new Date();
		//console.log(startDate.getDate());
		//val finishDate = new Date(finishTime);
		//console.log(startDate);
		document.getElementById("startTime").value = startTime.substr(0, 10)
		document.getElementById("finishTime").value = finishTime.substr(0, 10)
		if(eventKind == "할인"){
			document.getElementById("eventKind").options[1].selected = true;
		}else{
			document.getElementById("eventKind").options[0].selected = true;
		}
		document.getElementById("productNum").options[parseInt(productNum)-1].selected = true;
		
	}
	
	</script>
</body>
</html>

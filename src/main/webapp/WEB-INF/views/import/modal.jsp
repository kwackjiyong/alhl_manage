<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 상품추가 모달창 -->
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
		</div>


	<!-- 상품수정 모달창 -->
	<div class="modal fade" id="btnProductEdit" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 id = "modal-title" class="modal-title">상품 수정</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group row">
						<label class="col-sm-4 col-form-label">상품명</label>
							<div class="col-sm-8">
								<input type="text" id = "proName"class="form-control">
							</div>
						</div>
							<div class="form-group row">
								<label class="col-sm-4 col-form-label">혜택</label>
								<div class="col-sm-8">
									<input type="text" id = "proBenefit"class="form-control">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-4 col-form-label">가격</label>
								<div class="col-sm-8">
									<input type="text" id = "ProPrice"class="form-control">
								</div>
							</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-warning"
						data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-success">수정</button>
				</div>
			</div>
		</div>
	</div>
	
	<script>
	
		var action = '';
		var url = '';
		var type = '';
		var productNum = '';
		
		$(document).ready(function(){
			
			//상품추가
			$("#createBtn").click(function(){
				action='create';
				type = 'POST';
				$('#modal-title').text("상품 추가");
				$('#btnProductEdit').modal();
			});
			
			//상품수정
			
			$("button[name='spModify']").click(function(){
				action='modify';
				type = 'POST';
				spId = this.value;
				
				//content담기
				var row = $(this).parent().parent().parent();
				var tr = row.children();
				
				var productName = tr.eq(1).text();
				var benefit = tr.eq(2).text();
				var price = tr.eq(3).text();
				
				
				
				$('#modal-title').text("상품 수정");
				$('#proName').val();
				$('#proBenefit').val();
				$('#ProPrice').val();
				
				
			});
		})
	</script>
</body>
</html>
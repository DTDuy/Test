<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>This is new feed jsp</h1>
	<!-- Trigger the modal with a button -->
	<button type="button" class="btn btn-primary btn-lg"
		data-toggle="modal" data-target="#myModal">Tạo bài viết</button>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Tạo bài viết mới</h4>
				</div>
				<div class="modal-body">
					<p>Noi dung</p>
					<textarea class="form-control" rows="5"></textarea>
					<div class="btn-group">
						<button type="button" class="btn btn-primary">Ảnh/Video</button>
						<button type="button" class="btn btn-primary">Địa chỉ</button>
						<button type="button" class="btn btn-primary">Đặc sản</button>
						<div class="btn-group">
							<button type="button" class="btn btn-primary dropdown-toggle"
								data-toggle="dropdown">
								Thêm <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">??????</a></li>
								<li><a href="#">??????</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn btn-info" data-dismiss="modal">Đăng</button>
					<button type="button" class="btn btn btn-danger"
						data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
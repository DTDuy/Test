<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1 class='display-3'>New Feed</h1>
		<!-- Trigger the modal with a button -->
		<button type="button" class="btn btn-primary btn-lg"
			data-toggle="modal" data-target="#myModal">Tạo bài viết</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<form action='<c:url value="/trang-chu/addPost"></c:url>' enctype="multipart/form-data" method="post">
						<div style="height: 0px; overflow: hidden">
							<input type="file" id="fileInput" name="fileInput" multiple="multiple" />
						</div>
						<div style="height: 0px; overflow: hidden">
							<input type="file" id="fileThumbnail" name="fileThumbnail" />
						</div>
						<div class="modal-header">
							<h4 class="modal-title">Tạo bài viết mới</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label for='inputTitle'>Tiêu đề</label> <input type="text" name='title'
									class="form-control" id="inputTitle"
									placeholder="nhập tiêu đề bài viết">
							</div>
							<div class="form-group">
								<label for='inputShortDecription'>Mô tả ngắn</label> <input type="text" name='shortDecription'
									class="form-control" id="inputShortDecription"
									placeholder="">
							</div>
							<div class="form-group">
								<label for="contentPost">Nội dung</label>
								<textarea name='content' class="form-control" id="contentPost" rows="6"></textarea>
							</div>
							<div class="form-group">
								<label for='inputAddress'>Địa chỉ</label> <input type="text" name='address'
									class="form-control" id="inputAddress"
									placeholder="nhập địa chỉ">
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputCity">Thành phố</label> <input type="text" name='city'
										class="form-control" id="inputCity">
								</div>
								<div class="form-group col-md-6">
									<label for="inputState">Tỉnh</label> <input type="text" name='state'
										class="form-control" id="inputState">
								</div>
							</div>
							<div class="form-row">
							<div class="btn-group form-group col-md-8">
								<button type="button" class="btn btn-primary"
									onclick="chooseFile('fileInput');">Ảnh bài viết</button>
								<button type="button" class="btn btn-primary"
									onclick="chooseFile('fileThumbnail');">Ảnh Thumbnail</button>
							</div>
							<div class="form-group col-md-4">
									<label for="inputState">Loại review</label> <select name='reviewType' id="inputState"
										class="form-control">
										<option selected>Choose...</option>
										<c:forEach var='item' items='${listCategory }'>
										<option>${item.getName()}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn btn-info">Đăng</button>
							<button type="button" class="btn btn btn-danger"
								data-dismiss="modal">Close</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<c:if test="${not empty listPost}">
		<c:forEach var='item' items='${listPost }'>
		<div class="row align-items-center my-5">
			<div class="col-lg-7">
			<img src="<c:url value='/file/${item.getImgThumbnail() }'/>" class="img-thumbnail" alt="Hinh anh thumbnail cua post" width="900" height="400">
				<!-- <img class="img-fluid rounded mb-4 mb-lg-0"
					src="http://placehold.it/900x400" alt=""> -->
			</div>
			<!-- /.col-lg-8 -->
			<div class="col-lg-5">
				 <h1 class="font-weight-light">${item.getTitle()}</h1>
				<p>${item.getShortDecription() }</p> 
				<a class="btn btn-primary" href="#">Chi tiết</a>
			</div>
			<!-- /.col-md-4 -->
		</div>
		</c:forEach>
		</c:if>
		<!-- Page Content -->

		<!-- Heading Row -->
		<!-- <div class="row align-items-center my-5">
			<div class="col-lg-7">
				<img class="img-fluid rounded mb-4 mb-lg-0"
					src="http://placehold.it/900x400" alt="">
			</div>
			/.col-lg-8
			<div class="col-lg-5">
				<h1 class="font-weight-light">Business Name or Tagline</h1>
				<p>This is a template that is great for small businesses. It
					doesn't have too much fancy flare to it, but it makes a great use
					of the standard Bootstrap core components. Feel free to use this
					template for any project you want!</p>
				<a class="btn btn-primary" href="#">Call to Action!</a>
			</div>
			/.col-md-4
		</div> -->
		<!-- /.row -->

		Call to Action Well
		<div class="card text-white bg-secondary my-5 py-4 text-center">
			<div class="card-body">
				<p class="text-white m-0">This call to action card is a great
					place to showcase some important information or display a clever
					tagline!</p>
			</div>
		</div>

		<!-- Content Row -->
		<div class="row">
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Card One</h2>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Rem magni quas ex numquam, maxime minus quam
							molestias corporis quod, ea minima accusamus.</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary btn-sm">More Info</a>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Card Two</h2>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt
							pariatur voluptatem sunt quam eaque, vel, non in id dolore
							voluptates quos eligendi labore.</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary btn-sm">More Info</a>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->
			<div class="col-md-4 mb-5">
				<div class="card h-100">
					<div class="card-body">
						<h2 class="card-title">Card Three</h2>
						<p class="card-text">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Rem magni quas ex numquam, maxime minus quam
							molestias corporis quod, ea minima accusamus.</p>
					</div>
					<div class="card-footer">
						<a href="#" class="btn btn-primary btn-sm">More Info</a>
					</div>
				</div>
			</div>
			<!-- /.col-md-4 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->
</body>
</html>
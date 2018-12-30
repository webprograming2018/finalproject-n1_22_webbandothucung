<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giỏ hàng</title>
<link rel="stylesheet" type="text/css" href="./assets/css/style.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<!-- OwlCarousel2 -->
<link rel="stylesheet" type="text/css"
	href="./assets/plugin/OwlCarousel2-2.3.4/owl.carousel.min.css">
<!-- Table -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/TableExport/3.3.13/css/tableexport.min.css">
<style>
.btn {
	margin-right: 5px !important;
}
</style>
</head>
<body>
	<div id="body">
		<!-- header -->
		<header class="header">
			<!-- topbar -->
			<div class="topBar">
				<div class="container">
					<div class="row">
						<div class="col-10 left">
							<div class="info">
								<span>Email: </span> <a href="" title="">chelsea@gmail.com </a>
								<span>01639613031</span>
							</div>
						</div>
						<div class="col-2 right">
							<%
								if (session.getAttribute("username") == null) {
							%>
							<i class="fa fa-user text-18"></i> <a href="LoginForward"
								title="">Đăng nhập</a>
							<%
								} else {
							%>
							<span>Xin chao: </span>
							<%=session.getAttribute("username")%>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- content -->
			<div class="content">
				<div class="container">
					<div class="row">
						<div class="col-3 left">
							<div class="logo">
								<a href="GetAllSanPhamController" title="">
									<H1>
										<img src="./assets/images/logo.png">
									</H1>
								</a>
							</div>
						</div>
						<div class="col-5 mid">
							<div class="search">
								<form name="myform" style="width: 100%;">
									<input type="text" name="tensp"
										placeholder="Bạn muốn tìm kiếm gì cho bé hôm nay ?"
										onkeyup="Search()" />
								</form>
								<div class="icon">
									<i class="fas fa-search"></i>
								</div>
							</div>
							<div id="searchresult"></div>
						</div>
						<div class="col-3 right">
							<div class="cart">
								<img src="./assets/images/hotline.png">
							</div>
						</div>
						<div class="col-1 right2">
							<a href="XemThongTinDonHangController" title=""><svg
									viewBox="0 0 576 512">
									<path
										d="M551.991 64H144.28l-8.726-44.608C133.35 8.128 123.478 0 112 0H12C5.373 0 0 5.373 0 12v24c0 6.627 5.373 12 12 12h80.24l69.594 355.701C150.796 415.201 144 430.802 144 448c0 35.346 28.654 64 64 64s64-28.654 64-64a63.681 63.681 0 0 0-8.583-32h145.167a63.681 63.681 0 0 0-8.583 32c0 35.346 28.654 64 64 64 35.346 0 64-28.654 64-64 0-18.136-7.556-34.496-19.676-46.142l1.035-4.757c3.254-14.96-8.142-29.101-23.452-29.101H203.76l-9.39-48h312.405c11.29 0 21.054-7.869 23.452-18.902l45.216-208C578.695 78.139 567.299 64 551.991 64zM208 472c-13.234 0-24-10.766-24-24s10.766-24 24-24 24 10.766 24 24-10.766 24-24 24zm256 0c-13.234 0-24-10.766-24-24s10.766-24 24-24 24 10.766 24 24-10.766 24-24 24zm23.438-200H184.98l-31.31-160h368.548l-34.78 160z"
										class=""></path></svg></a>
						</div>
					</div>
				</div>
			</div>
			<!-- menu -->
			<div class="menu">
				<div class="container">
					<div class="row">
						<ul class="list">
							<li>
								<div class="margin">
									<a href="" title="">
										<p>NHÃN HIỆU</p> <svg viewBox="0 0 256 512">
											<path
												d="M119.5 326.9L3.5 209.1c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0L128 287.3l100.4-102.2c4.7-4.7 12.3-4.7 17 0l7.1 7.1c4.7 4.7 4.7 12.3 0 17L136.5 327c-4.7 4.6-12.3 4.6-17-.1z"
												class=""></path></svg>
									</a>
									<ul class="list-child">
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Bayer
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Codos
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Doggyman
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													SmartHeart
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Virbac
												</div>
										</a></li>
									</ul>
								</div>
							</li>
							<li>
								<div class="margin">
									<a href="" title="">
										<p>SHOP CHO CHÓ</p> <svg viewBox="0 0 256 512">
											<path
												d="M119.5 326.9L3.5 209.1c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0L128 287.3l100.4-102.2c4.7-4.7 12.3-4.7 17 0l7.1 7.1c4.7 4.7 4.7 12.3 0 17L136.5 327c-4.7 4.6-12.3 4.6-17-.1z"
												class=""></path></svg>
									</a>
									<ul class="list-child">
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Dụng cụ vệ sinh
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Đồ chơi
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Y tế
												</div>
										</a></li>
									</ul>
								</div>
							</li>
							<li>
								<div class="margin">
									<a href="" title="">
										<p>SHOP CHO MÈO</p> <svg viewBox="0 0 256 512">
											<path
												d="M119.5 326.9L3.5 209.1c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0L128 287.3l100.4-102.2c4.7-4.7 12.3-4.7 17 0l7.1 7.1c4.7 4.7 4.7 12.3 0 17L136.5 327c-4.7 4.6-12.3 4.6-17-.1z"
												class=""></path></svg>
									</a>
									<ul class="list-child">
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Thức ăn
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Dụng cụ vệ sinh
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Làm đẹp
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Y tế
												</div>
										</a></li>
									</ul>
								</div>
							</li>
							<li>
								<div class="margin">
									<a href="" title="">
										<p>SHOP VẬT NUÔI KHÁC</p> <svg viewBox="0 0 256 512">
											<path
												d="M119.5 326.9L3.5 209.1c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0L128 287.3l100.4-102.2c4.7-4.7 12.3-4.7 17 0l7.1 7.1c4.7 4.7 4.7 12.3 0 17L136.5 327c-4.7 4.6-12.3 4.6-17-.1z"
												class=""></path></svg>
									</a>
									<ul class="list-child">
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Chim
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Cá
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Hamster
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Rùa
												</div>
										</a></li>
										<li><a href="" title="">
												<div class="padd">
													<svg viewBox="0 0 192 512">
														<path
															d="M166.9 264.5l-117.8 116c-4.7 4.7-12.3 4.7-17 0l-7.1-7.1c-4.7-4.7-4.7-12.3 0-17L127.3 256 25.1 155.6c-4.7-4.7-4.7-12.3 0-17l7.1-7.1c4.7-4.7 12.3-4.7 17 0l117.8 116c4.6 4.7 4.6 12.3-.1 17z"
															class=""></path></svg>
													Heo
												</div>
										</a></li>
									</ul>
								</div>
							</li>
							<li>
								<div class="margin">
									<a href="" title="">
										<p>TIN TỨC</p>
									</a>
								</div>
							</li>
							<li>
								<div class="margin">
									<a href="" title="">
										<p>LIÊN HỆ</p>
									</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</header>

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>Giỏ hàng</h2>
					<div class="giohang">
						<table class="table table-striped">
							<tr>
								<th>Sản Phẩm</th>
								<th>Đơn giá</th>
								<th>Số lượng</th>
							</tr>
							<c:set var="tongTien" value="${0}" />
							<c:forEach items="${sessionScope.giohang.sanphams}"
								var="sanpham">
								<c:set var="tongTien"
									value="${tongTien + sanpham.gia*sanpham.soLuong}" />
								<tr>
									<td>${sanpham.tensp}</td>
									<td>${sanpham.gia}đ</td>
									<td>${sanpham.soLuong}</td>
								</tr>
							</c:forEach>
							<tr>
								<td></td>
								<td>Tổng cộng</td>
								<td>${tongTien}đ</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<a href="GetAllSanPhamController" class="btn btn-primary">Mua tiếp</a>
				<a href="DatHangThanhCongController" class="btn btn-success">Đặt đơn hàng</a>
			</div>
		</div>


	</div>



	<!-- jQuery -->
	<script src="./assets/plugin/jquery-3.3.1.min.js"></script>

	<!-- Table -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.14.1/xlsx.core.min.js"></script>
	<script
		src="https://fastcdn.org/FileSaver.js/1.1.20151003/FileSaver.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/TableExport/3.3.13/js/tableexport.min.js"></script>

	<!-- OwlCarousel2 -->
	<script src="./assets/plugin/OwlCarousel2-2.3.4/owl.carousel.min.js"></script>

	<script>
		$("table.table").tableExport({
			fileName : "Hoa-don",
			formats : [ "xlsx", "csv" ],
			bootstrap : true,
			headings: true,
			footers: true
		});
	</script>
	<!-- My js -->
	<script src="./assets/js/my.js"></script>
		<!--Start of Tawk.to Script-->
	<script type="text/javascript">
		var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
		(function() {
			var s1 = document.createElement("script"), s0 = document
					.getElementsByTagName("script")[0];
			s1.async = true;
			s1.src = 'https://embed.tawk.to/5c28bbba82491369ba9feffa/default';
			s1.charset = 'UTF-8';
			s1.setAttribute('crossorigin', '*');
			s0.parentNode.insertBefore(s1, s0);
		})();
	</script>
	<!--End of Tawk.to Script-->
</body>
</html>
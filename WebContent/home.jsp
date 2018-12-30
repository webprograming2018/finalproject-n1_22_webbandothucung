<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!-- https://flatuicolors.com/ -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="./assets/css/style.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<!-- jQuery -->
<script src="./assets/plugin/jquery-3.3.1.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
	async defer></script>
<!-- OwlCarousel2 -->
<link rel="stylesheet" type="text/css"
	href="./assets/plugin/OwlCarousel2-2.3.4/owl.carousel.min.css">
<script src="./assets/plugin/OwlCarousel2-2.3.4/owl.carousel.min.js"></script>

<!-- My js -->
<script src="./assets/js/my.js"></script>
<style type="text/css">
.modal-content {
	width: 600px;
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
						<div class="col-11 left">
							<div class="info">
								<span>Email: </span> <a href="" title="">chelsea@gmail.com </a>
								<span>0123456789</span>

							</div>
						</div>
						<div class="col-1 right">
							<button class="changeBgColor" onclick="changeColor()">Change
							</button>
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
								<a href="GetAllSanPhamController">
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
							<b id="count_shopping_cart_store">${giohang.sanphams.size()}</b>
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
						<ul class="list" style="z-index: 1; position: relative;">
							<li>
								<div class="margin"">
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

		<section class="main">
			<div class="banner">
				<div class="container">
					<div class="row">
						<div class="slide"
							style="width: 100%; max-height: 400px; overflow: hidden; margin-top: 2px;">
							<div class="owl-carousel owl-theme">
								<div class="item">
									<img
										src="http://www.petcity.vn/media/banner/banner_3c7781a3.png" />
								</div>
								<div class="item">
									<img
										src="http://www.petcity.vn/media/banner/banner_1543843a.png" />
								</div>
								<div class="item">
									<img
										src="http://www.petcity.vn/media/news/772_900x603_2__1_.png" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="box-pro-home floor-1">
						<div class="pro-home-left">
							<div class="title-pro-list">
								<h2>SHOP CÚN CƯNG</h2>
							</div>
							<ul class="pro-list-home">
								<li><a href="" title="">Thức ăn</a></li>
								<li><a href="" title="">Quần áo cho chó</a></li>
								<li><a href="" title="">Vòng cổ, dây dắt</a></li>
								<li><a href="" title="">Vật dụng ăn uống</a></li>
								<li><a href="" title="">Bình nước</a></li>
								<li><a href="" title="">Bát, chén ăn</a></li>
							</ul>
							<a href="" title=""><img
								src="http://petcity.vn/media/banner/banner_8d3bba74.png"></a>
						</div>
						<div class="pro-home-right">
							<div class="list-brand">
								<div class="labell">
									<img
										src="http://www.petcity.vn/media/banner/banner_d3957710.jpg">
									<img src="http://www.petcity.vn/media/brand/anf.jpg"> <img
										src="http://www.petcity.vn/media/banner/banner_e3796ae8.jpg">
									<img
										src="http://www.petcity.vn/media/banner/banner_92c8c96e.jpg">
									<img
										src="http://www.petcity.vn/media/banner/banner_07cdfd23.jpg">
									<img
										src="http://www.petcity.vn/media/banner/banner_20f07591.jpg">
									<img
										src="http://www.petcity.vn/media/banner/banner_db8e1af0.jpg">
									<img src="http://www.petcity.vn/media/brand/friskies.jpg">
									<img src="http://www.petcity.vn/media/brand/fay.jpg">
								</div>
							</div>
							<div class="pro-list-home">
								<ul class="ul1">
									<c:forEach items="${listsanpham}" var="sanpham">
										<li>
											<div class="p-container">
												<a class="new-img" data-toggle="modal"
													data-target="#exampleModal"> <img src="${sanpham.anh}"></a>
												<a title=""
													href="ShowThongTinSanPhamController?idsanpham=${sanpham.id}"
													class="new-name">${sanpham.tensp}</a>
												<button id="chon-mua" data-id="${sanpham.id}"
													class="chon-mua" data-toggle="modal"
													data-target="#exampleModal">CHỌN MUA</button>
												<div class="modal fade" id="exampleModal" tabindex="-1"
													role="dialog" aria-labelledby="exampleModalLabel"
													aria-hidden="true">
													<div class="modal-dialog" role="document">
														<div class="modal-content">
															<div class="modal-header">
																<h5 class="modal-title" id="exampleModalLabel">Giỏ
																	hàng</h5>
																<button type="button" class="close" data-dismiss="modal"
																	aria-label="Close">
																	<span aria-hidden="true">&times;</span>
																</button>
															</div>
															<div class="modal-body">
																<table class="table">
																	<thead>
																		<tr>
																			<th>Sản phẩm</th>
																			<th>Đơn giá</th>
																			<th>Số lượng</th>
																			<th>Thành tiền</th>

																		</tr>
																	</thead>
																	<tbody id="giohang">
																		<c:forEach items="${sessionScope.giohang.sanphams}"
																			var="sanpham">
																			<tr>
																				<th><a class="new-img" data-toggle="modal"
																					data-target="#exampleModal"><img
																						src="${sanpham.anh}"></a> <a title=""
																					class="new-name">${sanpham.tensp}</a></th>
																				<td>${sanpham.gia}</td>
																				<td><input id="number" type="number"></td>
																				<td>1.095.000 đ</td>

																			</tr>
																		</c:forEach>

																	</tbody>
																</table>
															</div>
															<div class="modal-footer">
																<button type="button" class="btn btn-secondary"
																	data-dismiss="modal">Quay lại mua hàng</button>
																<button type="button" class="thanhtoan btn btn-primary">Thanh
																	toán</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<div class="banner-bottom">
						<div class="container">
							<a href="" title=""><img
								src="http://petcity.vn/media/banner/banner_ef0d3930.png"></a>
						</div>
					</div>


					<div class="box-pro-home floor-2">
						<div class="pro-home-left">
							<div class="title-pro-list">
								<h2>SHOP MÈO CƯNG</h2>
							</div>
							<ul class="pro-list-home">
								<li><a href="" title="">Thức ăn</a></li>
								<li><a href="" title="">Quần áo cho mèo</a></li>
								<li><a href="" title="">Vòng cổ, dây dắt</a></li>
								<li><a href="" title="">Vật dụng ăn uống</a></li>
								<li><a href="" title="">Bình nước</a></li>
								<li><a href="" title="">Bát, chén ăn</a></li>
							</ul>
							<a href="" title=""><img
								src="http://petcity.vn/media/banner/banner_8f121ce0.png"></a>
						</div>
						<div class="pro-home-right">
							<div class="list-brand">
								<div class="labell">
									<img
										src="http://www.petcity.vn/media/banner/banner_d3957710.jpg">
									<img src="http://www.petcity.vn/media/brand/anf.jpg"> <img
										src="http://www.petcity.vn/media/banner/banner_e3796ae8.jpg">
									<img
										src="http://www.petcity.vn/media/banner/banner_92c8c96e.jpg">
									<img
										src="http://www.petcity.vn/media/banner/banner_07cdfd23.jpg">
									<img
										src="http://www.petcity.vn/media/banner/banner_20f07591.jpg">
									<img
										src="http://www.petcity.vn/media/banner/banner_db8e1af0.jpg">
									<img src="http://www.petcity.vn/media/brand/friskies.jpg">
									<img src="http://www.petcity.vn/media/brand/fay.jpg">
								</div>
							</div>
							<div class="pro-list-home">
								<ul class="ul1">
									<li>
										<div class="p-container">
											<a href="" title="" class="new-img"><img
												src="./assets/images/fl2-1.jpg"></a> <a href="" title=""
												class="new-name">Kit cat - Cát vệ sinh</a>
											<div class="p-price">190.000đ</div>
											<a href="" title="" class="chon-mua">CHỌN MUA</a>
										</div>
									</li>
									<li>
										<div class="p-container">
											<a href="" title="" class="new-img"><img
												src="./assets/images/fl2-2.jpg"></a> <a href="" title=""
												class="new-name">Petstar - Áo nỉ lông phối màu</a>
											<div class="p-price">93.000đ</div>
											<a href="" title="" class="chon-mua">CHỌN MUA</a>
										</div>
									</li>
									<li>
										<div class="p-container">
											<a href="" title="" class="new-img"><img
												src="./assets/images/fl2-3.jpg"></a> <a href="" title=""
												class="new-name">Balo di chuyển</a>
											<div class="p-price">520.000đ</div>
											<a href="" title="" class="chon-mua">CHỌN MUA</a>
										</div>
									</li>
									<li>
										<div class="p-container">
											<a href="" title="" class="new-img"><img
												src="./assets/images/fl2-4.jpg"></a> <a href="" title=""
												class="new-name">Lược cho mèo lông dài</a>
											<div class="p-price">652.000đ</div>
											<a href="" title="" class="chon-mua">CHỌN MUA</a>
										</div>
									</li>
									<li>
										<div class="p-container">
											<a href="" title="" class="new-img"><img
												src="./assets/images/fl2-5.jpg"></a> <a href="" title=""
												class="new-name">Thức ăn cho mèo Cat's Eye</a>
											<div class="p-price">166.000đ</div>
											<a href="" title="" class="chon-mua">CHỌN MUA</a>
										</div>
									</li>
									<li>
										<div class="p-container">
											<a href="" title="" class="new-img"><img
												src="./assets/images/fl2-6.jpg"></a> <a href="" title=""
												class="new-name">Lồng sơn cho mèo</a>
											<div class="p-price">951.000đ</div>
											<a href="" title="" class="chon-mua">CHỌN MUA</a>
										</div>
									</li>
									<li>
										<div class="p-container">
											<a href="" title="" class="new-img"><img
												src="./assets/images/fl2-7.jpg"></a> <a href="" title=""
												class="new-name">Cây mèo leo AFP Nature Cozy</a>
											<div class="p-price">2.380.000đ</div>
											<a href="" title="" class="chon-mua">CHỌN MUA</a>
										</div>
									</li>
									<li>
										<div class="p-container">
											<a href="" title="" class="new-img"><img
												src="./assets/images/fl2-8.jpg"></a> <a href="" title=""
												class="new-name">Nhà vệ sinh mèo Makar</a>
											<div class="p-price">750.000đ</div>
											<a href="" title="" class="chon-mua">CHỌN MUA</a>
										</div>
									</li>
								</ul>
								<div class="more">
									Xem tất cả <i class="fa fa-caret-right"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<footer class="footer">
			<div class="container">
				<div class="clear-hr"></div>
				<div class="box-footer first">
					<p>Danh mục mua sắm</p>
					<ul class="ul">
						<li><a href="" title="">Shop cho chó</a></li>
						<li><a href="" title="">Shop cho mèo</a></li>
						<li><a href="" title="">Dịnh vụ Pet Grooming</a></li>
						<li><a href="" title="">Trung tâm bán buôn PetNet</a></li>
					</ul>
				</div>
				<div class="box-footer">
					<p>Thông tin PetCity</p>
					<ul class="ul">
						<li><a href="" title="">Về Petcity.vn</a></li>
						<li><a href="" title="">Tin tức về Petcity</a></li>
						<li><a href="" title="">Ưu thế của Petcity</a></li>
						<li><a href="" title="">Petcity tuyển dụng</a></li>
						<li><a href="" title="">Liên hệ với Petcity</a></li>
					</ul>
				</div>
				<div class="box-footer">
					<p>Dịch vụ & hỗ trợ</p>
					<ul class="ul">
						<li><a href="" title="">Hướng dẫn đặt hàng</a></li>
						<li><a href="" title="">Giới thiệu bạn bè</a></li>
						<li><a href="" title="">Trung tâm CSKH</a></li>
						<li><a href="" title="">Điều khoản sử dụng</a></li>
					</ul>
				</div>
				<div class="box-footer">
					<p>Chính sách chung</p>
					<ul class="ul">
						<li><a href="" title="">Chính sách giao hàng</a></li>
						<li><a href="" title="">Phương thức thanh toán</a></li>
						<li><a href="" title="">Chính sách bảo hàng</a></li>
						<li><a href="" title="">Chính sách đổi, trả hàng</a></li>
						<li><a href="" title="">Tích tem đổi quà</a></li>
					</ul>
				</div>
				<div class="box-footer">
					<div id="googleMap" style="width: 400px; height: 400px;">
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.657115499416!2d105.78995721440762!3d21.04640139255286!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab306caa83a7%3A0xbfe4b316823e38f7!2zSOG7jWMgVmnhu4duIEPDtG5nIE5naOG7hyBCxrB1IENow61uaCBWaeG7hW4gVGjDtG5n!5e0!3m2!1sen!2s!4v1542275649452"
							width="600" height="450" frameborder="0" style="border: 0"></iframe>
					</div>
				</div>
			</div>
		</footer>
	</div>
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
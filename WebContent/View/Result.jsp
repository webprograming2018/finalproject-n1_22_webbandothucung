<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Page</title>
<link rel="stylesheet" type="text/css" href="./assets/css/style.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

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
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	width: 100%;
	background-color: #f1f1f1;
}

ul li a {
	display: block;
	color: #000;
	padding: 8px 16px;
	text-decoration: none;
}

/* Change the link color on hover */
ul li a:hover {
	background-color: #555;
	color: white;
}
.searchsanpham {
	display:block;
	max-height:350px;
	z-index:2;
	position: absolute;
	overflow: auto;
	cursor: default;
}
.searchsanpham img{
	width:30px;
	height:40px;
	float:left;
	margin-right: 10px;
}
.searchsanpham .searchtengia {
	float:right;
}
span{
	color: red;
}

</style>
</head>
<body>
	<div class="searchsanpham">
	<c:forEach var="sanpham" items="${listsp}">
			<ul>
				
				<li> 
					<a href="ShowThongTinSanPhamController?idsanpham=${sanpham.id}">
						<img src="${sanpham.anh}" >
							<div class="searchten">
								<b>${sanpham.tensp}</b>
							</div>
							<div class="searchgia">
								<span>${sanpham.gia}đ</span>	
							</div>
						
					</a>
				</li>	
			</ul>
	</c:forEach>
	</div>
</body>
</html>
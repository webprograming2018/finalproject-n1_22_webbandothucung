$(document).ready(function() {
    $('.slide .owl-carousel').owlCarousel({
        loop:true,
        mouseDrag: true,
        margin:10,
        nav:true,
        autoplay: true,
        items: 1
    })
    
    let renderGiohang = function(res) {
    	$('#giohang').html('');
		$('#count_shopping_cart_store').html(`${res.sanphams.length}`);
		var giohangContent = res.sanphams.map(function(sanpham) {
			return `
			<tr>
					<th><a class="new-img" data-toggle="modal" data-target="#exampleModal"><img class="zoom"
							src="${sanpham.anh}"></a> 
							<a title="" class="new-name">${sanpham.tensp}</a></th>
					<td>${sanpham.gia}</td>
					<td><input class="soLuong" data-id=${sanpham.id} type="number" value=${sanpham.soLuong}></td>
					<td>${Number(sanpham.gia) * Number(sanpham.soLuong)}</td>
					<td><button data-id=${sanpham.id} class="xoa btn btn-danger">Xóa</button></td>
				<tr>
			`
			
		}).join('');
		$('#giohang').html(giohangContent);
    }
    
    $('.chon-mua').on('click', function() {
    	$.ajax({
    		method: 'GET',
    		url: '/Petcity/GioHangController?id=' + $(this).attr('data-id')
    	})
    	.then(function(res) {
    		renderGiohang(res);    		
    	})
    })
    
    $(document).on('input', '.soLuong', function() {
    	$.ajax({
    		method: 'GET',
    		url: `/Petcity/GioHangController?id=${$(this).attr('data-id')}&soLuong=${$(this).val()}`
    	}).then(function(res) {
    		renderGiohang(res);  
    	})
    })
    
    $('.thanhtoan').on('click', function() {
    	window.location.href = '/Petcity/LoginForward'
    })
    
    $(document).on('click', '.xoa', function() {
    	$.ajax({
    		method: 'DELETE',
    		url: `/Petcity/GioHangController?id=${$(this).attr('data-id')}`
    	}).then(function(res) {
    		renderGiohang(res);  
    	})
    })
    
});


function changeColor() {
	if (document.body.style.backgroundColor =="red") {
		document.body.style.backgroundColor = "white";
	} else {
		document.body.style.backgroundColor = "red";
	}
}

function openForm() {
    document.getElementById("myForm").style.display = "block";
}

function closeForm() {
    document.getElementById("myForm").style.display = "none";
}

function Search()
{
	var xhttp;
	var tensp = document.myform.tensp.value;
	
	if (tensp != "")
	{	
			var url = "SearchController?tensp="+tensp;
			if (window.XMLHttpRequest)
			{
				xhttp = new XMLHttpRequest();
			}
			else
			{
				xhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			xhttp.onreadystatechange = function()
			{
				if (xhttp.readyState == 4)
				{
					var data = xhttp.responseText;
					document.getElementById("searchresult").innerHTML = data;
				}
				
			}
			xhttp.open("POST",url,true);
			xhttp.send();
	}
	
	else 
		{
			document.getElementById("searchresult").innerHTML = "";
		}
}

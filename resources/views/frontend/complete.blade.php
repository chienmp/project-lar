@extends('frontend.master');
@section('title','Dat hang thanh cong!');
@section('main')
<link rel="stylesheet" href="{{asset('css/complete.css')}}">
<body>    
	

	<!-- main -->
	<section id="body">
		<div class="container">
			<div class="row">
				<div id="sidebar" class="col-md-3">
					<nav id="menu">
						<ul>
							<li class="menu-item">danh mục sản phẩm</li>
							@foreach ($cate as $list)
							<li class="menu-item"><a href="{{asset('category/'.$list->cate_id.'/'.$list->cate_slug.'.html')}}" title="">{{$list->cate_name}}</a></li>
							@endforeach						
						</ul>
						<!-- <a href="#" id="pull">Danh mục</a> -->
					</nav>

					<div id="banner-l" class="text-center">
						<div class="banner-l-item">
							<a href="#"><img src="{{asset('img/home/banner-l-1.png')}}" alt="1" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src="{{asset('img/home/banner-l-2.png')}}" alt="2" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src="{{asset('img/home/banner-l-3.png')}}" alt="3" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src="{{asset('img/home/banner-l-4.png')}}" alt="4" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src="{{asset('img/home/banner-l-5.png')}}" alt="5" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src="{{asset('img/home/banner-l-6.png')}}" alt="6" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="#"><img src="{{asset('img/home/banner-l-7.png')}}" alt="7" class="img-thumbnail"></a>
						</div>
					</div>
				</div>

				<div id="main" class="col-md-9">
					<!-- main -->
					<!-- phan slide la cac hieu ung chuyen dong su dung jquey -->
					<div id="slider">
						<div id="demo" class="carousel slide" data-ride="carousel">

							<!-- Indicators -->
							<ul class="carousel-indicators">
								<li data-target="#demo" data-slide-to="0" class="active"></li>
								<li data-target="#demo" data-slide-to="1"></li>
								<li data-target="#demo" data-slide-to="2"></li>
							</ul>

							<!-- The slideshow -->
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="{{asset('img/home/slide-1.png')}}" alt="Los Angeles" >
								</div>
								<div class="carousel-item">
									<img src="{{asset('img/home/slide-2.png')}}" alt="Chicago">
								</div>
								<div class="carousel-item">
									<img src="{{asset('img/home/slide-3.png')}}" alt="New York" >
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="carousel-control-prev" href="#demo" data-slide="prev">
								<span class="carousel-control-prev-icon"></span>
							</a>
							<a class="carousel-control-next" href="#demo" data-slide="next">
								<span class="carousel-control-next-icon"></span>
							</a>
						</div>
					</div>

					<div id="banner-t" class="text-center">
						<div class="row">
							<div class="banner-t-item col-md-6 col-sm-12 col-xs-12">
								<a href="#"><img src="{{asset('img/home/banner-t-1.png')}}" alt="" class="img-thumbnail"></a>
							</div>
							<div class="banner-t-item col-md-6 col-sm-12 col-xs-12">
								<a href="#"><img src="{{asset('img/home/banner-t-1.png')}}" alt="" class="img-thumbnail"></a>
							</div>
						</div>					
					</div>

					<div id="wrap-inner">
						<div id="complete">
							<p class="info">Quý khách đã đặt hàng thành công!</p>
							<p>• Hóa đơn mua hàng của Quý khách đã được chuyển đến Địa chỉ Email có trong phần Thông tin Khách hàng của chúng Tôi</p>
							<p>• Sản phẩm của Quý khách sẽ được chuyển đến Địa có trong phần Thông tin Khách hàng của chúng Tôi sau thời gian 2 đến 3 ngày, tính từ thời điểm này.</p>
							<p>• Nhân viên giao hàng sẽ liên hệ với Quý khách qua Số Điện thoại trước khi giao hàng 24 tiếng</p>
							<p>• Trụ sở chính: B8A Võ Văn Dũng - Hoàng Cầu Đống Đa - Hà Nội</p>
							<p>Cám ơn Quý khách đã sử dụng Sản phẩm của Công ty chúng Tôi!</p>
						</div>
						<p class="text-right return"><a href="{{asset('/')}}">Quay lại trang chủ</a></p>
					</div>					
					<!-- end main -->
				</div>
			</div>
		</div>
	</section>
	<!-- endmain -->

	
</body>
</html>
@stop
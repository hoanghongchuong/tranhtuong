@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$sliders = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
?>
 <section class="vk-content">

    <div class="vk-home  vk-home--banner">
        <div class="container">
            <div class="vk-banner vk-banner-style-4 vk-slider vk-slider--style-1" data-slider="home">
                @foreach($sliders as $slider)
                <div class="_item vk-img">
                    <img src="{{asset('upload/hinhanh/'.$slider->photo)}}" alt="">
                </div>
                @endforeach
            </div>
        </div>
    </div> <!--./banner-->
    <div class="vk-home vk-home--shop">
        <div class="container">
            <h1 class="vk-home__title">Sản phẩm tiêu biểu</h1>
            <div class="vk-shop__list row">
				@foreach($productHot as $hot)
                <div class="col-sm-6 col-lg-3 _item">
                    <div class="vk-shop-item vk-shop-item--style-3">
                        <a href="{{ url('san-pham/'.$hot->alias.'.html') }}" title="{{$hot->name}}" class="vk-img vk-img--mw100 ">
                            <img src="{{asset('upload/product/'.$hot->photo)}}" alt="{{$hot->name}}" class="vk-img__img">
                            <span class="_sale">- {{ round(100-($hot->price / $hot->price_old)*100) }} %</span>
                        </a>
                        <div class="vk-shop-item__brief">
                            <h3 class="vk-shop-item__title"><a href="{{ url('san-pham/'.$hot->alias.'.html') }}" title="{{$hot->name}}">{{$hot->name}}</a></h3>
                            <div class="vk-shop-item__price">
                            	{{number_format($hot->price)}} đ 
                            	@if($hot->price < $hot->price_old)
                            	<span class="_old">{{number_format($hot->price_old)}} đ</span>
								@endif
                            </div>
                            <div class="vk-shop-item__button">
                                <a href="#" class="vk-btn vk-btn--grey-1" title="Thêm vào giỏ"><img src="{{ asset('public/images/icon-3.png')}}" alt=""></a>
                                <a href="{{ url('san-pham/'.$hot->alias.'.html') }}" class="vk-btn vk-btn--grey-1" title="Xem thêm"><i class="ti-search"></i></a>
                            </div>
                        </div>
                    </div> <!--./vk-shop-item-->
                </div>
				@endforeach
            </div>
        </div>
    </div> <!--./shop-->

    <div class="vk-home vk-home--cat">
        <div class="container">
            <h2 class="vk-home__title">Trang trí nội thất</h2>
            <div class="row">

                <div class="_item col-lg-6">
                    <a href="{{url('san-pham/'.@$category[0]->alias)}}" class="vk-cate-item vk-cate-item--style-1" title="Sofa <br> Ghế phòng khách">
                        <div class="vk-img vk-img--cover">
                            <img src="{{ asset('upload/product/'.@$category[0]->photo)}}" alt="">
                        </div>
                        <div class="vk-cate-item__brief">
                            <div class="vk-box  vk-box--style-2">
                                <h3 class="vk-box__title">
                                    {{@$category[0]->name}}
                                    <span class="vk-btn vk-btn--grey-7">Xem ngay </span>
                                </h3>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-lg-6">
                    <div class="row _h100">
                        <div class="_item col-lg-12 _h50">
                            <a href="{{url('san-pham/'.@$category[1]->alias)}}" class="vk-cate-item vk-cate-item--style-2" title="Kệ trang trí">
                                <div class="vk-img vk-img--cover">
                                    <img src="{{ asset('upload/product/'.@$category[1]->photo)}}" alt="">
                                </div>
                                <div class="vk-cate-item__brief">

                                    <div class="vk-box  vk-box--style-2">
                                        <h3 class="vk-box__title">
                                            {{@$category[1]->name}}
                                            <span class="vk-btn vk-btn--grey-7">Xem ngay </span>
                                        </h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="_item col-lg-12 _h50">
                            <a href="{{url('san-pham/'.@$category[2]->alias)}}" class="vk-cate-item vk-cate-item--style-2" title="Lưu trữ nhà bếp">
                                <div class="vk-img vk-img--cover">
                                    <img src="{{ asset('upload/product/'.@$category[2]->photo)}}" alt="">
                                </div>
                                <div class="vk-cate-item__brief">
                                    <div class="vk-box  vk-box--style-2">
                                        <h3 class="vk-box__title">
                                            {{@$category[2]->name}}
                                            <span class="vk-btn vk-btn--grey-7">Xem ngay </span>
                                        </h3>
                                    </div>
                                </div>
                            </a>
                        </div>

                    </div> <!--./row-->
                </div>

            </div>
        </div>
    </div> <!--./cat-->

    <div class="vk-home vk-home--shop-new">
        <div class="container">
            <h2 class="vk-home__title">Sản phẩm mới</h2>
            <div class="vk-shop__list row vk-slider" data-slider="home-shop">
			@foreach($products as $item)
                <div class="col-sm-6 col-lg-3 _item">
                    <div class="vk-shop-item vk-shop-item--style-3">
                        <a href="{{ url('san-pham/'.$item->alias.'.html') }}" title="{{ $item->name }}" class="vk-img vk-img--mw100 ">
                            <img src="{{asset('upload/product/'.$item->photo)}}" alt="{{ $item->name }}" class="vk-img__img">
                            <span class="_sale">- {{ round(100-($item->price / $item->price_old)*100) }} %</span>
                        </a>
                        <div class="vk-shop-item__brief">
                            <h3 class="vk-shop-item__title"><a href="{{ url('san-pham/'.$item->alias.'.html') }}" title="{{ $item->name }}">{{$item->name}}</a></h3>
                            <div class="vk-shop-item__price">{{number_format($item->price)}} đ <span class="_old">{{number_format($item->price_old)}} đ</span></div>
                            <div class="vk-shop-item__button">
                                <a href="#" class="vk-btn vk-btn--grey-1" title="Thêm vào giỏ"><img src="{{ asset('public/images/icon-3.png')}}" alt="{{ $item->name }}"></a>
                                <a href="{{ url('san-pham/'.$item->alias.'.html') }}" class="vk-btn vk-btn--grey-1" title="Xem thêm"><i class="ti-search"></i></a>
                            </div>
                        </div>
                    </div> <!--./vk-shop-item-->
                </div>
			@endforeach
                
            </div>
        </div>
    </div>

    <div class="vk-home vk-home--cat-1">
        <div class="container">
            <h2 class="vk-home__title">Danh mục tiêu biểu</h2>
            <div class="vk-cate__list row">
				@foreach($categories as $cate)	
                <div class="col-lg-6">
                    <a href="{{url('san-pham/'.$cate->alias)}}" class="vk-cate-item vk-cate-item--style-3" title="{{$cate->name}}">
                        <div class="vk-img vk-img--cover">
                            <img src="{{asset('upload/product/'.$cate->photo)}}" alt="{{$cate->name}}">
                        </div>
                        <div class="vk-cate-item__brief">

                            <h2 class="vk-cate-item__title">{{$cate->name}}</h2>
                        </div>
                    </a>
                </div>
				@endforeach
                
            </div>
        </div>
    </div>


    <div class="vk-map vk-map--home">
        <div class="vk-map__img">
            <img src="{{ asset('public/images/map-2.jpg')}}" alt="">
        </div>

        <div class="vk-map__main">
            <div class="container">
                <div class="vk-map__wrapper">
                    <div class="vk-map__content">
                        <h2 class="vk-map__title">HỆ THỐNG CỦA HÀNG VIDCOM</h2>
                        <div class="vk-map__text">
                            Vidcom hiện đang sở hữu hệ thống 16 Siêu thị Nội Thất và Trang Trí tại hai thành phố chính
                            của
                            Việt Nam là Hà Nội và TP.Hồ Chí Minh.
                        </div>
                        <a href="{{url('cua-hang')}}" class="vk-btn vk-btn--white vk-map__btn">Xem hệ thống cửa hàng</a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!--./map-->

</section>
@endsection

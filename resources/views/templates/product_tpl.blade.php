@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                <li class="vk-list__item"><a href="{{url('')}}"><i class="vk-icon fa fa-home"></i> Trang chủ</a></li>

                <li class="vk-list__item active">Phòng</li>
            </ul>
        </nav>
    </div>
    <!--./vk-breadcrumb-->
    <div class="container">
        <div class="vk-shop__list row">
        @foreach($cate_pro as $cate)
            <div class="col-sm-6 col-lg-4 _item">
                <div class="vk-shop-item vk-shop-item--style-2">
                    <a href="{{ url('san-pham/'.$cate->alias) }}" title="{{$cate->name}}" class="vk-img vk-img--cover ">
                        <img src="{{asset('upload/product/'.$cate->photo)}}" alt="{{$cate->name}}" class="vk-img__img">
                    </a>
                    <div class="vk-shop-item__brief">
                        <h3 class="vk-shop-item__title"><a href="{{ url('san-pham/'.$cate->alias) }}" title="{{$cate->name}}">{{$cate->name}}</a></h3>
                    </div>
                </div>
            </div>
        @endforeach
            
        </div> <!--./list-->
    </div> <!--./container-->
    <div class="vk-map">
        <div class="vk-map__img">
            <img src="{{ asset('public/images/map.jpg')}}" alt="">
        </div>
        <div class="vk-map__main">
            <div class="container">
                <div class="vk-map__wrapper">
                    <div class="vk-map__content">
                        <h2 class="vk-map__title">HỆ THỐNG CỦA HÀNG VIDCOM</h2>
                        <div class="vk-map__text">
                            Vidcom hiện đang sở hữu hệ thống 16 Siêu thị Nội Thất và Trang Trí tại hai thành phố chính của
                            Việt Nam là Hà Nội và TP.Hồ Chí Minh.
                        </div>
                        <a href="{{url('')}}" class="vk-btn vk-btn--white vk-map__btn">Xem hệ thống cửa hàng</a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!--./map-->

</section>
@endsection

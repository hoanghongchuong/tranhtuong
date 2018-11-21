@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $banner = DB::table('banner_content')->where('position', 3)->first();
?>
<section class="vk-content">
        <div class="vk-breadcrumb">
            <nav class="container">
                <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                    <li class="vk-list__item"><a href="{{url('')}}"><i class="vk-icon fa fa-home"></i> Trang chủ</a></li>

                    <li class="vk-list__item active">Về Vidcom</li>
                </ul>
            </nav>
        </div>
        <!--./vk-breadcrumb-->    
        <div class="container">

            <div class="vk-banner vk-banner--style-3 mb-4">
                <img src="{{asset('upload/hinhanh/'.$about->photo)}}" alt="">
            </div>

            <p>{!! $about->content !!}</p>

            <div class="vk-about__content mt-5">
                <div class="row justify-content-center">
                    <div class="col-lg-10">
                        <div class="vk-about__box row no-gutters">
                            <div class="col-lg-6">
                                <div class="vk-img vk-img--mw100">
                                    <img src="{{asset('upload/hinhanh/'.$tamnhin->photo)}}" alt="">
                                </div>

                            </div>
                            <div class="col-lg-6">
                                <div class="vk-about__right">
                                    <h1 class="vk-about__title">{{$tamnhin->name}}</h1>
                                    <p>
                                        {!! $tamnhin->content !!}
                                    </p>
                                </div>

                            </div>
                        </div>

                        <div class="vk-about__box row no-gutters vk-about__box--inverse">

                            <div class="col-lg-6">
                                <div class="vk-img vk-img--mw100">
                                    <img src="{{asset('upload/hinhanh/'.$sumenh->photo)}}" alt="">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="vk-about__right">
                                    <h2 class="vk-about__title">{{$sumenh->name}}</h2>
                                    <p>
                                        {!! $sumenh->content !!}
                                    </p>
                                </div>
                            </div>
                        </div>
                        <h2 class="vk-about__title">{{$cotloi->name}}</h2>
                        {!! $cotloi->content !!}
                    </div> <!--./col-->
                </div> <!--./row-->
            </div>
        </div>


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

<?php
    $setting = Cache::get('setting');
    $sliders = DB::table('slider')->where('com','gioi-thieu')->where('status',1)->get();
?>
<header id="header" class="hidden-xs hidden-sm">
    <div class="top-header">
        <div class="container">
            <div class="row">
                <div class="col-md-4 logo">
                    <a href="{{url('')}}" title=""><img src="{{asset('upload/hinhanh/'.$setting->photo)}}" class=""></a>
                </div>
                <div class="col-md-4 box-search">
                    <div class="search-text" id="search_text">
                        <form action="" method="get" accept-charset="utf-8">
                            <div class="form-group">
                                <input type="text" placeholder="Từ khóa tìm kiếm" class="input-search text" name="">
                                <input type="submit" class="btn-search" id="search_btn" name="">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-4">
                    <p class=" box-phone"><i class="fa fa-phone">&nbsp;{{$setting->phone}}</i></p>
                </div>
            </div>
        </div>
        
    </div>
    <div class="menu-slider">
        <div class="menu menu-page" id="menu_fix">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <img src="{{asset('upload/hinhanh/'.$setting->photo_page)}}" class="logo-fix-scroll">
                    </div>
                    <div class="col-md-9">
                        <ul>
                            <li>
                                <a href="{{url('gioi-thieu')}}"><span><img src="{{asset('public/images/i_menu1.png')}}"></span>Giới thiệu</a>
                            </li>
                            <li>
                                <a href="{{url('san-pham-mau')}}"><span><img src="{{asset('public/images/i_menu2.png')}}"></span>Sản phẩm mẫu</a>
                            </li>
                           
                            <li>
                                <a href="{{url('da-thi-cong')}}"><span><img src="{{asset('public/images/i_menu3.png')}}"></span>Đã thi công</a>
                                
                            </li>
                            <li>
                                <a href="{{url('bao-gia')}}"><span><img src="{{asset('public/images/i_menu4.png')}}"></span>Báo giá</a>
                                
                            </li>
                            <li>
                                <a href="{{ url('tin-tuc') }}"><span><img src="{{asset('public/images/i_menu5.png')}}"></span>Tin tức</a>
                                
                            </li>
                            <li>
                                <a href="{{ url('lien-he') }}"><span><img src="{{asset('public/images/i_menu6.png')}}"></span>Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        @if(@$com=='index')
        <div class="slider ">
            <div id="carousel-id" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    @foreach($sliders as $k=>$slider)
                    <li data-target="#carousel-id" data-slide-to="{{$k}}" class=""></li>
                    @endforeach
                </ol>
                <div class="carousel-inner">
                    @foreach($sliders as $k=>$slider)
                    <div class="item @if($k == 0)active @endif">                        
                       <img src="{{ asset('upload/hinhanh/'.$slider->photo)}}">
                    </div>
                    @endforeach
                </div>
                <!-- <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> -->
            </div>
        </div>
        @endif
    </div>
</header><!-- /header -->
<div class="header-mobile visible-xs visible-sm">
    <div class="img-logo-mobile col-xs-12">
        <img src="{{asset('upload/hinhanh/'.$setting->photo_page)}}" class="">
        <!-- <div class="col-xs-6 col-sm-6"><span><i class="fa fa-phone">&nbsp;0987654321</i></span></div> -->
    </div>
   
    <div class="box-search col-xs-12">
        <div class="search-text" id="search_text">
            <form action="" method="get" accept-charset="utf-8">
                <div class="form-group">
                    <input type="text" placeholder="Từ khóa tìm kiếm" class="input-search text" name="">
                    <input type="submit" class="btn-search" id="search_btn" name="">
                </div>
            </form>
        </div>
    </div>
    <div class="vk-header__search">
        <div class="container">
            
            <a href="#menuMobile" data-toggle="collapse" class="_btn d-lg-none menu_title"><i class="fa fa-bars"></i> Menu</a>
        </div>
    </div>
    <nav class="vk-header__menu-mobile">
        <ul class="vk-menu__mobile collapse" id="menuMobile">
            <li><a href="{{url('')}}">Trang chủ</a></li>
            <li><a href="{{url('gioi-thieu')}}">Giới thiệu</a></li>
            <!-- <li>
                <a href="#">Giới thiệu</a>
                <a href="#menu1" data-toggle="collapse" class="_arrow-mobile"><i class="_icon fa fa-angle-down"></i></a>
                <ul class="collapse" id="menu1">
                    <li><a href="#">Tổng quan</a></li>
                    <li><a href="#">Tầm nhìn  -  Giá trị cốt lõi</a></li>
                    <li><a href="#">Sơ đồ tổ chức</a></li>
                    <li><a href="#">Hệ thống quản trị</a></li>
                    <li><a href="#">Chứng chỉ</a></li>
                    <li><a href="#">Đối tác - khách hàng</a></li>
                </ul>
            </li> -->
            <li><a href="#">Sản phẩm mẫu</a></li>
            <li><a href="#">Đã thi công</a></li>
            <li><a href="{{url('bao-gia')}}">Báo giá</a></li>
            <li><a href="{{url('tin-tuc')}}">Tin tức</a></li>
            <li><a href="{{url('lien-he')}}">Liên hệ</a></li>
        </ul>
    </nav>
    
</div>
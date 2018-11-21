<?php
    $setting = Cache::get('setting');
    $categories = DB::table('product_categories')->where('status',1)->where('parent_id',0)->get();
?>
<footer class="vk-footer">
    <div class="container">
        <div class="vk-footer__top">
            <div class="row">
                <div class="col-lg-5">
                    <div class="vk-footer__item">
                        <a href="{{url('')}}" class="vk-footer__logo">
                            <img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="">
                        </a>
                        <ul class="vk-footer__list-icon vk-list">
                            <li class="vk-list__item"> <i class="_icon fa fa-home"></i> Địa chỉ:  {{$setting->address}}</li>
                            <li class="vk-list__item"> <i class="_icon fa fa-envelope"></i> Email: <a href="{{$setting->email}}">{{$setting->email}}</a> 
                                <!-- <a href="mailto:contact@gco.vn">contact@gco.vn</a></li> -->
                            <li class="vk-list__item"> <i class="_icon fa fa-phone"></i>  Hotline: <a href="callto:{{$setting->phone}}">{{$setting->phone}}</a></li>
                        </ul>

                    </div>
                </div><!--./col-->

                <div class="col-lg-2">
                    <div class="vk-footer__item">
                        <h2 class="vk-footer__title">Về chúng tôi</h2>
                        <ul class="vk-footer__list vk-list">
                            <li class="vk-list__item"><a href="#">Tin tức Vidcom</a></li>
                            <li class="vk-list__item"><a href="{{url('gioi-thieu')}}">Về Vidcom</a></li>
                            <li class="vk-list__item"><a href="{{url('catalog')}}">Catalog 2018</a></li>
                            <li class="vk-list__item"><a href="{{url('cua-hang')}}">Hệ thống cửa hàng</a></li>
                        </ul>
                    </div>
                </div><!--./col-->
                <div class="col-lg-3">
                    <div class="vk-footer__item">
                        <h2 class="vk-footer__title">Thiết kế nội thất</h2>
                        <ul class="vk-footer__list vk-list">
                            @foreach($categories as $c)
                            <li class="vk-list__item"><a href="{{url('san-pham/'.$c->alias)}}">{{$c->name}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div><!--./col-->
                <div class="col-lg-2">
                    <div class="vk-footer__item">
                        <h2 class="vk-footer__title">Liên hệ với Vidcom</h2>
                        <ul class="vk-list vk-list--inline vk-footer__social mb-4">
                            <li class="vk-list__item"><a href="{{ $setting->facebook }}"><i class="fa fa-facebook"></i></a></li>
                            <li class="vk-list__item"><a href="{{ $setting->twitter }}"><i class="fa fa-twitter"></i></a></li>
                            <li class="vk-list__item"><a href="{{ $setting->youtube }}"><i class="fa fa-youtube"></i></a></li>
                            <li class="vk-list__item"><a href="{{ $setting->google }}"><i class="fa fa-google-plus"></i></a></li>
                        </ul>

                        <a href="#" class="vk-footer__bct">
                            <img src="{{ asset('public/images/bct.png')}}" alt="" class="mw-100">
                        </a>
                    </div>
                </div><!--./col-->
            </div> <!--./ROW-->
        </div> <!--./top-->

        <div class="vk-footer__bot">
            Copyright © 2018 by Vidcom - All rights reserved.
        </div> <!--./vk-footer__bot-->
    </div> <!--./container-->
</footer><!--./vk-footer-->

<nav class="" id="menu">

    <ul class="">
        <li class=""><a href="{{url('')}}">Trang chủ</a></li>
        <li class="">
            <a href="{{url('san-pham')}}">Phòng</a>
            <ul class="">
                @foreach($categories as $category)
                <li class="">
                    <a href="{{ url('san-pham/'.$category->alias) }}">{{$category->name}}</a>
                    <?php $cateChilds = DB::table('product_categories')->where('status',1)->where('parent_id', $category->id)->get(); ?>
                        @if($cateChilds)
                        <ul class="vk-menu vk-menu--child vk-list vk-list--inline">
                            @foreach($cateChilds as $cate)
                            <li class=""><a href="{{ url('san-pham/'.$cate->alias) }}">{{$cate->name}}</a></li>
                            @endforeach
                        </ul>
                        @endif
                </li>
                @endforeach
                
            </ul>
        </li>
        <li class=""><a href="{{url('hang-moi-ve')}}">Hàng mới về</a></li>
        <li class=""><a href="{{url('gioi-thieu')}}">Về VIDCOM</a></li>
        <li class=""><a href="{{url('catalog')}}">CATALOG 2018</a></li>
        <li class=""><a href="{{url('ban-chay')}}">Bán chạy nhất</a></li>
    </ul>
</nav>

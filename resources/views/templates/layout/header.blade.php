<?php
    $setting = Cache::get('setting');
    $categories = DB::table('product_categories')->where('status',1)->where('parent_id',0)->get();
?>
<header class="vk-header" data-layout="sticky">
    <div class="vk-header__top">
        <div class="container">
            <div class="vk-header__top-content">
                <ul class="vk-list vk-list--inline vk-header__list">
                    <li class="vk-list__item"><a href="{{url('cua-hang')}}">Cửa hàng</a></li>
                    <li class="vk-list__item"><a href="callto:{{$setting->phone}}">Liên hệ: <span class="_hotline">{{$setting->phone}}</span></a></li>
                </ul>
            </div> <!--./content-->
        </div> <!--./container-->

    </div><!--./top-->

    <div class="vk-header__mid">
        <div class="container">
            <div class="vk-header__mid-content">
                <a href="{{url('')}}" class="vk-header__logo">
                    <img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="">
                </a> <!--./logo-->
                <div class="vk-header__mid-right">
                </div> <!--./right-->
            </div> <!--./content-->
        </div> <!--./container-->
    </div> <!--./mid-->
    <div class="vk-header__bot">
        <div class="container">
            <div class="vk-header__bot-content">
                <nav class="vk-header__menu">
                    <a href="{{url('')}}" class="vk-header__logo vk-header__logo--bot">
                        <img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="">
                    </a> <!--./logo-->
                    <ul class="vk-list vk-list--inline vk-menu vk-menu--main">
                        <li class="vk-list__item"><a href="{{url('')}}">Trang chủ</a></li>
                        <li class="vk-list__item">
                            <a href="{{url('san-pham')}}">Phòng</a>
                            <ul class="vk-menu vk-menu--child vk-list vk-list--inline">
                                @foreach($categories as $category)
                                <li class="vk-list__item">
                                    <a href="{{ url('san-pham/'.$category->alias) }}">{{$category->name}}</a>
                                    <?php $cateChilds = DB::table('product_categories')->where('status',1)->where('parent_id', $category->id)->get(); ?>
                                    @if($cateChilds)
                                    <ul class="vk-menu vk-menu--child vk-list vk-list--inline">
                                        @foreach($cateChilds as $cate)
                                        <li class="vk-list__item"><a href="{{ url('san-pham/'.$cate->alias) }}">{{$cate->name}}</a></li>
                                        @endforeach
                                    </ul>
                                    @endif
                                </li>
                                @endforeach
                            </ul>
                        </li>
                        <li class="vk-list__item"><a href="{{ url('hang-moi-ve') }}">Hàng mới về</a></li>
                        <li class="vk-list__item"><a href="{{url('gioi-thieu')}}">Về VIDCOM</a></li>
                        <li class="vk-list__item"><a href="{{url('catalog')}}">CATALOG</a></li>
                        <li class="vk-list__item"><a href="{{url('ban-chay')}}">Bán chạy nhất</a></li>
                    </ul>
                </nav> <!--./menu-->
                <div class="vk-header__bot-right">
                    <a href="#searchForm" class="vk-btn vk-header__btn-search vk-btn--grey-2" id="btnSearchFornShow"><i class="ti-search"></i></a>
                    <div class="vk-header__search" id="searchForm">
                        <form action="{{ route('search') }}" method="get">
                            <div class="vk-form vk-form--search">
                                <input type="text" class="form-control" name="txtSearch" placeholder="Tìm kiếm">
                                <button class="vk-btn vk-btn--grey-2"><i class="ti-search"></i></button>
                            </div>
                        </form>
                    </div> <!--./search-->
                    <div class="vk-header__minicart vk-header__minicart--mid">
                        <a href="{{url('gio-hang')}}" class="vk-btn vk-header__btn-cart vk-btn--grey-2"><img src="{{ asset('public/images/icon-1.png')}}" alt=""></a>
                    </div> <!--./minicart-->
                    <a href="#menu" class="vk-btn vk-header__btn-menu vk-btn--grey-2 d-lg-none"><i class="ti-menu"></i></a>
                </div> <!--./right-->
            </div> <!--./content-->
        </div> <!--./container-->
    </div> <!--./bot-->
</header>
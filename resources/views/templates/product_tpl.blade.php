@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<div class="content-box content-box-page">
    <nav aria-label="breadcrumb" class="nav-breadcrumb">
        <div class="container">
            <div class="row">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('')}}">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Sản phẩm mẫu</li>
                </ol>
            </div>
        </div>
    </nav>
    <div class="list-category">
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    
                    <div class="list-item">
                        @foreach($products as $item)
                        <div class="col-md-4 _item">
                            <div class="box-item_cate">
                                <a href="{{url('san-pham-mau/'.$item->alias.'.html')}}" title="{{$item->name}}" class="zoom"><img src="{{asset('upload/product/'.$item->photo)}}"></a>
                                <div class="name_cate"><a href="{{url('san-pham-mau/'.$item->alias.'.html')}}" title="{{$item->name}}">{{$item->name}}</a></div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="list_category_product">
                        <p class="title_cate">
                            Dự án đã thực hiện
                        </p>
                        <ul class="">
                            <li><a href="">Vẽ tranh tường 3D</a></li>
                            <li><a href="">Vẽ tranh tường 3D Nghệ thuật</a></li>
                            <li><a href="">Vẽ tranh tường mầm non</a></li>
                            <li><a href="">Vẽ tranh tường quán trà sữa</a></li>
                            <li><a href="">Vẽ tranh tường phòng khách</a></li>
                            <li><a href="">Vẽ tranh tường phòng ngủ</a></li>
                            <li><a href="">Vẽ tranh tường quán cafe</a></li>
                            <li><a href="">Vẽ tranh tường quán karaoke</a></li>
                            <li><a href="">Vẽ tranh tường phòng em bé</a></li>
                        </ul>
                    </div>
                    <div class="list_category_product">
                        <p class="title_cate">
                            Sản phẩm mẫu
                        </p>
                        <ul class="">
                            <li><a href="">Vẽ tranh tường 3D</a></li>
                            <li><a href="">Vẽ tranh tường 3D Nghệ thuật</a></li>
                            <li><a href="">Vẽ tranh tường mầm non</a></li>
                            <li><a href="">Vẽ tranh tường quán trà sữa</a></li>
                            <li><a href="">Vẽ tranh tường phòng khách</a></li>
                            <li><a href="">Vẽ tranh tường phòng ngủ</a></li>
                            <li><a href="">Vẽ tranh tường quán cafe</a></li>
                            <li><a href="">Vẽ tranh tường quán karaoke</a></li>
                            <li><a href="">Vẽ tranh tường phòng em bé</a></li>
                        </ul>
                    </div>
                    <div class="list_category_product">
                        <p class="title_cate">
                            Tin nổi bật
                        </p>
                        <ul class="">
                            <li><a href="">Vẽ tranh tường 3D</a></li>
                            <li><a href="">Vẽ tranh tường 3D Nghệ thuật</a></li>
                            <li><a href="">Vẽ tranh tường mầm non</a></li>
                            <li><a href="">Vẽ tranh tường quán trà sữa</a></li>
                            <li><a href="">Vẽ tranh tường phòng khách</a></li>
                            <li><a href="">Vẽ tranh tường phòng ngủ</a></li>
                            <li><a href="">Vẽ tranh tường quán cafe</a></li>
                            <li><a href="">Vẽ tranh tường quán karaoke</a></li>
                            <li><a href="">Vẽ tranh tường phòng em bé</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

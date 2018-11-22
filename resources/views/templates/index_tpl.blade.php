@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$sliders = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
?>
<div class="content-box">
    <div class="container">
        <div class="row">
            <div class="about_home">
                <div class="col-md-7">
                    <div class="box-intro_home">
                        <div class="title">
                            <span class="name_company">{{$about->name}}</span>
                            <p class="underline underx"></p>
                        </div>
                        
                        <div class="short-desc">
                            {!!$about->mota!!}
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="box-img-intro hidden-xs">
                        <img src="{{asset('upload/hinhanh/'.$about->photo)}}" class="img1">
                        <img src="{{asset('upload/hinhanh/'.$about->background)}}" class="img2">
                    </div>
                    <div class="visible-xs img2x"> <img src="{{asset('upload/hinhanh/'.$about->background)}}" class=""></div>
                </div>
            </div>
        </div>            
    </div>   
</div>
@foreach($categories_home as $cate_home)
<?php $product_cate = DB::table('products')->where('cate_id', $cate_home->id)->where('status',1)->take(3)->orderBy('id','desc')->get(); ?>
<div class="box-category">
    <div class="container">
        <div class="row">
            <div class="cate_name_home">{{$cate_home->name}}</div>
            <p class="underlinex"></p>
            <div class="list-item">
                @foreach($product_cate as $p)
                <div class="col-md-4 col-xs-6">
                    <div class="box-image">
                        <a href="{{url('san-pham-mau/'.$p->alias.'.html')}}" title="" class="zoom"><img src="{{asset('upload/product/'.$p->photo)}}"></a>
                    </div>
                    <div class="name_product"><a href="{{url('san-pham-mau/'.$p->alias.'.html')}}" title="">{{$p->name}}</a></div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
@endforeach

<div class="news-partner">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-xs-12">
                <div class="cate_name_home">Đối tác</div>
                <p class="underlinex"></p>
                <div class="owl-carousel-partner">
                    @foreach($partners as $k=>$partner)                    
                    <div class="item">
                        <a data-slide-index="{{$k}}" href="javascript">
                            <img src="{{asset('upload/banner/'.$partner->photo)}}" />
                        </a>
                    </div>
                    @endforeach                    
                </div>
                <div class="feedback">
                    <div class="cate_name_home">Ý kiến khách hàng</div>
                    <p class="underlinex"></p>
                    <div class="owl-carousel-feedback">
                        @foreach($feedbacks as $k=>$feedback)
                        <div class="item">
                            <a data-slide-index="{{$k}}" href="javascript">
                                <img src="{{asset('upload/hinhanh/'.$feedback->photo)}}" />
                                <p class="name_feedback">{{$feedback->name}}</p>
                                <span class="content_feedback">
                                    {!! $feedback->content !!}
                                </span>
                            </a>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xs-12">
                <div class="cate_name_home">Tin tức</div>
                <p class="underlinex"></p>
                <div class="list_item_news">
                    @foreach($news as $item)
                    <div class="col-md-6 col-xs-6">
                        <div class="">
                            <img src="{{asset('upload/news/'.@$item->photo)}}">
                        </div>
                        <p class="name_news">{{@$item->name}}</p>
                        <p class="date_post">Ngày đăng: {{date('d/m/Y', strtotime(@$item->created_at))}}</p>
                        <div class="short-desc-news">
                            {!! @$item->mota !!}
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="video_home">
                    <div class="cate_name_home">Video</div>
                    <p class="underlinex"></p>
                    <div class="col-md-3">
                        <a data-fancybox="video" href="https://www.youtube.com/embed/eQg4C5dODQ4">
                            <img src="https://i.ytimg.com/vi/eQg4C5dODQ4/hqdefault.jpg" alt="">
                        </a>
                   
                    </div>
                    <div class="col-md-9">
                        <p class="name_video">
                            <a data-fancybox="video" href="https://www.youtube.com/embed/eQg4C5dODQ4">Video 1</a>
                        </p>
                        <div class="mota_video">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                            tempor incididunt ut 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

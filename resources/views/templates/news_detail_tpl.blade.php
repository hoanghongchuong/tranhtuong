@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $banner = DB::table('banner_content')->where('position', 8)->first();
?>

<main class="index">
    <section class="about">
        <div class="bread-wrap">
            <div class="container">
                <div class="pl-95">
                    <ul class="s12 list-unstyled text-uppercase bread">
                        <li><a href="{{ url('') }}" title="">Trang chủ</a></li>
                        <li>Phong thủy</li>
                        <li>{{ $news_detail->name }}</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="mt-150px">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-10">
                        <div class="bg-white da-detail-content">
                            <div class="kt-detail-header">
                                <h1 class="s24 light text-uppercase pb-3 tit">{{ $news_detail->name }}</h1>
                                <p class="s14 t1 text-uppercase da-detail-time">{{date('d/m/Y', strtotime($news_detail->created_at))}}</p>
                            </div>
                            <div class="kt-detail-body">
                                <div class="text-center da-gal-item">
                                    <a data-fancybox href="{{asset('upload/news/'.$news_detail->photo)}}" title=""><img src="{{asset('upload/news/'.$news_detail->photo)}}" alt="" title=""></a>
                                </div>

                                <div class="">{!! $news_detail->content !!}</div>
                            </div>

                            <h2 class="da-detail-re"><span>Xem thêm</span></h2>

                            <ul class="list-unstyled da-detail-re-list">
                                @foreach($baiviet_khac as $b)
                                <li><a href="{{url('phong-thuy/'.$b->alias.'.html')}}" title="">{{$b->name}}</a></li>
                                @endforeach
                            </ul>

                            <div class="da-detail-cm">
                                <div class="da-detail-like">
                                    <div class="fb-like" data-href="{{URL::Current()}}" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                                </div>                                
                                <div class="fb-comments" data-href="{{URL::Current()}}" data-numposts="2" data-width="100%"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </section>
</main>


@endsection


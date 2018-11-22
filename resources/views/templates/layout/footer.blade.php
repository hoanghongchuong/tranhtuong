<?php
    $setting = Cache::get('setting');
    $categories = DB::table('product_categories')->where('status',1)->where('parent_id',0)->get();
?>

<footer style="background: url('{{asset('public/images/bg_footer.png')}}'); background-size: cover;">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-xs-12 left">
                <div class="img-footer">
                    <img src="{{asset('upload/hinhanh/'.$setting->photo_footer)}}">
                </div>
                <p class="address">Address: {{$setting->address}}</p>
                <p>Hotline: {{$setting->phone}}</p>
                <p>Email: {{$setting->email}}</p>
                <p class="social">
                    <a href="{{$setting->facebook}}" title=""><span class="fa fa-facebook"></span></a>
                    <a href="{{$setting->youtube}}" title=""><span class="fa fa-youtube"></span></a>
                    <a href="{{$setting->twitter}}" title=""><span class="fa fa-twitter"></span></a>
                </p>
            </div>
            <div class="col-md-5 col-xs-12">
                <div class="title-contact">Liên hệ</div>
                <!-- <p class="underline_footer" style="background: url('./images/i_deco.png'); width: 180px;height: 25px;display: block;"></p> -->
                <div class="form-contact form-group">
                    <form action="{{route('postContact')}}" method="post" accept-charset="utf-8">
                        {{csrf_field()}}
                        <input type="text" name="name" value="Name" class="form-control" placeholder="">
                        <input type="text" name="email" value="Email" class="form-control" placeholder="">
                        <input type="text" name="phone" value="Phone" class="form-control" placeholder="">
                        <textarea name="content" class="form-control" placeholder="Message"></textarea>
                        <button type="submit" class="btn-contact">Gửi</button>
                    </form>
                </div>
            </div>
            <div class="col-md-3 col-xs-12">
                <div class="title-contact">Fanpage</div>
                <div class="fb-page" data-href="https://www.facebook.com/facebook" data-tabs="timeline" data-height="225px" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/facebook" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/facebook">Facebook</a></blockquote></div>
            </div>
        </div>
    </div>
</footer>
<div class="bottom-footer">
    <p>@Thiết kế bởi Hungthinhads.com</p>
</div>